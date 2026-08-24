Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/testDebuggerVariablesManager?download=true
inline.NumInlined: 421
inline.NumDeleted: 258
begin_hunk_0
%"struct.std::_Vector_base<dap::Variable, std::allocator<dap::Variable>>::_Vector_impl" = type { %"struct.std::_Vector_base<dap::Variable, std::allocator<dap::Variable>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dap::Variable, std::allocator<dap::Variable>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.42" = type { %"struct.std::_Vector_base.43" }
%"struct.std::_Vector_base.43" = type { %"struct.std::_Vector_base<cmDebugger::cmDebuggerVariableEntry, std::allocator<cmDebugger::cmDebuggerVariableEntry>>::_Vector_impl" }
%"struct.std::_Vector_base<cmDebugger::cmDebuggerVariableEntry, std::allocator<cmDebugger::cmDebuggerVariableEntry>>::_Vector_impl" = type { %"struct.std::_Vector_base<cmDebugger::cmDebuggerVariableEntry, std::allocator<cmDebugger::cmDebuggerVariableEntry>>::_Vector_impl_data" }
%"struct.std::_Vector_base<cmDebugger::cmDebuggerVariableEntry, std::allocator<cmDebugger::cmDebuggerVariableEntry>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.cmDebugger::cmDebuggerVariableEntry" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }

$_ZNSt6vectorIN3dap8VariableESaIS1_EED2Ev = comdat any

$_ZNSt12__shared_ptrIN10cmDebugger19cmDebuggerVariablesELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt12__shared_ptrIN10cmDebugger26cmDebuggerVariablesManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN10cmDebugger26cmDebuggerVariablesManagerESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN10cmDebugger26cmDebuggerVariablesManagerESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN10cmDebugger26cmDebuggerVariablesManagerESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN10cmDebugger26cmDebuggerVariablesManagerESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$__clang_call_terminate = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN10cmDebugger19cmDebuggerVariablesESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN10cmDebugger19cmDebuggerVariablesESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN10cmDebugger19cmDebuggerVariablesESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN10cmDebugger19cmDebuggerVariablesESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZN10cmDebugger23cmDebuggerVariableEntryC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEl = comdat any

$_ZN10cmDebugger23cmDebuggerVariableEntryD2Ev = comdat any

$_ZN10cmDebugger23cmDebuggerVariableEntryC2ERKS0_ = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN3dap8VariableD2Ev = comdat any

$_ZNSt17_Function_handlerIFbvEPS0_E9_M_invokeERKSt9_Any_data = comdat any

$_ZNSt17_Function_handlerIFbvEPS0_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceIN10cmDebugger26cmDebuggerVariablesManagerESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt23_Sp_counted_ptr_inplaceIN10cmDebugger26cmDebuggerVariablesManagerESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt23_Sp_counted_ptr_inplaceIN10cmDebugger26cmDebuggerVariablesManagerESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt19_Sp_make_shared_tag = comdat any

$_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceIN10cmDebugger19cmDebuggerVariablesESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt23_Sp_counted_ptr_inplaceIN10cmDebugger19cmDebuggerVariablesESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt23_Sp_counted_ptr_inplaceIN10cmDebugger19cmDebuggerVariablesESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTIPFbvE = comdat any

$_ZTSPFbvE = comdat any

$_ZTIFbvE = comdat any

$_ZTSFbvE = comdat any

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [8 x i8] c"Passed\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Local\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"ASSERT_TRUE(variables.size() == 1) failed on line \00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"ASSERT_TRUE(variables.size() == 0) failed on line \00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN10cmDebugger26cmDebuggerVariablesManagerESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN10cmDebugger26cmDebuggerVariablesManagerESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10cmDebugger26cmDebuggerVariablesManagerESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10cmDebugger26cmDebuggerVariablesManagerESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10cmDebugger26cmDebuggerVariablesManagerESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10cmDebugger26cmDebuggerVariablesManagerESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN10cmDebugger26cmDebuggerVariablesManagerESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN10cmDebugger26cmDebuggerVariablesManagerESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSSt23_Sp_counted_ptr_inplaceIN10cmDebugger26cmDebuggerVariablesManagerESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant [106 x i8] c"St23_Sp_counted_ptr_inplaceIN10cmDebugger26cmDebuggerVariablesManagerESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr dso_local constant [24 x i8] c"St19_Sp_make_shared_tag\00", comdat, align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr dso_local constant [16 x i8] zeroinitializer, comdat, align 8
@_ZTVSt23_Sp_counted_ptr_inplaceIN10cmDebugger19cmDebuggerVariablesESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN10cmDebugger19cmDebuggerVariablesESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10cmDebugger19cmDebuggerVariablesESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10cmDebugger19cmDebuggerVariablesESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10cmDebugger19cmDebuggerVariablesESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN10cmDebugger19cmDebuggerVariablesESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN10cmDebugger19cmDebuggerVariablesESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN10cmDebugger19cmDebuggerVariablesESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN10cmDebugger19cmDebuggerVariablesESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr dso_local constant [99 x i8] c"St23_Sp_counted_ptr_inplaceIN10cmDebugger19cmDebuggerVariablesESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"CurrentLine\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@"_ZTIZL25testVariablesRegistrationvE3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZL25testVariablesRegistrationvE3$_0" }, align 8
@"_ZTSZL25testVariablesRegistrationvE3$_0" = internal constant [36 x i8] c"ZL25testVariablesRegistrationvE3$_0\00", align 1
@_ZTIPFbvE = linkonce_odr dso_local constant { ptr, ptr, i32, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv119__pointer_type_infoE, i64 2), ptr @_ZTSPFbvE, i32 0, ptr @_ZTIFbvE }, comdat, align 8
@_ZTVN10__cxxabiv119__pointer_type_infoE = external global [0 x ptr]
@_ZTSPFbvE = linkonce_odr dso_local constant [6 x i8] c"PFbvE\00", comdat, align 1
@_ZTIFbvE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__function_type_infoE, i64 2), ptr @_ZTSFbvE }, comdat, align 8
@_ZTVN10__cxxabiv120__function_type_infoE = external global [0 x ptr]
@_ZTSFbvE = linkonce_odr dso_local constant [5 x i8] c"FbvE\00", comdat, align 1

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_Z28testDebuggerVariablesManageriPPc(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
_ZNKSt8functionIFbvEEclEv.exit.i:
  %2 = alloca [1 x %"class.std::function"], align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.c, align 8
  store ptr @_ZL25testVariablesRegistrationv, ptr %2, align 8, !tbaa !9
  store ptr @_ZNSt17_Function_handlerIFbvEPS0_E9_M_invokeERKSt9_Any_data, ptr %i.b, align 8, !tbaa !11
  store ptr @_ZNSt17_Function_handlerIFbvEPS0_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation, ptr %i.a, align 8, !tbaa !14
  %i.d = invoke noundef zeroext i1 @_ZL25testVariablesRegistrationv()
          to label %.noexc2 unwind label %bb.c, !inline_history !15

.noexc2:                                          ; preds = %_ZNKSt8functionIFbvEEclEv.exit.i
  br i1 %i.d, label %bb.a, label %_ZN12_GLOBAL__N_18runTestsESt16initializer_listISt8functionIFbvEEEb.exit.thread

bb.a:                                             ; preds = %.noexc2
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 7)
          to label %_ZN12_GLOBAL__N_18runTestsESt16initializer_listISt8functionIFbvEEEb.exit unwind label %bb.c ; 0 uses

_ZN12_GLOBAL__N_18runTestsESt16initializer_listISt8functionIFbvEEEb.exit: ; preds = %bb.a
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %_ZN12_GLOBAL__N_18runTestsESt16initializer_listISt8functionIFbvEEEb.exit.thread

_ZN12_GLOBAL__N_18runTestsESt16initializer_listISt8functionIFbvEEEb.exit.thread: ; preds = %.noexc2, %_ZN12_GLOBAL__N_18runTestsESt16initializer_listISt8functionIFbvEEEb.exit
  %.318.i10 = phi i32 [ 0, %_ZN12_GLOBAL__N_18runTestsESt16initializer_listISt8functionIFbvEEEb.exit ], [ 1, %.noexc2 ]
  %i.f = phi ptr [ %.pre, %_ZN12_GLOBAL__N_18runTestsESt16initializer_listISt8functionIFbvEEEb.exit ], [ @_ZNSt17_Function_handlerIFbvEPS0_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation, %.noexc2 ]
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.b ; 0 uses

bb.b:                                             ; preds = %_ZN12_GLOBAL__N_18runTestsESt16initializer_listISt8functionIFbvEEEb.exit.thread
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #18
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN12_GLOBAL__N_18runTestsESt16initializer_listISt8functionIFbvEEEb.exit, %_ZN12_GLOBAL__N_18runTestsESt16initializer_listISt8functionIFbvEEEb.exit.thread
  %.318.i11 = phi i32 [ 0, %_ZN12_GLOBAL__N_18runTestsESt16initializer_listISt8functionIFbvEEEb.exit ], [ %.318.i10, %_ZN12_GLOBAL__N_18runTestsESt16initializer_listISt8functionIFbvEEEb.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret i32 %.318.i11

bb.c:                                             ; preds = %_ZNKSt8functionIFbvEEclEv.exit.i, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %.not.i4 = icmp eq ptr %i.k, null
  br i1 %.not.i4, label %_ZNSt14_Function_baseD2Ev.exit5, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit5 unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #18
  unreachable

_ZNSt14_Function_baseD2Ev.exit5:                  ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %i.j
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZL25testVariablesRegistrationv() #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %0 = alloca %"class.std::shared_ptr", align 8   ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.std::function.7", align 8   ; 11 uses
  %3 = alloca %"class.std::shared_ptr", align 8   ; 8 uses
  %4 = alloca %"class.std::shared_ptr.0", align 8 ; 8 uses
  %5 = alloca %"struct.dap::VariablesRequest", align 8 ; 15 uses
  %6 = alloca %"class.std::vector.12", align 16   ; 14 uses
  %7 = alloca %"class.std::vector.12", align 16   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #19, !noalias !16 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store i32 1, ptr %i.e, align 8, !tbaa !19, !noalias !16
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 1, ptr %i.f, align 4, !tbaa !21, !noalias !16
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN10cmDebugger26cmDebuggerVariablesManagerESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !22, !noalias !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  store i64 0, ptr %i.h, align 8, !noalias !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store ptr %i.i, ptr %i.g, align 8, !tbaa !24, !noalias !16
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 1, ptr %i.j, align 8, !tbaa !33, !noalias !16
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false), !noalias !16
  store float 1.000000e+00, ptr %i.h, align 8, !tbaa !34, !noalias !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false), !noalias !16
  store ptr %i.d, ptr %i.c, align 8, !tbaa !35, !alias.scope !16
  store ptr %i.g, ptr %3, align 8, !tbaa !38, !alias.scope !16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  store ptr null, ptr %4, align 8, !tbaa !43, !alias.scope !40
  %i.m = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #19
          to label %bb.b unwind label %bb.w       ; 12 uses

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 5 uses
  store i32 1, ptr %i.n, align 8, !tbaa !19, !noalias !40
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 12 ; 2 uses
  store i32 1, ptr %i.o, align 4, !tbaa !21, !noalias !40
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN10cmDebugger19cmDebuggerVariablesESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.m, align 8, !tbaa !22, !noalias !40
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0), !noalias !40
  call void @llvm.lifetime.start.p0(ptr nonnull %1), !noalias !40
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !40
  store ptr %i.g, ptr %0, align 8, !tbaa !46, !noalias !40
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.d, ptr %i.q, align 8, !tbaa !35, !noalias !40
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !48, !noalias !40
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 2, ptr %i.e, align 8, !tbaa !49, !noalias !40
  br label %_ZNSt10shared_ptrIN10cmDebugger26cmDebuggerVariablesManagerEEC2ERKS2_.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.s = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4, !noalias !40 ; 0 uses
  br label %_ZNSt10shared_ptrIN10cmDebugger26cmDebuggerVariablesManagerEEC2ERKS2_.exit.i.i.i.i.i.i

_ZNSt10shared_ptrIN10cmDebugger26cmDebuggerVariablesManagerEEC2ERKS2_.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.t, ptr %1, align 8, !tbaa !50, !noalias !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.t, ptr noundef nonnull align 1 dereferenceable(5) @.str.1, i64 5, i1 false), !noalias !40
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 5, ptr %i.u, align 8, !tbaa !53, !noalias !40
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 21
  store i8 0, ptr %i.v, align 1, !tbaa !48, !noalias !40
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.y, align 8, !noalias !40
  store i64 5, ptr %2, align 8, !tbaa !55, !noalias !40
  store ptr @"_ZNSt17_Function_handlerIFSt6vectorIN10cmDebugger23cmDebuggerVariableEntryESaIS2_EEvEZL25testVariablesRegistrationvE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.x, align 8, !tbaa !56, !noalias !40
  store ptr @"_ZNSt17_Function_handlerIFSt6vectorIN10cmDebugger23cmDebuggerVariableEntryESaIS2_EEvEZL25testVariablesRegistrationvE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation", ptr %i.w, align 8, !tbaa !14, !noalias !40
  invoke void @_ZN10cmDebugger19cmDebuggerVariablesC1ESt10shared_ptrINS_26cmDebuggerVariablesManagerEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbSt8functionIFSt6vectorINS_23cmDebuggerVariableEntryESaISC_EEvEE(ptr noundef nonnull align 8 dereferenceable(160) %i.p, ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1, i1 noundef zeroext true, ptr noundef nonnull align 8 %2)
          to label %bb.e unwind label %bb.n, !noalias !40

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN10cmDebugger26cmDebuggerVariablesManagerEEC2ERKS2_.exit.i.i.i.i.i.i
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !14, !noalias !40 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = invoke noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i.i unwind label %bb.g, !noalias !40 ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #18, !noalias !40
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i.i:       ; preds = %bb.f, %bb.e
  %i.ad = load ptr, ptr %1, align 8, !tbaa !58, !noalias !40 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.t
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i.i
  %i.af = load i64, ptr %i.t, align 8, !tbaa !48, !noalias !40
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #20, !noalias !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ah = load ptr, ptr %i.q, align 8, !tbaa !35, !noalias !40 ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.q, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 4 uses
  %i.aj = load atomic i64, ptr %i.ai acquire, align 8, !noalias !40 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 4294967297
  %i.al = trunc i64 %i.aj to i32                  ; 2 uses
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ai, align 8, !tbaa !19, !noalias !40
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 0, ptr %i.am, align 4, !tbaa !21, !noalias !40
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !22, !noalias !40
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !40
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #17, !noalias !40, !inline_history !59
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !22, !noalias !40
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !40
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #17, !noalias !40, !inline_history !59
  br label %bb.q

bb.j:                                             ; preds = %bb.h
  %i.at = load i8, ptr @__libc_single_threaded, align 1, !tbaa !48, !noalias !40
  %.not.i.i.i8.i.i.i.i.i.i = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i8.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = add nsw i32 %i.al, -1
  store i32 %i.au, ptr %i.ai, align 8, !tbaa !49, !noalias !40
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.av = atomicrmw volatile add ptr %i.ai, i32 -1 acq_rel, align 4, !noalias !40
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.al, %bb.k ], [ %i.av, %bb.l ]
  %i.aw = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.aw, label %bb.m, label %bb.q, !prof !60

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #17, !noalias !40
  br label %bb.q

bb.n:                                             ; preds = %_ZNSt10shared_ptrIN10cmDebugger26cmDebuggerVariablesManagerEEC2ERKS2_.exit.i.i.i.i.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %i.ay = load ptr, ptr %i.w, align 8, !tbaa !14, !noalias !40 ; 2 uses
  %.not.i9.i.i.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i9.i.i.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit10.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = invoke noundef zeroext i1 %i.ay(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit10.i.i.i.i.i.i unwind label %bb.p, !noalias !40 ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #18, !noalias !40
  unreachable

_ZNSt14_Function_baseD2Ev.exit10.i.i.i.i.i.i:     ; preds = %bb.o, %bb.n
  %i.bc = load ptr, ptr %1, align 8, !tbaa !58, !noalias !40 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.t
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i.i.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit10.i.i.i.i.i.i
  %i.be = load i64, ptr %i.t, align 8, !tbaa !48, !noalias !40
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #20, !noalias !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i.i.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit10.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i.i.i.i.i
  call void @_ZNSt12__shared_ptrIN10cmDebugger26cmDebuggerVariablesManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #17, !noalias !40
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 176) #20, !noalias !40
  br label %.body

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0), !noalias !40
  call void @llvm.lifetime.end.p0(ptr nonnull %1), !noalias !40
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !40
  store ptr %i.m, ptr %i.bg, align 8, !tbaa !35, !alias.scope !40
  store ptr %i.p, ptr %4, align 8, !tbaa !61, !alias.scope !40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store i64 0, ptr %5, align 8, !tbaa !62
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 0, ptr %i.bh, align 8, !tbaa !64
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 6 uses
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !50
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 0, ptr %i.bk, align 8, !tbaa !53
  store i8 0, ptr %i.bj, align 8, !tbaa !48
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i8 0, ptr %i.bl, align 8, !tbaa !67
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.bm, i8 0, i64 3, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 0, ptr %i.bn, align 8, !tbaa !62
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i8 0, ptr %i.bo, align 8, !tbaa !64
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.bq = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !69
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.bs = load ptr, ptr %3, align 8, !tbaa !46
  invoke void @_ZN10cmDebugger26cmDebuggerVariablesManager22HandleVariablesRequestERKN3dap16VariablesRequestE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.12") align 8 %6, ptr noundef nonnull align 8 dereferenceable(56) %i.bs, ptr noundef nonnull align 8 dereferenceable(88) %5)
          to label %bb.r unwind label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !77
  %i.bv = load ptr, ptr %6, align 16, !tbaa !80
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = icmp eq i64 %i.by, 352
  br i1 %i.bz, label %bb.z, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ca = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.y ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.s
  %i.cb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 35)
          to label %bb.t unwind label %bb.y       ; 4 uses

bb.t:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 10, ptr %i.b, align 1, !tbaa !48
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !22
  %i.cd = getelementptr i8, ptr %i.cc, i64 -24
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds i8, ptr %i.cb, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !81
  %.not.i = icmp eq i64 %i.ch, 0
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef nonnull %i.b, i64 noundef 1)
end_hunk_0
