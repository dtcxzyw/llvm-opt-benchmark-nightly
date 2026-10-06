Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/shap?download=true
inline.NumInlined: 4414
inline.NumDeleted: 1676
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN4dmlc15LogMessageFatalD2Ev:bb.a
  %i.g = load i64, ptr %i.a, align 8, !tbaa !29
  %i.h = add i64 %i.g, 1
  br label %_ZN4dmlc18LogStackTraceLevelEv.exit

_ZN4dmlc18LogStackTraceLevelEv.exit:              ; preds = %bb.a, %bb.b, %bb.c
  %i.i = phi i64 [ %i.h, %bb.c ], [ 10, %bb.b ], [ 10, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @_ZN4dmlc10StackTraceB5cxx11Emm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, i64 noundef 1, i64 noundef %i.i)
  %i.j = load ptr, ptr %1, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !27
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.j, i64 noundef %i.l)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.f

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZN4dmlc18LogStackTraceLevelEv.exit
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.25, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.o = load ptr, ptr %1, align 8, !tbaa !26     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.r = load i64, ptr %i.p, align 8, !tbaa !28
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %i.t = call ptr @__cxa_allocate_exception(i64 16) #13 ; 3 uses
  %i.u = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %0)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZN4dmlc15LogMessageFatal5Entry8FinalizeEv(ptr dead_on_unwind writable sret(%"struct.dmlc::Error") align 8 %i.t, ptr noundef nonnull align 8 dereferenceable(376) %i.u)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @__cxa_throw(ptr %i.t, ptr nonnull @_ZTIN4dmlc5ErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
  unreachable

bb.f:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZN4dmlc18LogStackTraceLevelEv.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %1, align 8, !tbaa !26     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  %i.z = load i64, ptr %i.x, align 8, !tbaa !28
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br label %bb.h

bb.g:                                             ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %i.t) #13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.g ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #13 ; 0 uses
  tail call void @_ZSt9terminatev() #31
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21     ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.c, align 8, !tbaa !28
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #30
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS_7ContextEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(192) %3, i32 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, i64 noundef %6) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %8 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %9 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %10 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %11 = alloca %class.anon.323, align 8           ; 16 uses
  %12 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %13 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %14 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %15 = alloca %"class.dmlc::OMPException", align 8 ; 14 uses
  %16 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %17 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %18 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %19 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %20 = alloca %class.anon.319, align 8           ; 16 uses
  %21 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %22 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %23 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %24 = alloca %"class.dmlc::OMPException", align 8 ; 14 uses
  %25 = alloca %"class.xgboost::BatchSet", align 16 ; 7 uses
  %26 = alloca %"class.xgboost::BatchIterator", align 16 ; 9 uses
  %27 = alloca %"class.xgboost::BatchIterator", align 8 ; 8 uses
  %28 = alloca %"class.xgboost::predictor::SparsePageView.315", align 8 ; 9 uses
  %29 = alloca %"class.xgboost::BatchSet.273", align 16 ; 7 uses
  %30 = alloca %"struct.xgboost::BatchParam", align 8 ; 8 uses
  %31 = alloca %"class.xgboost::BatchIterator.274", align 16 ; 9 uses
  %32 = alloca %"class.xgboost::BatchIterator.274", align 8 ; 8 uses
  %33 = alloca %"class.xgboost::predictor::GHistIndexMatrixView.317", align 8 ; 12 uses
  %34 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %35 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %36 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %37 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %38 = alloca %class.anon.309, align 8           ; 16 uses
  %39 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %40 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %41 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %42 = alloca %"class.dmlc::OMPException", align 8 ; 14 uses
  %43 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %44 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %45 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %46 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %47 = alloca %class.anon.297, align 8           ; 16 uses
  %48 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %49 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %50 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %51 = alloca %"class.dmlc::OMPException", align 8 ; 14 uses
  %52 = alloca %"class.xgboost::BatchSet", align 16 ; 7 uses
  %53 = alloca %"class.xgboost::BatchIterator", align 16 ; 9 uses
  %54 = alloca %"class.xgboost::BatchIterator", align 8 ; 8 uses
  %55 = alloca %"class.xgboost::predictor::SparsePageView", align 8 ; 10 uses
  %56 = alloca %"class.xgboost::BatchSet.273", align 16 ; 7 uses
  %57 = alloca %"struct.xgboost::BatchParam", align 8 ; 8 uses
  %58 = alloca %"class.xgboost::BatchIterator.274", align 16 ; 9 uses
  %59 = alloca %"class.xgboost::BatchIterator.274", align 8 ; 8 uses
  %60 = alloca %"class.xgboost::predictor::GHistIndexMatrixView", align 8 ; 13 uses
  %.sroa.0224.i = alloca %"struct.enc::MappingView", align 8 ; 5 uses
  %61 = alloca %"class.std::shared_ptr.147", align 8 ; 5 uses
  %62 = alloca %"class.std::shared_ptr.147", align 8 ; 5 uses
  %63 = alloca %"struct.enc::detail::ColumnsViewImpl", align 8 ; 5 uses
  %64 = alloca %"class.std::tuple.142", align 8   ; 9 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 2 uses
  %65 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %66 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %67 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %68 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.l = alloca i32, align 4                      ; 10 uses
  %i.m = alloca i64, align 8                      ; 10 uses
  %69 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %70 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %71 = alloca %"class.xgboost::linalg::TensorView", align 8 ; 8 uses
  %72 = alloca %"struct.xgboost::interpretability::(anonymous namespace)::QuadratureTreeShapModelData", align 8 ; 18 uses
  %73 = alloca %"class.std::vector.53", align 8   ; 15 uses
  %74 = alloca %"class.std::vector.58", align 8   ; 15 uses
  %75 = alloca %"class.std::vector.10", align 8   ; 12 uses
  %76 = alloca %"class.std::vector.58", align 8   ; 15 uses
  %77 = alloca %"class.std::vector.10", align 8   ; 12 uses
  %78 = alloca %"class.xgboost::linalg::TensorView.63", align 8 ; 8 uses
  store i64 %6, ptr %i.k, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #13
  %i.o = icmp eq i64 %6, 8
  br i1 %i.o, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.a
  call void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %65, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) @_ZN7xgboost16interpretability12_GLOBAL__N_125kQuadratureTreeShapPointsE)
  %.pr = load ptr, ptr %65, align 8, !tbaa !21
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #13
  %i.p = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %66)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.p, ptr noundef nonnull @.str, i32 noundef 555)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.c

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.q = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %66)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.d ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.6, i64 noundef 46)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.t = load ptr, ptr %65, align 8, !tbaa !21    ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !26
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !27
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef %i.u, i64 noundef %i.w)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.d ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.7, i64 noundef 65)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.x, i64 noundef 8)
          to label %_ZNSolsEm.exit unwind label %bb.d

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.8, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79: ; preds = %_ZNSolsEm.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %66)
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %.noexc, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %66)
          to label %bb.e unwind label %bb.ma

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.c ], [ %i.ad, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #13
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %65) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #13
  br label %common.resume

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #13
  %.pr240 = load ptr, ptr %65, align 8, !tbaa !21 ; 4 uses
  %.not.i80 = icmp eq ptr %.pr240, null
  br i1 %.not.i80, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %.pr240, align 8, !tbaa !26 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.pr240, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !28
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr240, i64 noundef 32) #30
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.a, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %bb.f, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #13
  %i.aj = load ptr, ptr %1, align 8, !tbaa !31
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = call noundef nonnull align 8 dereferenceable(248) ptr %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !34
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !35
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = lshr exact i64 %i.as, 3
  %i.au = trunc i64 %i.at to i32                  ; 2 uses
  %i.av = icmp eq i32 %4, 0
  %i.aw = call i32 @llvm.smin.i32(i32 %4, i32 %i.au)
  %.0.i = select i1 %i.av, i32 %i.au, i32 %i.aw   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i32 %.0.i, ptr %i.i, align 4, !tbaa !18, !noalias !525
  store i32 0, ptr %i.j, align 4, !tbaa !18, !noalias !525
  %.not.i66 = icmp slt i32 %.0.i, 0
  br i1 %.not.i66, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit98

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %67, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.j)
  %.pr242 = load ptr, ptr %67, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.not252 = icmp eq ptr %.pr242, null
  br i1 %.not252, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit98, label %bb.h

bb.h:                                             ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #13
  %i.ax = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %68)
          to label %.noexc81 unwind label %bb.i

.noexc81:                                         ; preds = %bb.h
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ax, ptr noundef nonnull @.str, i32 noundef 560)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit83 unwind label %bb.i

_ZN4dmlc15LogMessageFatalC2EPKci.exit83:          ; preds = %.noexc81
  %i.ay = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %68)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit85 unwind label %bb.j ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit85: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit83
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit85
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.9, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit89 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit89: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87
  %i.bb = load ptr, ptr %67, align 8, !tbaa !21   ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !26
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !27
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef %i.bc, i64 noundef %i.be)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91 unwind label %bb.j

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit89
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %68)
          to label %bb.l unwind label %bb.i

bb.i:                                             ; preds = %.noexc81, %bb.h, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit91, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit89, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit85, %_ZN4dmlc15LogMessageFatalC2EPKci.exit83
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %68)
          to label %bb.k unwind label %bb.ma

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn49 = phi { ptr, i32 } [ %i.bh, %bb.i ], [ %i.bi, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #13
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %67) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #13
  br label %common.resume

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #13
end_hunk_0
begin_hunk_1_@_ZN7xgboost16interpretability8cpu_impl24QuadratureTreeShapValuesEPKNS_7ContextEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEm:bb.a
  %i.bz = load i64, ptr %i.m, align 8, !tbaa !29
  %i.ca = mul i64 %i.bz, %i.by
  %i.cb = load ptr, ptr %i.bp, align 8, !tbaa !63
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 28
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !73
  %i.ce = zext i32 %i.cd to i64
  %i.cf = mul i64 %i.ca, %i.ce                    ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !93 ; 4 uses
  %i.ci = load ptr, ptr %i.bx, align 8, !tbaa !94 ; 5 uses
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = ashr exact i64 %i.cl, 2                 ; 3 uses
  %i.cn = icmp ugt i64 %i.cf, %i.cm
  br i1 %i.cn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit98
  %i.co = sub nuw i64 %i.cf, %i.cm
  call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 noundef %i.co)
  %.pre = load ptr, ptr %i.bx, align 8, !tbaa !95
  %.pre300 = load ptr, ptr %i.cg, align 8, !tbaa !95
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.o:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit98
  %i.cp = icmp ult i64 %i.cf, %i.cm
  br i1 %i.cp, label %bb.p, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.p:                                             ; preds = %bb.o
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cf ; 3 uses
  %.not.i.i = icmp eq ptr %i.ch, %i.cq
  br i1 %.not.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.p
  store ptr %i.cq, ptr %i.cg, align 8, !tbaa !93
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %bb.n, %bb.o, %bb.p, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i
  %i.cr = phi ptr [ %.pre300, %bb.n ], [ %i.ch, %bb.o ], [ %i.ch, %bb.p ], [ %i.cq, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.cs = phi ptr [ %.pre, %bb.n ], [ %i.ci, %bb.o ], [ %i.ci, %bb.p ], [ %i.ci, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ] ; 3 uses
  %.not6.i.i.i.i = icmp eq ptr %i.cs, %i.cr
  br i1 %.not6.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.ct = ptrtoaddr ptr %i.cr to i64
  %i.cu = ptrtoaddr ptr %i.cs to i64
  %i.cv = add i64 %i.ct, -4
  %i.cw = sub i64 %i.cv, %i.cu
  %i.cx = and i64 %i.cw, -4
  %i.cy = add i64 %i.cx, 4
  call void @llvm.memset.p0.i64(ptr align 4 %i.cs, i8 0, i64 %i.cy, i1 false), !tbaa !97
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit: ; preds = %.lr.ph.i.i.i.i.preheader, %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #13
  store i32 0, ptr %i.n, align 4, !tbaa !18
  %i.cz = load i32, ptr %i.l, align 4, !tbaa !18, !noalias !526
  %.not.i = icmp eq i32 %i.cz, 0
  br i1 %.not.i, label %_ZN4dmlc11LogCheck_NEIjiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, label %_ZN4dmlc11LogCheck_NEIjiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_NEIjiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #13
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit116

_ZN4dmlc11LogCheck_NEIjiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEfEvT_S7_RKT0_.exit
  call void @_ZN4dmlc14LogCheckFormatIjiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %69, ptr noundef nonnull align 4 dereferenceable(4) %i.l, ptr noundef nonnull align 4 dereferenceable(4) %i.n)
  %.pr247 = load ptr, ptr %69, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #13
  %.not253 = icmp eq ptr %.pr247, null
  br i1 %.not253, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit116, label %bb.q

bb.q:                                             ; preds = %_ZN4dmlc11LogCheck_NEIjiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #13
  %i.da = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %70)
          to label %.noexc99 unwind label %bb.r

.noexc99:                                         ; preds = %bb.q
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.da, ptr noundef nonnull @.str, i32 noundef 569)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit101 unwind label %bb.r

_ZN4dmlc15LogMessageFatalC2EPKci.exit101:         ; preds = %.noexc99
  %i.db = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %70)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit103 unwind label %bb.s ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit103: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit101
  %i.dc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit103
  %i.dd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef nonnull @.str.10, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105
  %i.de = load ptr, ptr %69, align 8, !tbaa !21   ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !26
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !27
  %i.di = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef %i.df, i64 noundef %i.dh)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit109 unwind label %bb.s

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit109: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107
  %i.dj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit111 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit111: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit109
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %70)
          to label %bb.u unwind label %bb.r

bb.r:                                             ; preds = %.noexc99, %bb.q, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit111
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit109, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit103, %_ZN4dmlc15LogMessageFatalC2EPKci.exit101
  %i.dl = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %70)
          to label %bb.t unwind label %bb.ma

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn51 = phi { ptr, i32 } [ %i.dk, %bb.r ], [ %i.dl, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #13
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %69) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #13
  br label %bb.lz

bb.u:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit111
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #13
  %.pr248 = load ptr, ptr %69, align 8, !tbaa !21 ; 4 uses
  %.not.i112 = icmp eq ptr %.pr248, null
  br i1 %.not.i112, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit116, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dm = load ptr, ptr %.pr248, align 8, !tbaa !26 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.pr248, i64 16 ; 2 uses
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i113: ; preds = %bb.v
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !28
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dq) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i114

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i114: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i113
  call void @_ZdlPvm(ptr noundef nonnull %.pr248, i64 noundef 32) #30
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit116

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit116: ; preds = %_ZN4dmlc11LogCheck_NEIjiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_NEIjiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.u, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #13
  %i.dr = load atomic i8, ptr @_ZGVZN7xgboost16interpretability6detail17GetQuadratureRuleEvE5kRule acquire, align 8
  %i.ds = icmp eq i8 %i.dr, 0
  br i1 %i.ds, label %bb.w, label %_ZN7xgboost16interpretability6detail17GetQuadratureRuleEv.exit, !prof !98

bb.w:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit116
  %i.dt = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7xgboost16interpretability6detail17GetQuadratureRuleEvE5kRule) #13
  %.not.i117 = icmp eq i32 %i.dt, 0
  br i1 %.not.i117, label %_ZN7xgboost16interpretability6detail17GetQuadratureRuleEv.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN7xgboost16interpretability6detail22MakeEndpointQuadratureEv(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::interpretability::detail::QuadratureRule") align 4 @_ZZN7xgboost16interpretability6detail17GetQuadratureRuleEvE5kRule)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.du = call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZZN7xgboost16interpretability6detail17GetQuadratureRuleEvE5kRule) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7xgboost16interpretability6detail17GetQuadratureRuleEvE5kRule) #13
  br label %_ZN7xgboost16interpretability6detail17GetQuadratureRuleEv.exit

common.resume:                                    ; preds = %bb.e, %bb.lz, %bb.k, %bb.z
  %common.resume.op = phi { ptr, i32 } [ %i.dv, %bb.z ], [ %.pn, %bb.e ], [ %.pn57.pn.pn.pn.pn.pn, %bb.lz ], [ %.pn49, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.z:                                             ; preds = %bb.x
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7xgboost16interpretability6detail17GetQuadratureRuleEvE5kRule) #13
  br label %common.resume

_ZN7xgboost16interpretability6detail17GetQuadratureRuleEv.exit: ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit116, %bb.w, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #13
  %i.dw = load ptr, ptr %i.bp, align 8, !tbaa !63
  call void @_ZNK7xgboost17LearnerModelParam9BaseScoreENS_9DeviceOrdE(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::linalg::TensorView") align 8 %71, ptr noundef nonnull align 8 dereferenceable(40) %i.dw, i32 -65536)
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #13
  call fastcc void @_ZN7xgboost16interpretability12_GLOBAL__N_131MakeQuadratureTreeShapModelDataERKNS_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEE(ptr dead_on_unwind noalias writable align 8 %72, ptr noundef nonnull align 8 dereferenceable(192) %3, i32 noundef %.0.i, ptr noundef %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #13
  %i.dx = sext i32 %i.bo to i64                   ; 8 uses
  %i.dy = icmp slt i32 %i.bo, 0
  br i1 %i.dy, label %bb.aa, label %_ZNSt6vectorIN7xgboost7RegTree4FVecESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.aa:                                            ; preds = %_ZN7xgboost16interpretability6detail17GetQuadratureRuleEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #32
          to label %.noexc119 unwind label %bb.ln

.noexc119:                                        ; preds = %bb.aa
  unreachable

_ZNSt6vectorIN7xgboost7RegTree4FVecESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %_ZN7xgboost16interpretability6detail17GetQuadratureRuleEv.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %73, i8 0, i64 24, i1 false)
  %.not.i.i.i.i118 = icmp eq i32 %i.bo, 0         ; 7 uses
  br i1 %.not.i.i.i.i118, label %_ZNSt12_Vector_baseIN7xgboost7RegTree4FVecESaIS2_EEC2EmRKS3_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

_ZNSt12_Vector_baseIN7xgboost7RegTree4FVecESaIS2_EEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIN7xgboost7RegTree4FVecESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  store i64 0, ptr %73, align 8
  br label %bb.ab

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIN7xgboost7RegTree4FVecESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.dz = shl nuw nsw i64 %i.dx, 5                ; 3 uses
  %i.ea = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dz) #33
          to label %.noexc120 unwind label %bb.ln ; 4 uses

.noexc120:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.ea, ptr %73, align 8, !tbaa !101
  %i.eb = getelementptr inbounds nuw [32 x i8], ptr %i.ea, i64 %i.dx
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ea, i8 0, i64 %i.dz, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.ea, i64 %i.dz
  br label %bb.ab

bb.ab:                                            ; preds = %.noexc120, %_ZNSt12_Vector_baseIN7xgboost7RegTree4FVecESaIS2_EEC2EmRKS3_.exit.thread.i
  %.sink.i = phi ptr [ null, %_ZNSt12_Vector_baseIN7xgboost7RegTree4FVecESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.eb, %.noexc120 ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN7xgboost7RegTree4FVecESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %scevgep.i.i.i.i.i, %.noexc120 ]
  %i.ec = getelementptr inbounds nuw i8, ptr %73, i64 8 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %73, i64 16 ; 2 uses
  store ptr %.sink.i, ptr %i.ed, align 8, !tbaa !102
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ec, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #13
  %i.ee = load i64, ptr %i.m, align 8, !tbaa !29  ; 5 uses
  %i.ef = icmp ugt i64 %i.ee, 2305843009213693951
  br i1 %i.ef, label %bb.ac, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #32
          to label %.noexc122 unwind label %bb.lo

.noexc122:                                        ; preds = %bb.ac
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.ab
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %75, i8 0, i64 24, i1 false)
  %.not.i.i.i.i121 = icmp eq i64 %i.ee, 0
  br i1 %.not.i.i.i.i121, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.eg = shl nuw nsw i64 %i.ee, 2
  %i.eh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eg) #33
          to label %.noexc123 unwind label %bb.lo ; 4 uses

.noexc123:                                        ; preds = %bb.ad
  store ptr %i.eh, ptr %75, align 8, !tbaa !94
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.ee
  %i.ej = getelementptr inbounds nuw i8, ptr %75, i64 16
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !104
  store float 0.000000e+00, ptr %i.eh, align 4, !tbaa !97
  %i.ek = getelementptr i8, ptr %i.eh, i64 4      ; 3 uses
  %i.el = add nsw i64 %i.ee, -1                   ; 2 uses
  %i.em = icmp eq i64 %i.el, 0
  br i1 %i.em, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc123
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.el, 2  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.ek, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !97
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i, %.noexc123, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i = phi ptr [ %i.en, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ek, %.noexc123 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.eo = getelementptr inbounds nuw i8, ptr %75, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.eo, align 8, !tbaa !93
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %74, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i118, label %_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EEC2EmRKS3_.exit.i, label %_ZNSt15__new_allocatorISt6vectorIfSaIfEEE8allocateEmPKv.exit.i.i.i.i

_ZNSt15__new_allocatorISt6vectorIfSaIfEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.ep = mul nuw nsw i64 %i.dx, 24
  %i.eq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ep) #33
          to label %_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EEC2EmRKS3_.exit.i unwind label %bb.lp

_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EEC2EmRKS3_.exit.i: ; preds = %_ZNSt15__new_allocatorISt6vectorIfSaIfEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.er = phi ptr [ null, %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.eq, %_ZNSt15__new_allocatorISt6vectorIfSaIfEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.er, ptr %74, align 8, !tbaa !107
  %i.es = getelementptr inbounds nuw i8, ptr %74, i64 8 ; 3 uses
  store ptr %i.er, ptr %i.es, align 8, !tbaa !108
  %i.et = getelementptr inbounds nuw [24 x i8], ptr %i.er, i64 %i.dx
  %i.eu = getelementptr inbounds nuw i8, ptr %74, i64 16 ; 3 uses
  store ptr %i.et, ptr %i.eu, align 8, !tbaa !109
  %i.ev = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPSt6vectorIfSaIfEEmS2_ET_S4_T0_RKT1_(ptr noundef %i.er, i64 noundef %i.dx, ptr noundef nonnull align 8 dereferenceable(24) %75)
          to label %bb.ag unwind label %bb.ae

bb.ae:                                            ; preds = %_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EEC2EmRKS3_.exit.i
  %i.ew = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ex = load ptr, ptr %74, align 8, !tbaa !107  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i, label %.body, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ey = load ptr, ptr %i.eu, align 8, !tbaa !109
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = ptrtoint ptr %i.ex to i64
  %i.fb = sub i64 %i.ez, %i.fa
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef %i.fb) #30
  br label %.body

bb.ag:                                            ; preds = %_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EEC2EmRKS3_.exit.i
  store ptr %i.ev, ptr %i.es, align 8, !tbaa !108
  %i.fc = load ptr, ptr %75, align 8, !tbaa !94   ; 3 uses
  %.not.i.i.i127 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i127, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fd = getelementptr inbounds nuw i8, ptr %75, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !104
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = ptrtoint ptr %i.fc to i64
  %i.fh = sub i64 %i.ff, %i.fg
  call void @_ZdlPvm(ptr noundef nonnull %i.fc, i64 noundef %i.fh) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #13
  %i.fi = zext i32 %i.bu to i64                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %77, i8 0, i64 24, i1 false)
  %.not.i.i.i.i129 = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i.i.i129, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i132, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.fj = shl nuw nsw i64 %i.fi, 2                ; 3 uses
  %i.fk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fj) #33
          to label %.noexc131 unwind label %bb.lr ; 6 uses

.noexc131:                                        ; preds = %bb.ai
  store ptr %i.fk, ptr %77, align 8, !tbaa !94
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.fi
  %i.fm = getelementptr inbounds nuw i8, ptr %77, i64 16
  store ptr %i.fl, ptr %i.fm, align 8, !tbaa !104
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fj ; 3 uses
  %i.fo = add nsw i64 %i.fj, -4                   ; 2 uses
  %i.fp = lshr exact i64 %i.fo, 2
  %i.fq = add nuw nsw i64 %i.fp, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fo, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.noexc131
  %n.vec = and i64 %i.fq, 9223372036854775800     ; 3 uses
  %i.fr = shl i64 %n.vec, 2
  %i.fs = getelementptr i8, ptr %i.fk, i64 %i.fr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ft = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.fk, i64 %i.ft ; 2 uses
  %i.fu = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float -9.990000e+02), ptr %next.gep, align 4, !tbaa !97
  store <4 x float> splat (float -9.990000e+02), ptr %i.fu, align 4, !tbaa !97
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fv = icmp eq i64 %index.next, %n.vec
  br i1 %i.fv, label %middle.block, label %vector.body, !llvm.loop !464

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i132, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %.noexc131, %middle.block
  %.07.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.fk, %.noexc131 ], [ %i.fs, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fw, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store float -9.990000e+02, ptr %.07.i.i.i.i.i.i.i.i.i, align 4, !tbaa !97
  %i.fw = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fw, %i.fn
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i132, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !465

_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i132: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %_ZNSt6vectorIfSaIfEED2Ev.exit
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIfSaIfEED2Ev.exit ], [ %i.fn, %middle.block ], [ %i.fn, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.fx = getelementptr inbounds nuw i8, ptr %77, i64 8
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.fx, align 8, !tbaa !93
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %76, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i118, label %_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EEC2EmRKS3_.exit.i135, label %_ZNSt15__new_allocatorISt6vectorIfSaIfEEE8allocateEmPKv.exit.i.i.i.i134

_ZNSt15__new_allocatorISt6vectorIfSaIfEEE8allocateEmPKv.exit.i.i.i.i134: ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i132
  %i.fy = mul nuw nsw i64 %i.dx, 24
  %i.fz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fy) #33
          to label %_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EEC2EmRKS3_.exit.i135 unwind label %bb.ls

_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EEC2EmRKS3_.exit.i135: ; preds = %_ZNSt15__new_allocatorISt6vectorIfSaIfEEE8allocateEmPKv.exit.i.i.i.i134, %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i132
  %i.ga = phi ptr [ null, %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i132 ], [ %i.fz, %_ZNSt15__new_allocatorISt6vectorIfSaIfEEE8allocateEmPKv.exit.i.i.i.i134 ] ; 4 uses
  store ptr %i.ga, ptr %76, align 8, !tbaa !107
  %i.gb = getelementptr inbounds nuw i8, ptr %76, i64 8 ; 3 uses
  store ptr %i.ga, ptr %i.gb, align 8, !tbaa !108
  %i.gc = getelementptr inbounds nuw [24 x i8], ptr %i.ga, i64 %i.dx
  %i.gd = getelementptr inbounds nuw i8, ptr %76, i64 16 ; 3 uses
  store ptr %i.gc, ptr %i.gd, align 8, !tbaa !109
  %i.ge = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPSt6vectorIfSaIfEEmS2_ET_S4_T0_RKT1_(ptr noundef %i.ga, i64 noundef %i.dx, ptr noundef nonnull align 8 dereferenceable(24) %77)
          to label %bb.al unwind label %bb.aj

bb.aj:                                            ; preds = %_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EEC2EmRKS3_.exit.i135
  %i.gf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gg = load ptr, ptr %76, align 8, !tbaa !107  ; 3 uses
  %.not.i.i.i136 = icmp eq ptr %i.gg, null
  br i1 %.not.i.i.i136, label %.body140, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gh = load ptr, ptr %i.gd, align 8, !tbaa !109
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = ptrtoint ptr %i.gg to i64
  %i.gk = sub i64 %i.gi, %i.gj
  call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef %i.gk) #30
  br label %.body140

bb.al:                                            ; preds = %_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EEC2EmRKS3_.exit.i135
  store ptr %i.ge, ptr %i.gb, align 8, !tbaa !108
  %i.gl = load ptr, ptr %77, align 8, !tbaa !94   ; 3 uses
  %.not.i.i.i143 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i.i143, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
end_hunk_1
begin_hunk_2_@_ZN7xgboost16interpretability8cpu_impl35QuadratureTreeShapInteractionValuesEPKNS_7ContextEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEm:bb.a
  %i.alt = landingpad { ptr, i32 }
          cleanup
  br label %.body138

bb.lr:                                            ; preds = %_ZNSt15__new_allocatorIN7xgboost11FeatureTypeEE8allocateEmPKv.exit.i.i.i.i.i29.i, %.noexc.i.i49.i129.i, %.noexc142, %bb.if, %bb.fy, %bb.fx, %.noexc136, %_ZNK7xgboost7DMatrix4CatsEv.exit17.i, %.noexc134, %bb.ap, %.noexc132, %bb.ai
  %i.alu = landingpad { ptr, i32 }
          cleanup
  br label %.body138

.body138:                                         ; preds = %bb.lr, %bb.ku, %bb.kt, %.body.i133.i, %_ZNSt10_Head_baseILm1ESt6vectorIiSaIiEELb0EED2Ev.exit27.i, %bb.lq
  %.pn54 = phi { ptr, i32 } [ %i.alt, %bb.lq ], [ %i.alu, %bb.lr ], [ %eh.lpad-body.i, %_ZNSt10_Head_baseILm1ESt6vectorIiSaIiEELb0EED2Ev.exit27.i ], [ %.pn30.pn.i134.i, %.body.i133.i ], [ %.pn24.pn.pn.i33.i, %bb.kt ], [ %.pn24.pn.pn.i33.i, %bb.ku ]
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #13
  call void @_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %75) #13
  br label %bb.ls

bb.ls:                                            ; preds = %.body138, %_ZNSt6vectorIfSaIfEED2Ev.exit179
  %.pn54.pn.pn = phi { ptr, i32 } [ %.pn54, %.body138 ], [ %.pn52, %_ZNSt6vectorIfSaIfEED2Ev.exit179 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #13
  call void @_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %73) #13
  br label %bb.lt

bb.lt:                                            ; preds = %bb.ls, %_ZNSt6vectorIfSaIfEED2Ev.exit177
  %.pn54.pn.pn.pn = phi { ptr, i32 } [ %.pn54.pn.pn, %bb.ls ], [ %.pn50, %_ZNSt6vectorIfSaIfEED2Ev.exit177 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #13
  call fastcc void @_ZNSt6vectorIS_IN7xgboost16interpretability12_GLOBAL__N_121QuadraturePathElementESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %72) #13
  br label %bb.lu

bb.lu:                                            ; preds = %bb.lt, %bb.lj
  %.pn54.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn54.pn.pn.pn, %bb.lt ], [ %i.alc, %bb.lj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #13
  call void @_ZNSt6vectorIN7xgboost7RegTree4FVecESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %71) #13
  br label %bb.lv

bb.lv:                                            ; preds = %bb.lu, %bb.li
  %.pn54.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn54.pn.pn.pn.pn, %bb.lu ], [ %i.alb, %bb.li ]
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #13
  call fastcc void @_ZN7xgboost16interpretability12_GLOBAL__N_127QuadratureTreeShapModelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %70) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #13
  br label %common.resume

bb.lw:                                            ; preds = %bb.j, %bb.d
  %i.alv = landingpad { ptr, i32 }
          catch ptr null
  %i.alw = extractvalue { ptr, i32 } %i.alv, 0
  call void @__clang_call_terminate(ptr %i.alw) #31
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt6vectorIS_IN7xgboost16interpretability12_GLOBAL__N_121QuadraturePathElementESaIS3_EESaIS5_EED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !243    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !245  ; 2 uses
  %.not5.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not5.i.i, label %_ZSt8_DestroyIPSt6vectorIN7xgboost16interpretability12_GLOBAL__N_121QuadraturePathElementESaIS4_EES6_EvT_S8_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIN7xgboost16interpretability12_GLOBAL__N_121QuadraturePathElementESaIS4_EEEvPT_.exit.i.i
  %.06.i.i = phi ptr [ %i.h, %_ZSt8_DestroyISt6vectorIN7xgboost16interpretability12_GLOBAL__N_121QuadraturePathElementESaIS4_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %.0.val.i.i = load ptr, ptr %.06.i.i, align 8   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.0.val.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN7xgboost16interpretability12_GLOBAL__N_121QuadraturePathElementESaIS4_EEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.d = getelementptr i8, ptr %.06.i.i, i64 16
  %.0.val4.i.i = load ptr, ptr %i.d, align 8
  %i.e = ptrtoint ptr %.0.val4.i.i to i64
  %i.f = ptrtoint ptr %.0.val.i.i to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %.0.val.i.i, i64 noundef %i.g) #30
  br label %_ZSt8_DestroyISt6vectorIN7xgboost16interpretability12_GLOBAL__N_121QuadraturePathElementESaIS4_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIN7xgboost16interpretability12_GLOBAL__N_121QuadraturePathElementESaIS4_EEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIN7xgboost16interpretability12_GLOBAL__N_121QuadraturePathElementESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !4

_ZSt8_DestroyIPSt6vectorIN7xgboost16interpretability12_GLOBAL__N_121QuadraturePathElementESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIN7xgboost16interpretability12_GLOBAL__N_121QuadraturePathElementESaIS4_EEEvPT_.exit.i.i
  %.val.pr = load ptr, ptr %0, align 8, !tbaa !243
  br label %_ZSt8_DestroyIPSt6vectorIN7xgboost16interpretability12_GLOBAL__N_121QuadraturePathElementESaIS4_EES6_EvT_S8_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIN7xgboost16interpretability12_GLOBAL__N_121QuadraturePathElementESaIS4_EES6_EvT_S8_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN7xgboost16interpretability12_GLOBAL__N_121QuadraturePathElementESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, %bb.a
  %.val = phi ptr [ %.val.pr, %_ZSt8_DestroyIPSt6vectorIN7xgboost16interpretability12_GLOBAL__N_121QuadraturePathElementESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i2 = icmp eq ptr %.val, null
  br i1 %.not.i.i2, label %_ZNSt12_Vector_baseISt6vectorIN7xgboost16interpretability12_GLOBAL__N_121QuadraturePathElementESaIS4_EESaIS6_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN7xgboost16interpretability12_GLOBAL__N_121QuadraturePathElementESaIS4_EES6_EvT_S8_RSaIT0_E.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.i, align 8, !tbaa !244
  %i.j = ptrtoint ptr %.val1 to i64
  %i.k = ptrtoint ptr %.val to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef %i.l) #30
  br label %_ZNSt12_Vector_baseISt6vectorIN7xgboost16interpretability12_GLOBAL__N_121QuadraturePathElementESaIS4_EESaIS6_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIN7xgboost16interpretability12_GLOBAL__N_121QuadraturePathElementESaIS4_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN7xgboost16interpretability12_GLOBAL__N_121QuadraturePathElementESaIS4_EES6_EvT_S8_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7xgboost16interpretability8cpu_impl23ApproxFeatureImportanceEPKNS_7ContextEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(192) %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %8 = alloca %"struct.xgboost::tree::ScalarTreeView", align 8 ; 5 uses
  %9 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %10 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %11 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %12 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %13 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %14 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %15 = alloca %class.anon.358, align 8           ; 17 uses
  %16 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %17 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %18 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %19 = alloca %"class.dmlc::OMPException", align 8 ; 14 uses
  %20 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %21 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %22 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %23 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %24 = alloca %class.anon.357, align 8           ; 17 uses
  %25 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %26 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %27 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %28 = alloca %"class.dmlc::OMPException", align 8 ; 14 uses
  %29 = alloca %"class.xgboost::BatchSet", align 16 ; 7 uses
  %30 = alloca %"class.xgboost::BatchIterator", align 16 ; 9 uses
  %31 = alloca %"class.xgboost::BatchIterator", align 8 ; 8 uses
  %32 = alloca %"class.xgboost::predictor::SparsePageView.315", align 8 ; 9 uses
  %33 = alloca %"class.xgboost::BatchSet.273", align 16 ; 7 uses
  %34 = alloca %"struct.xgboost::BatchParam", align 8 ; 8 uses
  %35 = alloca %"class.xgboost::BatchIterator.274", align 16 ; 9 uses
  %36 = alloca %"class.xgboost::BatchIterator.274", align 8 ; 8 uses
  %37 = alloca %"class.xgboost::predictor::GHistIndexMatrixView.317", align 8 ; 12 uses
  %38 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %39 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %40 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %41 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %42 = alloca %class.anon.356, align 8           ; 17 uses
  %43 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %44 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %45 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %46 = alloca %"class.dmlc::OMPException", align 8 ; 14 uses
  %47 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %48 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %49 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %50 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %51 = alloca %class.anon.355, align 8           ; 17 uses
  %52 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %53 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %54 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %55 = alloca %"class.dmlc::OMPException", align 8 ; 14 uses
  %56 = alloca %"class.xgboost::BatchSet", align 16 ; 7 uses
  %57 = alloca %"class.xgboost::BatchIterator", align 16 ; 9 uses
  %58 = alloca %"class.xgboost::BatchIterator", align 8 ; 8 uses
  %59 = alloca %"class.xgboost::predictor::SparsePageView", align 8 ; 10 uses
  %60 = alloca %"class.xgboost::BatchSet.273", align 16 ; 7 uses
  %61 = alloca %"struct.xgboost::BatchParam", align 8 ; 8 uses
  %62 = alloca %"class.xgboost::BatchIterator.274", align 16 ; 9 uses
  %63 = alloca %"class.xgboost::BatchIterator.274", align 8 ; 8 uses
  %64 = alloca %"class.xgboost::predictor::GHistIndexMatrixView", align 8 ; 13 uses
  %.sroa.0224.i = alloca %"struct.enc::MappingView", align 8 ; 5 uses
  %65 = alloca %"class.std::shared_ptr.147", align 8 ; 5 uses
  %66 = alloca %"class.std::shared_ptr.147", align 8 ; 5 uses
  %67 = alloca %"struct.enc::detail::ColumnsViewImpl", align 8 ; 5 uses
  %68 = alloca %"class.std::tuple.142", align 8   ; 9 uses
  %69 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %70 = alloca %"struct.xgboost::tree::ScalarTreeView", align 8 ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %71 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %72 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %73 = alloca %"class.dmlc::OMPException", align 8 ; 15 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %i.m = alloca i32, align 4                      ; 7 uses
  %i.n = alloca ptr, align 8                      ; 6 uses
  %74 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %75 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.o = alloca i64, align 8                      ; 10 uses
  %76 = alloca %"class.std::vector.58", align 8   ; 18 uses
  %77 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.p = alloca i32, align 4                      ; 9 uses
  %78 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %i.q = alloca i32, align 4                      ; 6 uses
  %79 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %80 = alloca %"class.xgboost::linalg::TensorView", align 8 ; 8 uses
  %81 = alloca %"class.xgboost::common::Span.72", align 8 ; 9 uses
  %82 = alloca %"class.std::vector.53", align 8   ; 15 uses
  %83 = alloca %"class.std::vector.58", align 8   ; 15 uses
  %84 = alloca %"class.std::vector.10", align 8   ; 12 uses
  %85 = alloca %"class.xgboost::linalg::TensorView.63", align 8 ; 8 uses
  store ptr %5, ptr %i.n, align 8, !tbaa !174
  %i.r = load ptr, ptr %1, align 8, !tbaa !31
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef nonnull align 8 dereferenceable(248) ptr %i.s(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !34
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !35
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = lshr exact i64 %i.aa, 3
  %i.ac = trunc i64 %i.ab to i32                  ; 2 uses
  %i.ad = icmp eq i32 %4, 0
  %i.ae = tail call i32 @llvm.smin.i32(i32 %4, i32 %i.ac)
  %.0.i = select i1 %i.ad, i32 %i.ac, i32 %i.ae   ; 3 uses
  store i32 %.0.i, ptr %i.m, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i32 %.0.i, ptr %i.k, align 4, !tbaa !18, !noalias !733
  store i32 0, ptr %i.l, align 4, !tbaa !18, !noalias !733
  %.not.i65 = icmp slt i32 %.0.i, 0
  br i1 %.not.i65, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.a
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %74, ptr noundef nonnull align 4 dereferenceable(4) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
  %.pr = load ptr, ptr %74, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #13
  %i.af = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %75)
          to label %.noexc66 unwind label %bb.c

.noexc66:                                         ; preds = %bb.b
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.af, ptr noundef nonnull @.str, i32 noundef 740)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.c

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc66
  %i.ag = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %75)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.d ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.9, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aj = load ptr, ptr %74, align 8, !tbaa !21   ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !26
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !27
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef %i.ak, i64 noundef %i.am)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.d

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %75)
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %.noexc66, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %75)
          to label %bb.e unwind label %bb.nh

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.c ], [ %i.aq, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #13
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %74) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #13
  br label %bb.ng

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #13
  %.pr236 = load ptr, ptr %74, align 8, !tbaa !21 ; 4 uses
  %.not.i75 = icmp eq ptr %.pr236, null
  br i1 %.not.i75, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = load ptr, ptr %.pr236, align 8, !tbaa !26 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.pr236, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  %i.au = load i64, ptr %i.as, align 8, !tbaa !28
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr236, i64 noundef 32) #30
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.f, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #13
  %i.aw = load ptr, ptr %i.n, align 8, !tbaa !174
  %i.ax = load i32, ptr %i.m, align 4, !tbaa !18
  call fastcc void @_ZN7xgboost16interpretability12_GLOBAL__N_119ValidateTreeWeightsEPKSt6vectorIfSaIfEEi(ptr noundef %i.aw, i32 noundef %i.ax)
  %i.ay = load i32, ptr %i.m, align 4, !tbaa !18  ; 3 uses
  %i.az = sext i32 %i.ay to i64                   ; 4 uses
  %i.ba = call noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %0) ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #13
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !63
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !74
  %i.bf = add i32 %i.be, 1
  %i.bg = zext i32 %i.bf to i64
  store i64 %i.bg, ptr %i.o, align 8, !tbaa !29
  %i.bh = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN7xgboost16HostDeviceVectorIfE10HostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %2) ; 8 uses
  %i.bi = load i64, ptr %i.t, align 8, !tbaa !92
  %i.bj = load i64, ptr %i.o, align 8, !tbaa !29
  %i.bk = mul i64 %i.bj, %i.bi
  %i.bl = load ptr, ptr %i.bb, align 8, !tbaa !63
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 28
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !73
  %i.bo = zext i32 %i.bn to i64
  %i.bp = mul i64 %i.bk, %i.bo                    ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !93 ; 4 uses
  %i.bs = load ptr, ptr %i.bh, align 8, !tbaa !94 ; 5 uses
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = ashr exact i64 %i.bv, 2                 ; 3 uses
  %i.bx = icmp ugt i64 %i.bp, %i.bw
  br i1 %i.bx, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.by = sub nuw i64 %i.bp, %i.bw
  call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 noundef %i.by)
  %.pre = load ptr, ptr %i.bh, align 8, !tbaa !95
  %.pre311 = load ptr, ptr %i.bq, align 8, !tbaa !95
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.i:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.bz = icmp ult i64 %i.bp, %i.bw
  br i1 %i.bz, label %bb.j, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.j:                                             ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bp ; 3 uses
  %.not.i.i = icmp eq ptr %i.br, %i.ca
  br i1 %.not.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.j
  store ptr %i.ca, ptr %i.bq, align 8, !tbaa !93
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %bb.h, %bb.i, %bb.j, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i
  %i.cb = phi ptr [ %.pre311, %bb.h ], [ %i.br, %bb.i ], [ %i.br, %bb.j ], [ %i.ca, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.cc = phi ptr [ %.pre, %bb.h ], [ %i.bs, %bb.i ], [ %i.bs, %bb.j ], [ %i.bs, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ] ; 3 uses
  %.not5.i.i.i.i = icmp eq ptr %i.cc, %i.cb
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEiEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.cd = ptrtoaddr ptr %i.cb to i64
  %i.ce = ptrtoaddr ptr %i.cc to i64
  %i.cf = add i64 %i.cd, -4
  %i.cg = sub i64 %i.cf, %i.ce
  %i.ch = and i64 %i.cg, -4
  %i.ci = add i64 %i.ch, 4
  call void @llvm.memset.p0.i64(ptr align 4 %i.cc, i8 0, i64 %i.ci, i1 false), !tbaa !97
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEiEvT_S7_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEiEvT_S7_RKT0_.exit: ; preds = %.lr.ph.i.i.i.i.preheader, %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #13
  %i.cj = icmp slt i32 %i.ay, 0
  br i1 %i.cj, label %bb.k, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.k:                                             ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEiEvT_S7_RKT0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #32
          to label %.noexc77 unwind label %bb.ba

.noexc77:                                         ; preds = %bb.k
  unreachable
end_hunk_2
begin_hunk_3_@_ZN7xgboost16interpretability8cpu_impl23ApproxFeatureImportanceEPKNS_7ContextEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEE:bb.a
.noexc91.51:                                      ; preds = %.noexc91.50
  %i.it = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.gr, i8 noundef signext 100)
          to label %.noexc91.52 unwind label %.loopexit ; 0 uses

.noexc91.52:                                      ; preds = %.noexc91.51
  %i.iu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.gr, i8 noundef signext 46)
          to label %.noexc91.53 unwind label %.loopexit ; 0 uses

.noexc91.53:                                      ; preds = %.noexc91.52
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %77)
          to label %bb.az unwind label %bb.bb

bb.az:                                            ; preds = %.noexc91.53
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #13
  br label %"_ZN7xgboost6common11ParallelForImZNS_16interpretability8cpu_impl23ApproxFeatureImportanceEPKNS_7ContextEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEE3$_0EEvT_iOT0_.exit.thread"

bb.ba:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.k
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %bb.nf

.loopexit248:                                     ; preds = %bb.n, %bb.p
  %lpad.loopexit250 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp249:                            ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i
  %lpad.loopexit.split-lp251 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bb:                                            ; preds = %.noexc83, %bb.ay, %.noexc91.53
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.loopexit:                                        ; preds = %.noexc91.52, %.noexc91.51, %.noexc91.50, %.noexc91.49, %.noexc91.48, %.noexc91.47, %.noexc91.46, %.noexc91.45, %.noexc91.44, %.noexc91.43, %.noexc91.42, %.noexc91.41, %.noexc91.40, %.noexc91.39, %.noexc91.38, %.noexc91.37, %.noexc91.36, %.noexc91.35, %.noexc91.34, %.noexc91.33, %.noexc91.32, %.noexc91.31, %.noexc91.30, %.noexc91.29, %.noexc91.28, %.noexc91.27, %.noexc91.26, %.noexc91.25, %.noexc91.24, %.noexc91.23, %.noexc91.22, %.noexc91.21, %.noexc91.20, %.noexc91.19, %.noexc91.18, %.noexc91.17, %.noexc91.16, %.noexc91.15, %.noexc91.14, %.noexc91.13, %.noexc91.12, %.noexc91.11, %.noexc91.10, %.noexc91.9, %.noexc91.8, %.noexc91.7, %.noexc91.6, %.noexc91.5, %.noexc91.4, %.noexc91.3, %.noexc91.2, %.noexc91.1, %.noexc91, %.lr.ph.i.preheader
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.loopexit.split-lp:                               ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit85, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit87
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.bc:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %77)
          to label %bb.bd unwind label %bb.nh

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.pn47 = phi { ptr, i32 } [ %i.iw, %bb.bb ], [ %lpad.phi, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #13
  br label %.body

"_ZN7xgboost6common11ParallelForImZNS_16interpretability8cpu_impl23ApproxFeatureImportanceEPKNS_7ContextEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEE3$_0EEvT_iOT0_.exit.thread": ; preds = %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.thread, %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i, %bb.l, %bb.az, %"_ZN7xgboost6common11ParallelForImZNS_16interpretability8cpu_impl23ApproxFeatureImportanceEPKNS_7ContextEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEE3$_0EEvT_iOT0_.exit"
  %i.ix = phi ptr [ %i.cq, %"_ZN7xgboost6common11ParallelForImZNS_16interpretability8cpu_impl23ApproxFeatureImportanceEPKNS_7ContextEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEE3$_0EEvT_iOT0_.exit" ], [ %i.gn, %bb.az ], [ %i.cm, %bb.l ], [ %i.dt, %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i ], [ %i.dt, %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.thread ]
  %i.iy = phi ptr [ %i.cr, %"_ZN7xgboost6common11ParallelForImZNS_16interpretability8cpu_impl23ApproxFeatureImportanceEPKNS_7ContextEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEE3$_0EEvT_iOT0_.exit" ], [ %i.go, %bb.az ], [ %i.cn, %bb.l ], [ %i.ds, %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i ], [ %i.ds, %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.thread ]
  %i.iz = phi i1 [ true, %"_ZN7xgboost6common11ParallelForImZNS_16interpretability8cpu_impl23ApproxFeatureImportanceEPKNS_7ContextEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEE3$_0EEvT_iOT0_.exit" ], [ %i.gp, %bb.az ], [ true, %bb.l ], [ false, %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i ], [ false, %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.thread ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #13
  %i.ja = load ptr, ptr %i.bb, align 8, !tbaa !63
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 28
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !73 ; 2 uses
  store i32 %i.jc, ptr %i.p, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #13
  store i32 0, ptr %i.q, align 4, !tbaa !18
  %.not.i = icmp eq i32 %i.jc, 0
  br i1 %.not.i, label %bb.be, label %_ZN4dmlc11LogCheck_NEIjiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_NEIjiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %"_ZN7xgboost6common11ParallelForImZNS_16interpretability8cpu_impl23ApproxFeatureImportanceEPKNS_7ContextEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEE3$_0EEvT_iOT0_.exit.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #13
  br label %.thread245

bb.be:                                            ; preds = %"_ZN7xgboost6common11ParallelForImZNS_16interpretability8cpu_impl23ApproxFeatureImportanceEPKNS_7ContextEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEE3$_0EEvT_iOT0_.exit.thread"
  invoke void @_ZN4dmlc14LogCheckFormatIjiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %78, ptr noundef nonnull align 4 dereferenceable(4) %i.p, ptr noundef nonnull align 4 dereferenceable(4) %i.q)
          to label %_ZN4dmlc11LogCheck_NEIjiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit unwind label %bb.bg

_ZN4dmlc11LogCheck_NEIjiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.be
  %.pr242 = load ptr, ptr %78, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #13
  %.not247 = icmp eq ptr %.pr242, null
  br i1 %.not247, label %.thread245, label %bb.bf

bb.bf:                                            ; preds = %_ZN4dmlc11LogCheck_NEIjiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #13
  %i.jd = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %79)
          to label %.noexc92 unwind label %bb.bh

.noexc92:                                         ; preds = %bb.bf
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.jd, ptr noundef nonnull @.str, i32 noundef 762)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit94 unwind label %bb.bh

_ZN4dmlc15LogMessageFatalC2EPKci.exit94:          ; preds = %.noexc92
  %i.je = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %79)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit96 unwind label %bb.bi ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit96: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit94
  %i.jf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.je, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98 unwind label %bb.bi ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit96
  %i.jg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.je, ptr noundef nonnull @.str.10, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100 unwind label %bb.bi ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98
  %i.jh = load ptr, ptr %78, align 8, !tbaa !21   ; 2 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !26
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !27
  %i.jl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.je, ptr noundef %i.ji, i64 noundef %i.jk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit102 unwind label %bb.bi

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit102: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100
  %i.jm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jl, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit104 unwind label %bb.bi ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit104: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit102
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %79)
          to label %bb.bk unwind label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.jn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #13
  br label %bb.mr

bb.bh:                                            ; preds = %.noexc92, %bb.bf, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit104
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bi:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit102, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit96, %_ZN4dmlc15LogMessageFatalC2EPKci.exit94
  %i.jp = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %79)
          to label %bb.bj unwind label %bb.nh

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.pn49 = phi { ptr, i32 } [ %i.jo, %bb.bh ], [ %i.jp, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #13
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %78) #13
  br label %bb.mr

bb.bk:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit104
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #13
  %.pr243 = load ptr, ptr %78, align 8, !tbaa !21 ; 4 uses
  %.not.i105 = icmp eq ptr %.pr243, null
  br i1 %.not.i105, label %.thread245, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jq = load ptr, ptr %.pr243, align 8, !tbaa !26 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.pr243, i64 16 ; 2 uses
  %i.js = icmp eq ptr %i.jq, %i.jr
  br i1 %i.js, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i106: ; preds = %bb.bl
  %i.jt = load i64, ptr %i.jr, align 8, !tbaa !28
  %i.ju = add i64 %i.jt, 1
  call void @_ZdlPvm(ptr noundef %i.jq, i64 noundef %i.ju) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i107

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i107: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i106
  call void @_ZdlPvm(ptr noundef nonnull %.pr243, i64 noundef 32) #30
  br label %.thread245

.thread245:                                       ; preds = %_ZN4dmlc11LogCheck_NEIjiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_NEIjiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i107, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #13
  %i.jv = load ptr, ptr %i.bb, align 8, !tbaa !63
  invoke void @_ZNK7xgboost17LearnerModelParam9BaseScoreENS_9DeviceOrdE(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::linalg::TensorView") align 8 %80, ptr noundef nonnull align 8 dereferenceable(40) %i.jv, i32 -65536)
          to label %bb.bm unwind label %bb.ms

bb.bm:                                            ; preds = %.thread245
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #13
  %i.jw = invoke { i64, ptr } @_ZNK7xgboost3gbm11GBTreeModel10TreeGroupsENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(192) %3, i32 -65536)
          to label %bb.bn unwind label %bb.mt     ; 2 uses

bb.bn:                                            ; preds = %bb.bm
  %i.jx = extractvalue { i64, ptr } %i.jw, 0
  store i64 %i.jx, ptr %81, align 8
  %i.jy = getelementptr inbounds nuw i8, ptr %81, i64 8
  %i.jz = extractvalue { i64, ptr } %i.jw, 1
  store ptr %i.jz, ptr %i.jy, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #13
  %i.ka = sext i32 %i.ba to i64                   ; 5 uses
  %i.kb = icmp slt i32 %i.ba, 0
  br i1 %i.kb, label %bb.bo, label %_ZNSt6vectorIN7xgboost7RegTree4FVecESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.bo:                                            ; preds = %bb.bn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #32
          to label %.noexc115 unwind label %bb.mu

.noexc115:                                        ; preds = %bb.bo
  unreachable

_ZNSt6vectorIN7xgboost7RegTree4FVecESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.bn
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %82, i8 0, i64 24, i1 false)
  %.not.i.i.i.i110 = icmp eq i32 %i.ba, 0         ; 6 uses
  br i1 %.not.i.i.i.i110, label %_ZNSt12_Vector_baseIN7xgboost7RegTree4FVecESaIS2_EEC2EmRKS3_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i111

_ZNSt12_Vector_baseIN7xgboost7RegTree4FVecESaIS2_EEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIN7xgboost7RegTree4FVecESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  store i64 0, ptr %82, align 8
  br label %bb.bp

.lr.ph.preheader.i.i.i.i.i111:                    ; preds = %_ZNSt6vectorIN7xgboost7RegTree4FVecESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.kc = shl nuw nsw i64 %i.ka, 5                ; 3 uses
  %i.kd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kc) #33
          to label %.noexc116 unwind label %bb.mu ; 4 uses

.noexc116:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i111
  store ptr %i.kd, ptr %82, align 8, !tbaa !101
  %i.ke = getelementptr inbounds nuw [32 x i8], ptr %i.kd, i64 %i.ka
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.kd, i8 0, i64 %i.kc, i1 false)
  %scevgep.i.i.i.i.i112 = getelementptr i8, ptr %i.kd, i64 %i.kc
  br label %bb.bp

bb.bp:                                            ; preds = %.noexc116, %_ZNSt12_Vector_baseIN7xgboost7RegTree4FVecESaIS2_EEC2EmRKS3_.exit.thread.i
  %.sink.i113 = phi ptr [ null, %_ZNSt12_Vector_baseIN7xgboost7RegTree4FVecESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.ke, %.noexc116 ]
  %.0.lcssa.i.i.i.i.i114 = phi ptr [ null, %_ZNSt12_Vector_baseIN7xgboost7RegTree4FVecESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %scevgep.i.i.i.i.i112, %.noexc116 ]
  %i.kf = getelementptr inbounds nuw i8, ptr %82, i64 8 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %82, i64 16 ; 2 uses
  store ptr %.sink.i113, ptr %i.kg, align 8, !tbaa !102
  store ptr %.0.lcssa.i.i.i.i.i114, ptr %i.kf, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #13
  %i.kh = load i64, ptr %i.o, align 8, !tbaa !29  ; 5 uses
  %i.ki = icmp ugt i64 %i.kh, 2305843009213693951
  br i1 %i.ki, label %bb.bq, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #32
          to label %.noexc118 unwind label %bb.mv

.noexc118:                                        ; preds = %bb.bq
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.bp
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %84, i8 0, i64 24, i1 false)
  %.not.i.i.i.i117 = icmp eq i64 %i.kh, 0
  br i1 %.not.i.i.i.i117, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i120, label %bb.br

bb.br:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.kj = shl nuw nsw i64 %i.kh, 2
  %i.kk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kj) #33
          to label %.noexc119 unwind label %bb.mv ; 4 uses

.noexc119:                                        ; preds = %bb.br
  store ptr %i.kk, ptr %84, align 8, !tbaa !94
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %i.kh
  %i.km = getelementptr inbounds nuw i8, ptr %84, i64 16
  store ptr %i.kl, ptr %i.km, align 8, !tbaa !104
  store float 0.000000e+00, ptr %i.kk, align 4, !tbaa !97
  %i.kn = getelementptr i8, ptr %i.kk, i64 4      ; 3 uses
  %i.ko = add nsw i64 %i.kh, -1                   ; 2 uses
  %i.kp = icmp eq i64 %i.ko, 0
  br i1 %i.kp, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i120, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc119
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ko, 2  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.kn, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !97
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kn, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i120

_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i120: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i, %.noexc119, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i = phi ptr [ %i.kq, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.kn, %.noexc119 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.kr = getelementptr inbounds nuw i8, ptr %84, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.kr, align 8, !tbaa !93
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %83, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i110, label %_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EEC2EmRKS3_.exit.i, label %_ZNSt15__new_allocatorISt6vectorIfSaIfEEE8allocateEmPKv.exit.i.i.i.i

_ZNSt15__new_allocatorISt6vectorIfSaIfEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i120
  %i.ks = mul nuw nsw i64 %i.ka, 24
  %i.kt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ks) #33
          to label %_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EEC2EmRKS3_.exit.i unwind label %bb.mw

_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EEC2EmRKS3_.exit.i: ; preds = %_ZNSt15__new_allocatorISt6vectorIfSaIfEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i120
  %i.ku = phi ptr [ null, %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i120 ], [ %i.kt, %_ZNSt15__new_allocatorISt6vectorIfSaIfEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.ku, ptr %83, align 8, !tbaa !107
  %i.kv = getelementptr inbounds nuw i8, ptr %83, i64 8 ; 3 uses
  store ptr %i.ku, ptr %i.kv, align 8, !tbaa !108
  %i.kw = getelementptr inbounds nuw [24 x i8], ptr %i.ku, i64 %i.ka
  %i.kx = getelementptr inbounds nuw i8, ptr %83, i64 16 ; 3 uses
  store ptr %i.kw, ptr %i.kx, align 8, !tbaa !109
  %i.ky = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPSt6vectorIfSaIfEEmS2_ET_S4_T0_RKT1_(ptr noundef %i.ku, i64 noundef %i.ka, ptr noundef nonnull align 8 dereferenceable(24) %84)
          to label %bb.bu unwind label %bb.bs

bb.bs:                                            ; preds = %_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EEC2EmRKS3_.exit.i
  %i.kz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.la = load ptr, ptr %83, align 8, !tbaa !107  ; 3 uses
  %.not.i.i.i122 = icmp eq ptr %i.la, null
  br i1 %.not.i.i.i122, label %.body125, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.lb = load ptr, ptr %i.kx, align 8, !tbaa !109
  %i.lc = ptrtoint ptr %i.lb to i64
  %i.ld = ptrtoint ptr %i.la to i64
  %i.le = sub i64 %i.lc, %i.ld
  call void @_ZdlPvm(ptr noundef nonnull %i.la, i64 noundef %i.le) #30
  br label %.body125

bb.bu:                                            ; preds = %_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EEC2EmRKS3_.exit.i
  store ptr %i.ky, ptr %i.kv, align 8, !tbaa !108
  %i.lf = load ptr, ptr %84, align 8, !tbaa !94   ; 3 uses
  %.not.i.i.i127 = icmp eq ptr %i.lf, null
  br i1 %.not.i.i.i127, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.lg = getelementptr inbounds nuw i8, ptr %84, i64 16
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !104
  %i.li = ptrtoint ptr %i.lh to i64
  %i.lj = ptrtoint ptr %i.lf to i64
  %i.lk = sub i64 %i.li, %i.lj
  call void @_ZdlPvm(ptr noundef nonnull %i.lf, i64 noundef %i.lk) #30
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #13
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload.i = load i32, ptr %i.ll, align 8 ; 2 uses
  %.sroa.0221.0.extract.trunc = trunc i32 %.sroa.0.0.copyload.i to i16
  %.off.i = add i16 %.sroa.0221.0.extract.trunc, -2
  %switch.i = icmp ult i16 %.off.i, 3
  %spec.select = select i1 %switch.i, i32 -65536, i32 %.sroa.0.0.copyload.i
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #13
  %i.lm = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  invoke void @_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::linalg::TensorView.63") align 8 %85, ptr noundef nonnull align 8 dereferenceable(25) %i.lm, i32 %spec.select)
          to label %bb.bx unwind label %bb.my

bb.bx:                                            ; preds = %bb.bw
  %i.ln = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !113
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 48
  %i.lq = load i32, ptr %i.lp, align 8, !tbaa !124
  %.not.i129 = icmp eq i32 %i.lq, 0
  br i1 %.not.i129, label %bb.hn, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #13
  %i.lr = load ptr, ptr %1, align 8, !tbaa !31, !noalias !736
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %i.lt = load ptr, ptr %i.ls, align 8, !noalias !736
  %i.lu = invoke noundef nonnull align 8 dereferenceable(248) ptr %i.lt(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc134 unwind label %bb.mz, !inline_history !676

.noexc134:                                        ; preds = %bb.by
  invoke void @_ZNK7xgboost8MetaInfo10CatsSharedEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.147") align 8 %66, ptr noundef nonnull align 8 dereferenceable(248) %i.lu)
          to label %.noexc135 unwind label %bb.mz

.noexc135:                                        ; preds = %.noexc134
  %i.lv = load ptr, ptr %66, align 8, !tbaa !126  ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %66, i64 8
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !127 ; 8 uses
  %.not.i.i.i.i130 = icmp eq ptr %i.lx, null
  br i1 %.not.i.i.i.i130, label %_ZNK7xgboost7DMatrix4CatsEv.exit.i, label %bb.bz

bb.bz:                                            ; preds = %.noexc135
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 8 ; 4 uses
  %i.lz = load atomic i64, ptr %i.ly acquire, align 8 ; 2 uses
  %i.ma = icmp eq i64 %i.lz, 4294967297
  %i.mb = trunc i64 %i.lz to i32                  ; 2 uses
  br i1 %i.ma, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  store i32 0, ptr %i.ly, align 8, !tbaa !129
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lx, i64 12
  store i32 0, ptr %i.mc, align 4, !tbaa !130
  %i.md = load ptr, ptr %i.lx, align 8, !tbaa !31
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  %i.mf = load ptr, ptr %i.me, align 8
  call void %i.mf(ptr noundef nonnull align 8 dereferenceable(16) %i.lx) #13, !inline_history !677
  %i.mg = load ptr, ptr %i.lx, align 8, !tbaa !31
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 24
  %i.mi = load ptr, ptr %i.mh, align 8
  call void %i.mi(ptr noundef nonnull align 8 dereferenceable(16) %i.lx) #13, !inline_history !677
  br label %_ZNK7xgboost7DMatrix4CatsEv.exit.i

bb.cb:                                            ; preds = %bb.bz
  %i.mj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i = icmp eq i8 %i.mj, 0
  br i1 %.not.i.i.i.i.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.mk = add nsw i32 %i.mb, -1
  store i32 %i.mk, ptr %i.ly, align 8, !tbaa !18
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.cd:                                            ; preds = %bb.cb
  %i.ml = atomicrmw volatile add ptr %i.ly, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.cd, %bb.cc
  %.0.i.i.i.i.i.i = phi i32 [ %i.mb, %bb.cc ], [ %i.ml, %bb.cd ]
  %i.mm = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.mm, label %bb.ce, label %_ZNK7xgboost7DMatrix4CatsEv.exit.i, !prof !131

bb.ce:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lx) #13
  br label %_ZNK7xgboost7DMatrix4CatsEv.exit.i

_ZNK7xgboost7DMatrix4CatsEv.exit.i:               ; preds = %bb.ce, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ca, %.noexc135
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #13
  %i.mn = getelementptr inbounds nuw i8, ptr %i.lv, i64 48
  %i.mo = load i32, ptr %i.mn, align 8, !tbaa !124
  %i.mp = icmp eq i32 %i.mo, 0
  %i.mq = getelementptr inbounds nuw i8, ptr %i.lv, i64 72
  %i.mr = load i8, ptr %i.mq, align 8, !range !132
  %i.ms = trunc nuw i8 %i.mr to i1
  %.not226.i = select i1 %i.mp, i1 true, i1 %i.ms
  br i1 %.not226.i, label %bb.hn, label %bb.cf

bb.cf:                                            ; preds = %_ZNK7xgboost7DMatrix4CatsEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #13
  %i.mt = load ptr, ptr %1, align 8, !tbaa !31, !noalias !737
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  %i.mv = load ptr, ptr %i.mu, align 8, !noalias !737
  %i.mw = invoke noundef nonnull align 8 dereferenceable(248) ptr %i.mv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc136 unwind label %bb.mz, !inline_history !676
end_hunk_3
