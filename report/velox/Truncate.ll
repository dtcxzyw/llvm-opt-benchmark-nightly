inline.NumInlined: 17609
inline.NumDeleted: 4561
loop-unroll.NumCompletelyUnrolled: 169
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 180
begin_hunk_0_@__cxa_end_catch
declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !76
  %i.b = load ptr, ptr %1, align 8, !tbaa !7      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16   ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge.i

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %.noexc, label %bb.c

.noexc:                                           ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #41
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.noexc6, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !39

.noexc6:                                          ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #41
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.c
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #39 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !7
  store i64 %i.d, ptr %i.a, align 8, !tbaa !28
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.k = load i8, ptr %i.b, align 1, !tbaa !28
  store i8 %i.k, ptr %i.j, align 1, !tbaa !28
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.l, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1, !tbaa !28
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox4exec17SignatureVariableD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !28
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !28
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN8facebook5velox4exec22mutableSimpleFunctionsEv() local_unnamed_addr #12

declare noundef zeroext i1 @_ZN8facebook5velox4exec22SimpleFunctionRegistry24registerFunctionInternalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrIKNS0_4core23ISimpleFunctionMetadataEERKSt8functionIFSt10unique_ptrINS1_28SimpleFunctionAdapterFactoryESt14default_deleteISK_EEvEEb(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #12

; Function Attrs: mustprogress noreturn uwtable
define internal void @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEEEaNS0_15ConstantCheckerIJiaEEEJiaEE7getNameB5cxx11Ev(ptr dead_on_unwind noalias nofree readnone sret(%"class.std::__cxx11::basic_string") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #36 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.33)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #36
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !35
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #36, !inline_history !78
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #36, !inline_history !78
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !39

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #36
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #14

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZSt11make_sharedIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_4exec10VectorExecEEEaNS1_15ConstantCheckerIJiaEEEJiaEEEJRbRKSt6vectorINS8_17SignatureVariableESaISH_EEEESt10shared_ptrIT_EDpOT0_(i8 %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.facebook::velox::exec::FunctionSignatureBuilder", align 8 ; 16 uses
  %2 = alloca %"class.std::shared_ptr.15", align 16 ; 7 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"struct.facebook::velox::core::TypeAnalysis", align 1 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"struct.facebook::velox::core::TypeAnalysis.45", align 1 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::vector", align 16     ; 13 uses
  %11 = alloca %"struct.facebook::velox::core::TypeAnalysisResults", align 8 ; 31 uses
  %12 = alloca %"struct.facebook::velox::core::TypeAnalysis", align 1 ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::shared_ptr.18", align 16 ; 7 uses
  %15 = alloca %"class.std::vector.21", align 8   ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"struct.facebook::velox::core::SimpleFunctionMetadata<facebook::velox::functions::iceberg::(anonymous namespace)::TruncateFunction<facebook::velox::exec::VectorExec>, signed char, facebook::velox::ConstantChecker<int, signed char>, int, signed char>::SignatureTypesAnalysisResults", align 16 ; 31 uses
  store ptr null, ptr @_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEEaNS0_15ConstantCheckerIJiaEEEJiaEEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISL_EEE8instance, align 16, !tbaa !79
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #39, !noalias !82 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !35
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_4exec10VectorExecEEEaNS1_15ConstantCheckerIJiaEEEJiaEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %18 = and i8 %.0.val, 1
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEEEaNS0_15ConstantCheckerIJiaEEEJiaEEE, i64 16), ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %18, ptr %i.e, align 8, !tbaa !85
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36, !noalias !100
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !100
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36, !noalias !100
  store i8 0, ptr %11, align 8, !tbaa !103, !noalias !100
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 1
  store i8 0, ptr %i.i, align 1, !tbaa !105, !noalias !100
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 2
  store i8 0, ptr %i.j, align 2, !tbaa !106, !noalias !100
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !107, !noalias !100
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.l)
          to label %bb.b unwind label %bb.at, !noalias !100

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 392 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !noalias !100
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 416 ; 10 uses
  store i32 0, ptr %i.n, align 8, !tbaa !108, !noalias !100
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 424 ; 5 uses
  store ptr null, ptr %i.o, align 8, !tbaa !113, !noalias !100
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 432 ; 5 uses
  store ptr %i.n, ptr %i.p, align 8, !tbaa !114, !noalias !100
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 440 ; 4 uses
  store ptr %i.n, ptr %i.q, align 8, !tbaa !115, !noalias !100
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 448 ; 6 uses
  store i64 0, ptr %i.r, align 8, !tbaa !116, !noalias !100
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36, !noalias !100
  invoke void @_ZN8facebook5velox4core12TypeAnalysisIaE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %bb.c unwind label %bb.au

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36, !noalias !100
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36, !noalias !100
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 12 uses
  store ptr %i.s, ptr %13, align 8, !tbaa !76, !alias.scope !126, !noalias !100
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i64 0, ptr %i.t, align 8, !tbaa !16, !alias.scope !126, !noalias !100
  store i8 0, ptr %i.s, align 8, !tbaa !28, !alias.scope !126, !noalias !100
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !127, !noalias !131 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !noalias !131 ; 2 uses
  %i.y = icmp ugt ptr %i.v, %i.x
  %.08.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.y, ptr %i.v, ptr %i.x ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !132, !noalias !131 ; 2 uses
  %i.ab = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef %i.aa, i64 noundef %i.ad)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %13, align 8, !tbaa !7, !alias.scope !126, !noalias !100 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.s
  br i1 %i.ah, label %.body.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.i.sink.split

bb.f:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e

_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #36, !noalias !100
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 400 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24, !noalias !100 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.m, align 8, !tbaa !27, !noalias !100
  store <2 x ptr> %i.am, ptr %14, align 16, !tbaa !27, !noalias !100
  %.not.i.i.i25.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i25.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !100
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !3
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ar = atomicrmw volatile add ptr %i.an, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h, %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #36, !noalias !100
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false), !noalias !100
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36, !noalias !100
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.as, ptr %7, align 8, !tbaa !76, !noalias !100
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !16, !noalias !100
  store i8 0, ptr %i.as, align 8, !tbaa !28, !noalias !100
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i unwind label %bb.j

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.av = load ptr, ptr %7, align 8, !tbaa !7, !noalias !100 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.as
  br i1 %i.aw, label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i
  %i.ax = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !100
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #40
  br label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %7, align 8, !tbaa !7, !noalias !100 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.as
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !100
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36, !noalias !100
  br label %.body29.i.i.i.i.i.i.i

_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36, !noalias !100
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36, !noalias !100
  invoke void @_ZN8facebook5velox4core12TypeAnalysisIiE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.av

.noexc.i.i.i.i.i.i.i:                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36, !noalias !100
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36, !noalias !100
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  call void @llvm.experimental.noalias.scope.decl(metadata !136)
  call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  store ptr %i.be, ptr %9, align 8, !tbaa !76, !alias.scope !142, !noalias !100
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 0, ptr %i.bf, align 8, !tbaa !16, !alias.scope !142, !noalias !100
  store i8 0, ptr %i.be, align 8, !tbaa !28, !alias.scope !142, !noalias !100
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !127, !noalias !143 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  %i.bh = load ptr, ptr %i.w, align 8, !noalias !143 ; 2 uses
  %i.bi = icmp ugt ptr %i.bg, %i.bh
  %.08.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bi, ptr %i.bg, ptr %i.bh ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i26.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i26.i.i.i.i.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !132, !noalias !143 ; 2 uses
  %i.bl = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.bk, i64 noundef %i.bn)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %9, align 8, !tbaa !7, !alias.scope !142, !noalias !100 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.be
  br i1 %i.br, label %.body29.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.bs = load i64, ptr %i.be, align 8, !tbaa !28, !alias.scope !142, !noalias !100
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #40
  br label %.body29.i.i.i.i.i.i.i

bb.m:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.bu)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox10FlatVectorINS0_10StringViewEE16setStringBuffersESt6vectorIN5boost13intrusive_ptrINS0_6BufferEEESaIS8_EE:bb.a
._crit_edge:                                      ; preds = %.lr.ph, %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE7reserveEm.exit
  ret void

.lr.ph:                                           ; preds = %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE7reserveEm.exit, %.lr.ph
  %.sroa.05.08 = phi ptr [ %i.dn, %.lr.ph ], [ %i.de, %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE7reserveEm.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.dh = load ptr, ptr %.sroa.05.08, align 8, !tbaa !441 ; 2 uses
  store ptr %i.dh, ptr %i.a, align 8, !tbaa !1300
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36, !noalias !1425
  %i.di = ptrtoint ptr %i.dh to i64               ; 2 uses
  %i.dj = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.di) ; 2 uses
  %i.dk = lshr i64 %i.dj, 24
  %i.dl = or i64 %i.dk, 128
  %i.dm = add i64 %i.dj, %i.di
  call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE19tryEmplaceValueImplIS8_JS8_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEEbESC_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.749") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 %i.dm, i64 %i.dl, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !1425
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36, !noalias !1425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.05.08, i64 8 ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.df
  br i1 %i.do, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE18clearStringBuffersEv(ptr noundef nonnull align 8 dereferenceable(272) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1273 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1274 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.s, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !441 ; 7 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %.sink.split.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %bb.b
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.c, !inline_history !684

.noexc.i.i.i.i.i.i.i:                             ; preds = %.sink.split.i.i.i.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !685
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !36
  %..i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i64 8, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %..i.i.i.i.i.i.i.i
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i.i unwind label %bb.c, !inline_history !684

bb.c:                                             ; preds = %.noexc.i.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #42
  unreachable

_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i, %bb.b, %.lr.ph.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1275

_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i.i
  store ptr %i.b, ptr %i.c, align 8, !tbaa !1274
  br label %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE5clearEv.exit

_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1278 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 15
  %i.w = load i8, ptr %i.v, align 1, !tbaa !1279
  %i.x = icmp eq i8 %i.w, -1
  br i1 %i.x, label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5clearEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE5clearEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !1277 ; 4 uses
  %i.aa = and i64 %i.z, 252
  %.not.i.i.i = icmp eq i64 %i.aa, 0              ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 14
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !28
  %i.ad = and i8 %i.ac, 15
  %i.ae = icmp ult i64 %i.z, 256
  br i1 %i.ae, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.e
  %.pre.i.i.i = and i64 %i.z, 255
  br label %bb.g

bb.f:                                             ; preds = %.preheader.i.i.i
  %i.af = load ptr, ptr %i.t, align 8, !tbaa !1278 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 14
  store i8 %i.ad, ptr %i.ag, align 2, !tbaa !1285
  br label %bb.g

.preheader.i.i.i:                                 ; preds = %bb.e, %.preheader.i.i.i
  %.017.i.i.i = phi i64 [ %i.aj, %.preheader.i.i.i ], [ 0, %bb.e ] ; 2 uses
  %i.ah = load ptr, ptr %i.t, align 8, !tbaa !1278
  %i.ai = getelementptr inbounds nuw [128 x i8], ptr %i.ah, i64 %.017.i.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.ai, i8 0, i64 16, i1 false)
  %i.aj = add nuw i64 %.017.i.i.i, 1              ; 2 uses
  %i.ak = load i64, ptr %i.y, align 8, !tbaa !1277
  %i.al = and i64 %i.ak, 255                      ; 2 uses
  %.0.highbits.i.i.i = lshr i64 %i.aj, %i.al
  %i.am = icmp eq i64 %.0.highbits.i.i.i, 0
  br i1 %i.am, label %.preheader.i.i.i, label %bb.f, !llvm.loop !1423

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.al, %bb.f ] ; 2 uses
  %i.an = phi ptr [ %i.u, %._crit_edge.i.i.i ], [ %i.af, %bb.f ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 0, ptr %i.ao, align 8, !tbaa !161
  store i64 %.pre-phi.i.i.i, ptr %i.y, align 8, !tbaa !1277
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.ap = phi i64 [ %.pre-phi.i.i.i, %bb.g ], [ %i.z, %bb.d ] ; 2 uses
  %i.aq = phi ptr [ %i.an, %bb.g ], [ %i.u, %bb.d ] ; 2 uses
  br i1 %.not.i.i.i, label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5clearEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 14
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !28
  %i.at = icmp eq i64 %i.ap, 0
  %i.au = shl i8 %i.as, 3
  %i.av = and i8 %i.au, 120
  %narrow.i.i.i = add nuw i8 %i.av, 16
  %i.aw = zext i8 %narrow.i.i.i to i64
  %i.ax = shl i64 128, %i.ap
  %.0.i.i.i.i = select i1 %i.at, i64 %i.aw, i64 %i.ax
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.t, align 8, !tbaa !1278
  store i64 0, ptr %i.y, align 8, !tbaa !1277
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %.0.i.i.i.i) #36
  br label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5clearEv.exit

_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5clearEv.exit: ; preds = %_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE5clearEv.exit, %bb.h, %bb.i
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define internal void @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEEEsNS0_15ConstantCheckerIJisEEEJisEE7getNameB5cxx11Ev(ptr dead_on_unwind noalias nofree readnone sret(%"class.std::__cxx11::basic_string") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #36 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.33)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #36
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZSt11make_sharedIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_4exec10VectorExecEEEsNS1_15ConstantCheckerIJisEEEJisEEEJRbRKSt6vectorINS8_17SignatureVariableESaISH_EEEESt10shared_ptrIT_EDpOT0_(i8 %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.facebook::velox::exec::FunctionSignatureBuilder", align 8 ; 16 uses
  %2 = alloca %"class.std::shared_ptr.15", align 16 ; 7 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"struct.facebook::velox::core::TypeAnalysis.932", align 1 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"struct.facebook::velox::core::TypeAnalysis.45", align 1 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::vector", align 16     ; 13 uses
  %11 = alloca %"struct.facebook::velox::core::TypeAnalysisResults", align 8 ; 31 uses
  %12 = alloca %"struct.facebook::velox::core::TypeAnalysis.932", align 1 ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::shared_ptr.18", align 16 ; 7 uses
  %15 = alloca %"class.std::vector.21", align 8   ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"struct.facebook::velox::core::SimpleFunctionMetadata<facebook::velox::functions::iceberg::(anonymous namespace)::TruncateFunction<facebook::velox::exec::VectorExec>, short, facebook::velox::ConstantChecker<int, short>, int, short>::SignatureTypesAnalysisResults", align 16 ; 31 uses
  store ptr null, ptr @_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEEsNS0_15ConstantCheckerIJisEEEJisEEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISL_EEE8instance, align 16, !tbaa !1430
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #39, !noalias !1433 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !35
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_4exec10VectorExecEEEsNS1_15ConstantCheckerIJisEEEJisEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %18 = and i8 %.0.val, 1
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEEEsNS0_15ConstantCheckerIJisEEEJisEEE, i64 16), ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %18, ptr %i.e, align 8, !tbaa !1436
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1438)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36, !noalias !1438
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !1438
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36, !noalias !1438
  store i8 0, ptr %11, align 8, !tbaa !103, !noalias !1438
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 1
  store i8 0, ptr %i.i, align 1, !tbaa !105, !noalias !1438
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 2
  store i8 0, ptr %i.j, align 2, !tbaa !106, !noalias !1438
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !107, !noalias !1438
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.l)
          to label %bb.b unwind label %bb.at, !noalias !1438

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 392 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !noalias !1438
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 416 ; 10 uses
  store i32 0, ptr %i.n, align 8, !tbaa !108, !noalias !1438
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 424 ; 5 uses
  store ptr null, ptr %i.o, align 8, !tbaa !113, !noalias !1438
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 432 ; 5 uses
  store ptr %i.n, ptr %i.p, align 8, !tbaa !114, !noalias !1438
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 440 ; 4 uses
  store ptr %i.n, ptr %i.q, align 8, !tbaa !115, !noalias !1438
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 448 ; 6 uses
  store i64 0, ptr %i.r, align 8, !tbaa !116, !noalias !1438
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36, !noalias !1438
  invoke void @_ZN8facebook5velox4core12TypeAnalysisIsE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %bb.c unwind label %bb.au

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36, !noalias !1438
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36, !noalias !1438
  call void @llvm.experimental.noalias.scope.decl(metadata !1441)
  call void @llvm.experimental.noalias.scope.decl(metadata !1444)
  call void @llvm.experimental.noalias.scope.decl(metadata !1447)
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 12 uses
  store ptr %i.s, ptr %13, align 8, !tbaa !76, !alias.scope !1450, !noalias !1438
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i64 0, ptr %i.t, align 8, !tbaa !16, !alias.scope !1450, !noalias !1438
  store i8 0, ptr %i.s, align 8, !tbaa !28, !alias.scope !1450, !noalias !1438
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !127, !noalias !1451 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !noalias !1451 ; 2 uses
  %i.y = icmp ugt ptr %i.v, %i.x
  %.08.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.y, ptr %i.v, ptr %i.x ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !132, !noalias !1451 ; 2 uses
  %i.ab = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef %i.aa, i64 noundef %i.ad)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %13, align 8, !tbaa !7, !alias.scope !1450, !noalias !1438 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.s
  br i1 %i.ah, label %.body.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.i.sink.split

bb.f:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e

_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #36, !noalias !1438
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 400 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24, !noalias !1438 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.m, align 8, !tbaa !27, !noalias !1438
  store <2 x ptr> %i.am, ptr %14, align 16, !tbaa !27, !noalias !1438
  %.not.i.i.i25.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i25.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !1438
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !3
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ar = atomicrmw volatile add ptr %i.an, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h, %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #36, !noalias !1438
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false), !noalias !1438
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36, !noalias !1438
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.as, ptr %7, align 8, !tbaa !76, !noalias !1438
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !16, !noalias !1438
  store i8 0, ptr %i.as, align 8, !tbaa !28, !noalias !1438
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i unwind label %bb.j

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.av = load ptr, ptr %7, align 8, !tbaa !7, !noalias !1438 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.as
  br i1 %i.aw, label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i
  %i.ax = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !1438
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #40
  br label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %7, align 8, !tbaa !7, !noalias !1438 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.as
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !1438
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36, !noalias !1438
  br label %.body29.i.i.i.i.i.i.i

_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36, !noalias !1438
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36, !noalias !1438
  invoke void @_ZN8facebook5velox4core12TypeAnalysisIiE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.av

.noexc.i.i.i.i.i.i.i:                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36, !noalias !1438
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36, !noalias !1438
  call void @llvm.experimental.noalias.scope.decl(metadata !1452)
  call void @llvm.experimental.noalias.scope.decl(metadata !1455)
  call void @llvm.experimental.noalias.scope.decl(metadata !1458)
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  store ptr %i.be, ptr %9, align 8, !tbaa !76, !alias.scope !1461, !noalias !1438
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 0, ptr %i.bf, align 8, !tbaa !16, !alias.scope !1461, !noalias !1438
  store i8 0, ptr %i.be, align 8, !tbaa !28, !alias.scope !1461, !noalias !1438
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !127, !noalias !1462 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  %i.bh = load ptr, ptr %i.w, align 8, !noalias !1462 ; 2 uses
  %i.bi = icmp ugt ptr %i.bg, %i.bh
  %.08.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bi, ptr %i.bg, ptr %i.bh ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i26.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i26.i.i.i.i.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !132, !noalias !1462 ; 2 uses
  %i.bl = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.bk, i64 noundef %i.bn)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %9, align 8, !tbaa !7, !alias.scope !1461, !noalias !1438 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.be
  br i1 %i.br, label %.body29.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.bs = load i64, ptr %i.be, align 8, !tbaa !28, !alias.scope !1461, !noalias !1438
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #40
  br label %.body29.i.i.i.i.i.i.i

bb.m:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.bu)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l
end_hunk_1
begin_hunk_2_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS3_10VectorExecEEESD_sNS0_15ConstantCheckerIJisEEEJisEEEE7iterateIJNS3_12VectorReaderIiEENSK_IsEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim:bb.a
  %i.eb = extractvalue { ptr, i32 } %eh.lpad-body, 1 ; 2 uses
  %i.ec = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #36
  %i.ed = icmp eq i32 %i.eb, %i.ec
  br i1 %i.ed, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.body
  %i.ee = call ptr @__cxa_begin_catch(ptr %i.ea) #36
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !624 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 144
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !7  ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 152
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !16
  %i.el = icmp eq i64 %i.ek, 4
  br i1 %i.el, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.ab
  %i.em = load i8, ptr %i.ei, align 1, !tbaa !28
  %or.cond.not.i.i.i = icmp eq i8 %i.em, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 1
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !28
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.eo, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ei, i64 2
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !28
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.eq, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.er = getelementptr inbounds nuw i8, ptr %i.ei, i64 3
  %i.es = load i8, ptr %i.er, align 1, !tbaa !28
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.es, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %12) #36
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.w, i32 noundef %i.v, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.aj unwind label %bb.al

.loopexit:                                        ; preds = %bb.ab, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #41
          to label %bb.ap unwind label %bb.ai

bb.ac:                                            ; preds = %.body
  %i.et = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #36
  %i.eu = icmp eq i32 %i.eb, %i.et
  br i1 %i.eu, label %bb.ad, label %.loopexit70

bb.ad:                                            ; preds = %bb.ac
  %i.ev = call ptr @__cxa_begin_catch(ptr %i.ea) #36 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %11) #36
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.w, i32 noundef %i.v, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.ew = load ptr, ptr %11, align 8, !tbaa !416
  %.not.i54 = icmp eq ptr %i.ew, null
  br i1 %.not.i54, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #36
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEESB_sNS0_15ConstantCheckerIJisEEEJisEEEE7iterateIJNS1_12VectorReaderIiEENSI_IsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit

bb.ag:                                            ; preds = %bb.ad
  %i.ex = landingpad { ptr, i32 }
          cleanup
  %i.ey = load ptr, ptr %11, align 8, !tbaa !416
  %.not.i55 = icmp eq ptr %i.ey, null
  br i1 %.not.i55, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit56, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #36
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit56

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit56: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  invoke void @__cxa_end_catch()
          to label %.loopexit70 unwind label %bb.ao

bb.ai:                                            ; preds = %.loopexit
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.aj:                                            ; preds = %tailrecurse.i.i.i.i.3
  %i.fa = load ptr, ptr %12, align 8, !tbaa !416
  %.not.i57 = icmp eq ptr %i.fa, null
  br i1 %.not.i57, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit58, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #36
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit58

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit58: ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEESB_sNS0_15ConstantCheckerIJisEEEJisEEEE7iterateIJNS1_12VectorReaderIiEENSI_IsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit

bb.al:                                            ; preds = %tailrecurse.i.i.i.i.3
  %i.fb = landingpad { ptr, i32 }
          cleanup
  %i.fc = load ptr, ptr %12, align 8, !tbaa !416
  %.not.i59 = icmp eq ptr %i.fc, null
  br i1 %.not.i59, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit60, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #36
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit60

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit60: ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  br label %bb.an

bb.an:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit60, %bb.ai
  %.pn.i = phi { ptr, i32 } [ %i.fb, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit60 ], [ %i.ez, %bb.ai ]
  invoke void @__cxa_end_catch()
          to label %.loopexit70 unwind label %bb.ao

.loopexit70:                                      ; preds = %bb.ac, %bb.an, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit56
  %.merged.i = phi { ptr, i32 } [ %i.ex, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit56 ], [ %.pn.i, %bb.an ], [ %eh.lpad-body, %bb.ac ]
  resume { ptr, i32 } %.merged.i

bb.ao:                                            ; preds = %bb.an, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit56
  %i.fd = landingpad { ptr, i32 }
          catch ptr null
  %i.fe = extractvalue { ptr, i32 } %i.fd, 0
  call void @__clang_call_terminate(ptr %i.fe) #42
  unreachable

bb.ap:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEESB_sNS0_15ConstantCheckerIJisEEEJisEEEE7iterateIJNS1_12VectorReaderIiEENSI_IsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit53, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit58
  %i.ff = add i64 %.076, -1
  %i.fg = and i64 %i.ff, %.076                    ; 2 uses
  %.not10 = icmp eq i64 %i.fg, 0
  br i1 %.not10, label %.loopexit69, label %bb.b, !llvm.loop !1996

.loopexit69:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEESB_sNS0_15ConstantCheckerIJisEEEJisEEEE7iterateIJNS1_12VectorReaderIiEENSI_IsEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define internal void @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEEEiNS0_15ConstantCheckerIJiiEEEJiiEE7getNameB5cxx11Ev(ptr dead_on_unwind noalias nofree readnone sret(%"class.std::__cxx11::basic_string") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #36 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.33)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #36
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZSt11make_sharedIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_4exec10VectorExecEEEiNS1_15ConstantCheckerIJiiEEEJiiEEEJRbRKSt6vectorINS8_17SignatureVariableESaISH_EEEESt10shared_ptrIT_EDpOT0_(i8 %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.facebook::velox::exec::FunctionSignatureBuilder", align 8 ; 16 uses
  %2 = alloca %"class.std::shared_ptr.15", align 16 ; 7 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"struct.facebook::velox::core::TypeAnalysis.45", align 1 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"struct.facebook::velox::core::TypeAnalysis.45", align 1 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::vector", align 16     ; 13 uses
  %11 = alloca %"struct.facebook::velox::core::TypeAnalysisResults", align 8 ; 31 uses
  %12 = alloca %"struct.facebook::velox::core::TypeAnalysis.45", align 1 ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::shared_ptr.18", align 16 ; 7 uses
  %15 = alloca %"class.std::vector.21", align 8   ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"struct.facebook::velox::core::SimpleFunctionMetadata<facebook::velox::functions::iceberg::(anonymous namespace)::TruncateFunction<facebook::velox::exec::VectorExec>, int, facebook::velox::ConstantChecker<int, int>, int, int>::SignatureTypesAnalysisResults", align 16 ; 31 uses
  store ptr null, ptr @_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEEiNS0_15ConstantCheckerIJiiEEEJiiEEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISL_EEE8instance, align 16, !tbaa !1997
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #39, !noalias !2000 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !35
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_4exec10VectorExecEEEiNS1_15ConstantCheckerIJiiEEEJiiEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %18 = and i8 %.0.val, 1
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEEEiNS0_15ConstantCheckerIJiiEEEJiiEEE, i64 16), ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %18, ptr %i.e, align 8, !tbaa !2003
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2005)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36, !noalias !2005
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !2005
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36, !noalias !2005
  store i8 0, ptr %11, align 8, !tbaa !103, !noalias !2005
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 1
  store i8 0, ptr %i.i, align 1, !tbaa !105, !noalias !2005
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 2
  store i8 0, ptr %i.j, align 2, !tbaa !106, !noalias !2005
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !107, !noalias !2005
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.l)
          to label %bb.b unwind label %bb.at, !noalias !2005

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 392 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !noalias !2005
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 416 ; 10 uses
  store i32 0, ptr %i.n, align 8, !tbaa !108, !noalias !2005
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 424 ; 5 uses
  store ptr null, ptr %i.o, align 8, !tbaa !113, !noalias !2005
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 432 ; 5 uses
  store ptr %i.n, ptr %i.p, align 8, !tbaa !114, !noalias !2005
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 440 ; 4 uses
  store ptr %i.n, ptr %i.q, align 8, !tbaa !115, !noalias !2005
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 448 ; 6 uses
  store i64 0, ptr %i.r, align 8, !tbaa !116, !noalias !2005
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36, !noalias !2005
  invoke void @_ZN8facebook5velox4core12TypeAnalysisIiE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %bb.c unwind label %bb.au

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36, !noalias !2005
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36, !noalias !2005
  call void @llvm.experimental.noalias.scope.decl(metadata !2008)
  call void @llvm.experimental.noalias.scope.decl(metadata !2011)
  call void @llvm.experimental.noalias.scope.decl(metadata !2014)
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 12 uses
  store ptr %i.s, ptr %13, align 8, !tbaa !76, !alias.scope !2017, !noalias !2005
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i64 0, ptr %i.t, align 8, !tbaa !16, !alias.scope !2017, !noalias !2005
  store i8 0, ptr %i.s, align 8, !tbaa !28, !alias.scope !2017, !noalias !2005
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !127, !noalias !2018 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !noalias !2018 ; 2 uses
  %i.y = icmp ugt ptr %i.v, %i.x
  %.08.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.y, ptr %i.v, ptr %i.x ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !132, !noalias !2018 ; 2 uses
  %i.ab = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef %i.aa, i64 noundef %i.ad)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %13, align 8, !tbaa !7, !alias.scope !2017, !noalias !2005 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.s
  br i1 %i.ah, label %.body.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.i.sink.split

bb.f:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e

_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #36, !noalias !2005
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 400 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24, !noalias !2005 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.m, align 8, !tbaa !27, !noalias !2005
  store <2 x ptr> %i.am, ptr %14, align 16, !tbaa !27, !noalias !2005
  %.not.i.i.i25.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i25.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !2005
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !3
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ar = atomicrmw volatile add ptr %i.an, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h, %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #36, !noalias !2005
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false), !noalias !2005
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36, !noalias !2005
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.as, ptr %7, align 8, !tbaa !76, !noalias !2005
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !16, !noalias !2005
  store i8 0, ptr %i.as, align 8, !tbaa !28, !noalias !2005
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i unwind label %bb.j

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.av = load ptr, ptr %7, align 8, !tbaa !7, !noalias !2005 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.as
  br i1 %i.aw, label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i
  %i.ax = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !2005
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #40
  br label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %7, align 8, !tbaa !7, !noalias !2005 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.as
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !2005
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36, !noalias !2005
  br label %.body29.i.i.i.i.i.i.i

_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36, !noalias !2005
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36, !noalias !2005
  invoke void @_ZN8facebook5velox4core12TypeAnalysisIiE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.av

.noexc.i.i.i.i.i.i.i:                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36, !noalias !2005
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36, !noalias !2005
  call void @llvm.experimental.noalias.scope.decl(metadata !2019)
  call void @llvm.experimental.noalias.scope.decl(metadata !2022)
  call void @llvm.experimental.noalias.scope.decl(metadata !2025)
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  store ptr %i.be, ptr %9, align 8, !tbaa !76, !alias.scope !2028, !noalias !2005
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 0, ptr %i.bf, align 8, !tbaa !16, !alias.scope !2028, !noalias !2005
  store i8 0, ptr %i.be, align 8, !tbaa !28, !alias.scope !2028, !noalias !2005
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !127, !noalias !2029 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  %i.bh = load ptr, ptr %i.w, align 8, !noalias !2029 ; 2 uses
  %i.bi = icmp ugt ptr %i.bg, %i.bh
  %.08.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bi, ptr %i.bg, ptr %i.bh ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i26.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i26.i.i.i.i.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !132, !noalias !2029 ; 2 uses
  %i.bl = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.bk, i64 noundef %i.bn)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %9, align 8, !tbaa !7, !alias.scope !2028, !noalias !2005 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.be
  br i1 %i.br, label %.body29.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.bs = load i64, ptr %i.be, align 8, !tbaa !28, !alias.scope !2028, !noalias !2005
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #40
  br label %.body29.i.i.i.i.i.i.i

bb.m:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.bu)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l
end_hunk_2
begin_hunk_3_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS3_10VectorExecEEESD_iNS0_15ConstantCheckerIJiiEEEJiiEEEE7iterateIJNS3_12VectorReaderIiEESL_EEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim:bb.a
  %i.dz = extractvalue { ptr, i32 } %eh.lpad-body, 1 ; 2 uses
  %i.ea = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #36
  %i.eb = icmp eq i32 %i.dz, %i.ea
  br i1 %i.eb, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.body
  %i.ec = call ptr @__cxa_begin_catch(ptr %i.dy) #36
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !624 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 144
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !7  ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 152
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !16
  %i.ej = icmp eq i64 %i.ei, 4
  br i1 %i.ej, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.ab
  %i.ek = load i8, ptr %i.eg, align 1, !tbaa !28
  %or.cond.not.i.i.i = icmp eq i8 %i.ek, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  %i.em = load i8, ptr %i.el, align 1, !tbaa !28
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.em, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !28
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.eo, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eg, i64 3
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !28
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.eq, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %12) #36
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.w, i32 noundef %i.v, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.aj unwind label %bb.al

.loopexit:                                        ; preds = %bb.ab, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #41
          to label %bb.ap unwind label %bb.ai

bb.ac:                                            ; preds = %.body
  %i.er = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #36
  %i.es = icmp eq i32 %i.dz, %i.er
  br i1 %i.es, label %bb.ad, label %.loopexit72

bb.ad:                                            ; preds = %bb.ac
  %i.et = call ptr @__cxa_begin_catch(ptr %i.dy) #36 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %11) #36
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.w, i32 noundef %i.v, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.eu = load ptr, ptr %11, align 8, !tbaa !416
  %.not.i56 = icmp eq ptr %i.eu, null
  br i1 %.not.i56, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #36
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEESB_iNS0_15ConstantCheckerIJiiEEEJiiEEEE7iterateIJNS1_12VectorReaderIiEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit

bb.ag:                                            ; preds = %bb.ad
  %i.ev = landingpad { ptr, i32 }
          cleanup
  %i.ew = load ptr, ptr %11, align 8, !tbaa !416
  %.not.i57 = icmp eq ptr %i.ew, null
  br i1 %.not.i57, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit58, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #36
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit58

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit58: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  invoke void @__cxa_end_catch()
          to label %.loopexit72 unwind label %bb.ao

bb.ai:                                            ; preds = %.loopexit
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.aj:                                            ; preds = %tailrecurse.i.i.i.i.3
  %i.ey = load ptr, ptr %12, align 8, !tbaa !416
  %.not.i59 = icmp eq ptr %i.ey, null
  br i1 %.not.i59, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit60, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #36
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit60

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit60: ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEESB_iNS0_15ConstantCheckerIJiiEEEJiiEEEE7iterateIJNS1_12VectorReaderIiEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit

bb.al:                                            ; preds = %tailrecurse.i.i.i.i.3
  %i.ez = landingpad { ptr, i32 }
          cleanup
  %i.fa = load ptr, ptr %12, align 8, !tbaa !416
  %.not.i61 = icmp eq ptr %i.fa, null
  br i1 %.not.i61, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit62, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #36
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit62

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit62: ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  br label %bb.an

bb.an:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit62, %bb.ai
  %.pn.i = phi { ptr, i32 } [ %i.ez, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit62 ], [ %i.ex, %bb.ai ]
  invoke void @__cxa_end_catch()
          to label %.loopexit72 unwind label %bb.ao

.loopexit72:                                      ; preds = %bb.ac, %bb.an, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit58
  %.merged.i = phi { ptr, i32 } [ %i.ev, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit58 ], [ %.pn.i, %bb.an ], [ %eh.lpad-body, %bb.ac ]
  resume { ptr, i32 } %.merged.i

bb.ao:                                            ; preds = %bb.an, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit58
  %i.fb = landingpad { ptr, i32 }
          catch ptr null
  %i.fc = extractvalue { ptr, i32 } %i.fb, 0
  call void @__clang_call_terminate(ptr %i.fc) #42
  unreachable

bb.ap:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEESB_iNS0_15ConstantCheckerIJiiEEEJiiEEEE7iterateIJNS1_12VectorReaderIiEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit55, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit60
  %i.fd = add i64 %.078, -1
  %i.fe = and i64 %i.fd, %.078                    ; 2 uses
  %.not10 = icmp eq i64 %i.fe, 0
  br i1 %.not10, label %.loopexit71, label %bb.b, !llvm.loop !2539

.loopexit71:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEESB_iNS0_15ConstantCheckerIJiiEEEJiiEEEE7iterateIJNS1_12VectorReaderIiEESJ_EEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define internal void @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEEElNS0_15ConstantCheckerIJilEEEJilEE7getNameB5cxx11Ev(ptr dead_on_unwind noalias nofree readnone sret(%"class.std::__cxx11::basic_string") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #36 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.33)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #36
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZSt11make_sharedIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_4exec10VectorExecEEElNS1_15ConstantCheckerIJilEEEJilEEEJRbRKSt6vectorINS8_17SignatureVariableESaISH_EEEESt10shared_ptrIT_EDpOT0_(i8 %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.facebook::velox::exec::FunctionSignatureBuilder", align 8 ; 16 uses
  %2 = alloca %"class.std::shared_ptr.15", align 16 ; 7 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"struct.facebook::velox::core::TypeAnalysis.1308", align 1 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"struct.facebook::velox::core::TypeAnalysis.45", align 1 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::vector", align 16     ; 13 uses
  %11 = alloca %"struct.facebook::velox::core::TypeAnalysisResults", align 8 ; 31 uses
  %12 = alloca %"struct.facebook::velox::core::TypeAnalysis.1308", align 1 ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::shared_ptr.18", align 16 ; 7 uses
  %15 = alloca %"class.std::vector.21", align 8   ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"struct.facebook::velox::core::SimpleFunctionMetadata<facebook::velox::functions::iceberg::(anonymous namespace)::TruncateFunction<facebook::velox::exec::VectorExec>, long, facebook::velox::ConstantChecker<int, long>, int, long>::SignatureTypesAnalysisResults", align 16 ; 31 uses
  store ptr null, ptr @_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEElNS0_15ConstantCheckerIJilEEEJilEEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISL_EEE8instance, align 16, !tbaa !2540
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #39, !noalias !2543 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !35
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_4exec10VectorExecEEElNS1_15ConstantCheckerIJilEEEJilEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %18 = and i8 %.0.val, 1
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEEElNS0_15ConstantCheckerIJilEEEJilEEE, i64 16), ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %18, ptr %i.e, align 8, !tbaa !2546
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2548)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36, !noalias !2548
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !2548
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36, !noalias !2548
  store i8 0, ptr %11, align 8, !tbaa !103, !noalias !2548
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 1
  store i8 0, ptr %i.i, align 1, !tbaa !105, !noalias !2548
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 2
  store i8 0, ptr %i.j, align 2, !tbaa !106, !noalias !2548
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !107, !noalias !2548
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.l)
          to label %bb.b unwind label %bb.at, !noalias !2548

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 392 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !noalias !2548
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 416 ; 10 uses
  store i32 0, ptr %i.n, align 8, !tbaa !108, !noalias !2548
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 424 ; 5 uses
  store ptr null, ptr %i.o, align 8, !tbaa !113, !noalias !2548
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 432 ; 5 uses
  store ptr %i.n, ptr %i.p, align 8, !tbaa !114, !noalias !2548
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 440 ; 4 uses
  store ptr %i.n, ptr %i.q, align 8, !tbaa !115, !noalias !2548
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 448 ; 6 uses
  store i64 0, ptr %i.r, align 8, !tbaa !116, !noalias !2548
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36, !noalias !2548
  invoke void @_ZN8facebook5velox4core12TypeAnalysisIlE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %bb.c unwind label %bb.au

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36, !noalias !2548
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36, !noalias !2548
  call void @llvm.experimental.noalias.scope.decl(metadata !2551)
  call void @llvm.experimental.noalias.scope.decl(metadata !2554)
  call void @llvm.experimental.noalias.scope.decl(metadata !2557)
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 12 uses
  store ptr %i.s, ptr %13, align 8, !tbaa !76, !alias.scope !2560, !noalias !2548
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i64 0, ptr %i.t, align 8, !tbaa !16, !alias.scope !2560, !noalias !2548
  store i8 0, ptr %i.s, align 8, !tbaa !28, !alias.scope !2560, !noalias !2548
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !127, !noalias !2561 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !noalias !2561 ; 2 uses
  %i.y = icmp ugt ptr %i.v, %i.x
  %.08.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.y, ptr %i.v, ptr %i.x ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !132, !noalias !2561 ; 2 uses
  %i.ab = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef %i.aa, i64 noundef %i.ad)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %13, align 8, !tbaa !7, !alias.scope !2560, !noalias !2548 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.s
  br i1 %i.ah, label %.body.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.i.sink.split

bb.f:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e

_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #36, !noalias !2548
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 400 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24, !noalias !2548 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.m, align 8, !tbaa !27, !noalias !2548
  store <2 x ptr> %i.am, ptr %14, align 16, !tbaa !27, !noalias !2548
  %.not.i.i.i25.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i25.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !2548
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !3
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ar = atomicrmw volatile add ptr %i.an, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h, %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #36, !noalias !2548
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false), !noalias !2548
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36, !noalias !2548
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.as, ptr %7, align 8, !tbaa !76, !noalias !2548
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !16, !noalias !2548
  store i8 0, ptr %i.as, align 8, !tbaa !28, !noalias !2548
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i unwind label %bb.j

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.av = load ptr, ptr %7, align 8, !tbaa !7, !noalias !2548 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.as
  br i1 %i.aw, label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i
  %i.ax = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !2548
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #40
  br label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %7, align 8, !tbaa !7, !noalias !2548 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.as
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !2548
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36, !noalias !2548
  br label %.body29.i.i.i.i.i.i.i

_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36, !noalias !2548
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36, !noalias !2548
  invoke void @_ZN8facebook5velox4core12TypeAnalysisIiE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.av

.noexc.i.i.i.i.i.i.i:                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36, !noalias !2548
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36, !noalias !2548
  call void @llvm.experimental.noalias.scope.decl(metadata !2562)
  call void @llvm.experimental.noalias.scope.decl(metadata !2565)
  call void @llvm.experimental.noalias.scope.decl(metadata !2568)
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  store ptr %i.be, ptr %9, align 8, !tbaa !76, !alias.scope !2571, !noalias !2548
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 0, ptr %i.bf, align 8, !tbaa !16, !alias.scope !2571, !noalias !2548
  store i8 0, ptr %i.be, align 8, !tbaa !28, !alias.scope !2571, !noalias !2548
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !127, !noalias !2572 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  %i.bh = load ptr, ptr %i.w, align 8, !noalias !2572 ; 2 uses
  %i.bi = icmp ugt ptr %i.bg, %i.bh
  %.08.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bi, ptr %i.bg, ptr %i.bh ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i26.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i26.i.i.i.i.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !132, !noalias !2572 ; 2 uses
  %i.bl = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.bk, i64 noundef %i.bn)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %9, align 8, !tbaa !7, !alias.scope !2571, !noalias !2548 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.be
  br i1 %i.br, label %.body29.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.bs = load i64, ptr %i.be, align 8, !tbaa !28, !alias.scope !2571, !noalias !2548
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #40
  br label %.body29.i.i.i.i.i.i.i

bb.m:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.bu)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l
end_hunk_3
begin_hunk_4_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS3_10VectorExecEEESD_lNS0_15ConstantCheckerIJilEEEJilEEEE7iterateIJNS3_12VectorReaderIiEENSK_IlEEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim:bb.a
  %i.ea = extractvalue { ptr, i32 } %eh.lpad-body, 1 ; 2 uses
  %i.eb = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #36
  %i.ec = icmp eq i32 %i.ea, %i.eb
  br i1 %i.ec, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.body
  %i.ed = call ptr @__cxa_begin_catch(ptr %i.dz) #36
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !624 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 144
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !7  ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 152
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !16
  %i.ek = icmp eq i64 %i.ej, 4
  br i1 %i.ek, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.ab
  %i.el = load i8, ptr %i.eh, align 1, !tbaa !28
  %or.cond.not.i.i.i = icmp eq i8 %i.el, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 1
  %i.en = load i8, ptr %i.em, align 1, !tbaa !28
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.en, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eh, i64 2
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !28
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.ep, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eh, i64 3
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !28
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.er, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %12) #36
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.w, i32 noundef %i.v, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.aj unwind label %bb.al

.loopexit:                                        ; preds = %bb.ab, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #41
          to label %bb.ap unwind label %bb.ai

bb.ac:                                            ; preds = %.body
  %i.es = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #36
  %i.et = icmp eq i32 %i.ea, %i.es
  br i1 %i.et, label %bb.ad, label %.loopexit70

bb.ad:                                            ; preds = %bb.ac
  %i.eu = call ptr @__cxa_begin_catch(ptr %i.dz) #36 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %11) #36
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.w, i32 noundef %i.v, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.ev = load ptr, ptr %11, align 8, !tbaa !416
  %.not.i54 = icmp eq ptr %i.ev, null
  br i1 %.not.i54, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #36
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEESB_lNS0_15ConstantCheckerIJilEEEJilEEEE7iterateIJNS1_12VectorReaderIiEENSI_IlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit

bb.ag:                                            ; preds = %bb.ad
  %i.ew = landingpad { ptr, i32 }
          cleanup
  %i.ex = load ptr, ptr %11, align 8, !tbaa !416
  %.not.i55 = icmp eq ptr %i.ex, null
  br i1 %.not.i55, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit56, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #36
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit56

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit56: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  invoke void @__cxa_end_catch()
          to label %.loopexit70 unwind label %bb.ao

bb.ai:                                            ; preds = %.loopexit
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.aj:                                            ; preds = %tailrecurse.i.i.i.i.3
  %i.ez = load ptr, ptr %12, align 8, !tbaa !416
  %.not.i57 = icmp eq ptr %i.ez, null
  br i1 %.not.i57, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit58, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #36
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit58

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit58: ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEESB_lNS0_15ConstantCheckerIJilEEEJilEEEE7iterateIJNS1_12VectorReaderIiEENSI_IlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit

bb.al:                                            ; preds = %tailrecurse.i.i.i.i.3
  %i.fa = landingpad { ptr, i32 }
          cleanup
  %i.fb = load ptr, ptr %12, align 8, !tbaa !416
  %.not.i59 = icmp eq ptr %i.fb, null
  br i1 %.not.i59, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit60, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #36
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit60

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit60: ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  br label %bb.an

bb.an:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit60, %bb.ai
  %.pn.i = phi { ptr, i32 } [ %i.fa, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit60 ], [ %i.ey, %bb.ai ]
  invoke void @__cxa_end_catch()
          to label %.loopexit70 unwind label %bb.ao

.loopexit70:                                      ; preds = %bb.ac, %bb.an, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit56
  %.merged.i = phi { ptr, i32 } [ %i.ew, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit56 ], [ %.pn.i, %bb.an ], [ %eh.lpad-body, %bb.ac ]
  resume { ptr, i32 } %.merged.i

bb.ao:                                            ; preds = %bb.an, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit56
  %i.fc = landingpad { ptr, i32 }
          catch ptr null
  %i.fd = extractvalue { ptr, i32 } %i.fc, 0
  call void @__clang_call_terminate(ptr %i.fd) #42
  unreachable

bb.ap:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEESB_lNS0_15ConstantCheckerIJilEEEJilEEEE7iterateIJNS1_12VectorReaderIiEENSI_IlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit53, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit58
  %i.fe = add i64 %.076, -1
  %i.ff = and i64 %i.fe, %.076                    ; 2 uses
  %.not10 = icmp eq i64 %i.ff, 0
  br i1 %.not10, label %.loopexit69, label %bb.b, !llvm.loop !3099

.loopexit69:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEESB_lNS0_15ConstantCheckerIJilEEEJilEEEE7iterateIJNS1_12VectorReaderIiEENSI_IlEEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define internal void @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEEENS0_7VarcharENS0_15ConstantCheckerIJiSA_EEEJiSA_EE7getNameB5cxx11Ev(ptr dead_on_unwind noalias nofree readnone sret(%"class.std::__cxx11::basic_string") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #36 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.33)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #36
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZSt11make_sharedIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_4exec10VectorExecEEENS1_7VarcharENS1_15ConstantCheckerIJiSB_EEEJiSB_EEEJRbRKSt6vectorINS8_17SignatureVariableESaISI_EEEESt10shared_ptrIT_EDpOT0_(i8 %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.facebook::velox::exec::FunctionSignatureBuilder", align 8 ; 16 uses
  %2 = alloca %"class.std::shared_ptr.15", align 16 ; 7 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"struct.facebook::velox::core::TypeAnalysis.1504", align 1 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"struct.facebook::velox::core::TypeAnalysis.45", align 1 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::vector", align 16     ; 13 uses
  %11 = alloca %"struct.facebook::velox::core::TypeAnalysisResults", align 8 ; 31 uses
  %12 = alloca %"struct.facebook::velox::core::TypeAnalysis.1504", align 1 ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::shared_ptr.18", align 16 ; 7 uses
  %15 = alloca %"class.std::vector.21", align 8   ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"struct.facebook::velox::core::SimpleFunctionMetadata<facebook::velox::functions::iceberg::(anonymous namespace)::TruncateFunction<facebook::velox::exec::VectorExec>, facebook::velox::Varchar, facebook::velox::ConstantChecker<int, facebook::velox::Varchar>, int, facebook::velox::Varchar>::SignatureTypesAnalysisResults", align 16 ; 31 uses
  store ptr null, ptr @_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEENS0_7VarcharENS0_15ConstantCheckerIJiSB_EEEJiSB_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISM_EEE8instance, align 16, !tbaa !3100
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #39, !noalias !3103 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !35
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_4exec10VectorExecEEENS1_7VarcharENS1_15ConstantCheckerIJiSB_EEEJiSB_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %18 = and i8 %.0.val, 1
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEEENS0_7VarcharENS0_15ConstantCheckerIJiSA_EEEJiSA_EEE, i64 16), ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %18, ptr %i.e, align 8, !tbaa !3106
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3108)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36, !noalias !3108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !3108
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36, !noalias !3108
  store i8 0, ptr %11, align 8, !tbaa !103, !noalias !3108
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 1
  store i8 0, ptr %i.i, align 1, !tbaa !105, !noalias !3108
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 2
  store i8 0, ptr %i.j, align 2, !tbaa !106, !noalias !3108
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !107, !noalias !3108
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.l)
          to label %bb.b unwind label %bb.at, !noalias !3108

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 392 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !noalias !3108
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 416 ; 10 uses
  store i32 0, ptr %i.n, align 8, !tbaa !108, !noalias !3108
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 424 ; 5 uses
  store ptr null, ptr %i.o, align 8, !tbaa !113, !noalias !3108
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 432 ; 5 uses
  store ptr %i.n, ptr %i.p, align 8, !tbaa !114, !noalias !3108
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 440 ; 4 uses
  store ptr %i.n, ptr %i.q, align 8, !tbaa !115, !noalias !3108
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 448 ; 6 uses
  store i64 0, ptr %i.r, align 8, !tbaa !116, !noalias !3108
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36, !noalias !3108
  invoke void @_ZN8facebook5velox4core12TypeAnalysisINS0_7VarcharEE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %bb.c unwind label %bb.au

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36, !noalias !3108
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36, !noalias !3108
  call void @llvm.experimental.noalias.scope.decl(metadata !3111)
  call void @llvm.experimental.noalias.scope.decl(metadata !3114)
  call void @llvm.experimental.noalias.scope.decl(metadata !3117)
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 12 uses
  store ptr %i.s, ptr %13, align 8, !tbaa !76, !alias.scope !3120, !noalias !3108
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i64 0, ptr %i.t, align 8, !tbaa !16, !alias.scope !3120, !noalias !3108
  store i8 0, ptr %i.s, align 8, !tbaa !28, !alias.scope !3120, !noalias !3108
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !127, !noalias !3121 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !noalias !3121 ; 2 uses
  %i.y = icmp ugt ptr %i.v, %i.x
  %.08.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.y, ptr %i.v, ptr %i.x ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !132, !noalias !3121 ; 2 uses
  %i.ab = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef %i.aa, i64 noundef %i.ad)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %13, align 8, !tbaa !7, !alias.scope !3120, !noalias !3108 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.s
  br i1 %i.ah, label %.body.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.i.sink.split

bb.f:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e

_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #36, !noalias !3108
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 400 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24, !noalias !3108 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.m, align 8, !tbaa !27, !noalias !3108
  store <2 x ptr> %i.am, ptr %14, align 16, !tbaa !27, !noalias !3108
  %.not.i.i.i25.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i25.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !3108
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !3
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ar = atomicrmw volatile add ptr %i.an, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h, %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #36, !noalias !3108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false), !noalias !3108
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36, !noalias !3108
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.as, ptr %7, align 8, !tbaa !76, !noalias !3108
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !16, !noalias !3108
  store i8 0, ptr %i.as, align 8, !tbaa !28, !noalias !3108
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i unwind label %bb.j

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.av = load ptr, ptr %7, align 8, !tbaa !7, !noalias !3108 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.as
  br i1 %i.aw, label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i
  %i.ax = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !3108
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #40
  br label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %7, align 8, !tbaa !7, !noalias !3108 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.as
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !3108
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36, !noalias !3108
  br label %.body29.i.i.i.i.i.i.i

_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36, !noalias !3108
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36, !noalias !3108
  invoke void @_ZN8facebook5velox4core12TypeAnalysisIiE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.av

.noexc.i.i.i.i.i.i.i:                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36, !noalias !3108
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36, !noalias !3108
  call void @llvm.experimental.noalias.scope.decl(metadata !3122)
  call void @llvm.experimental.noalias.scope.decl(metadata !3125)
  call void @llvm.experimental.noalias.scope.decl(metadata !3128)
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  store ptr %i.be, ptr %9, align 8, !tbaa !76, !alias.scope !3131, !noalias !3108
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 0, ptr %i.bf, align 8, !tbaa !16, !alias.scope !3131, !noalias !3108
  store i8 0, ptr %i.be, align 8, !tbaa !28, !alias.scope !3131, !noalias !3108
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !127, !noalias !3132 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  %i.bh = load ptr, ptr %i.w, align 8, !noalias !3132 ; 2 uses
  %i.bi = icmp ugt ptr %i.bg, %i.bh
  %.08.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bi, ptr %i.bg, ptr %i.bh ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i26.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i26.i.i.i.i.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !132, !noalias !3132 ; 2 uses
  %i.bl = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.bk, i64 noundef %i.bn)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %9, align 8, !tbaa !7, !alias.scope !3131, !noalias !3108 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.be
  br i1 %i.br, label %.body29.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.bs = load i64, ptr %i.be, align 8, !tbaa !28, !alias.scope !3131, !noalias !3108
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #40
  br label %.body29.i.i.i.i.i.i.i

bb.m:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.bu)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l
end_hunk_4
begin_hunk_5_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS3_10VectorExecEEESD_NS0_7VarcharENS0_15ConstantCheckerIJiSF_EEEJiSF_EEEE8applyUdfIZNKSJ_7iterateIJNS3_12VectorReaderIiEENSM_ISF_EEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSK_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_EUlSU_E_EEvPKmiibSU_ENKUlimE_clEim:bb.a
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gs, i64 2
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !28
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.ha, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gs, i64 3
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !28
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.hc, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  %i.hd = load ptr, ptr %i.z, align 8, !tbaa !3784, !nonnull !188, !align !539
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !3238, !nonnull !188, !align !539
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  invoke void @_ZN8facebook5velox4exec12VectorWriterINS0_7VarcharEvE10commitNullEv(ptr noundef nonnull align 8 dereferenceable(112) %i.hf)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJiSB_EEEJiSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderIiEENSI_ISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSM_SQ_ENKUlSQ_E0_clIiEEDaSQ_.exit unwind label %.loopexit87

.loopexit:                                        ; preds = %bb.aq, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #41
          to label %bb.bf unwind label %.loopexit.split-lp

bb.ar:                                            ; preds = %.body
  %i.hg = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #36
  %i.hh = icmp eq i32 %i.gl, %i.hg
  br i1 %i.hh, label %bb.as, label %.loopexit85

bb.as:                                            ; preds = %bb.ar
  %i.hi = call ptr @__cxa_begin_catch(ptr %i.gk) #36 ; 0 uses
  %i.hj = load ptr, ptr %i.z, align 8, !tbaa !3784, !nonnull !188, !align !539
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !3238, !nonnull !188, !align !539
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  invoke void @_ZN8facebook5velox4exec12VectorWriterINS0_7VarcharEvE10commitNullEv(ptr noundef nonnull align 8 dereferenceable(112) %i.hl)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJiSB_EEEJiSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderIiEENSI_ISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSM_SQ_ENKUlSQ_E0_clIiEEDaSQ_.exit14 unwind label %bb.av

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJiSB_EEEJiSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderIiEENSI_ISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSM_SQ_ENKUlSQ_E0_clIiEEDaSQ_.exit14: ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #36
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %15) #36
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.ad, i32 noundef %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.at unwind label %bb.aw

bb.at:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJiSB_EEEJiSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderIiEENSI_ISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSM_SQ_ENKUlSQ_E0_clIiEEDaSQ_.exit14
  %i.hm = load ptr, ptr %15, align 8, !tbaa !416
  %.not.i71 = icmp eq ptr %i.hm, null
  br i1 %.not.i71, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %15) #36
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #36
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJiSD_EEEJiSD_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderIiEENSK_ISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_EUlSS_E_ZNKSI_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_ENKUlSS_E_clIiEEDaSS_.exit

bb.av:                                            ; preds = %bb.as
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.aw:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJiSB_EEEJiSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderIiEENSI_ISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSM_SQ_ENKUlSQ_E0_clIiEEDaSQ_.exit14
  %i.ho = landingpad { ptr, i32 }
          cleanup
  %i.hp = load ptr, ptr %15, align 8, !tbaa !416
  %.not.i72 = icmp eq ptr %i.hp, null
  br i1 %.not.i72, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %15) #36
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73: ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #36
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73, %bb.av
  %.pn.i = phi { ptr, i32 } [ %i.ho, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73 ], [ %i.hn, %bb.av ]
  invoke void @__cxa_end_catch()
          to label %.loopexit85 unwind label %bb.be

.loopexit87:                                      ; preds = %tailrecurse.i.i.i.i.3
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.loopexit.split-lp:                               ; preds = %.loopexit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJiSB_EEEJiSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderIiEENSI_ISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSM_SQ_ENKUlSQ_E0_clIiEEDaSQ_.exit: ; preds = %tailrecurse.i.i.i.i.3
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #36
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %16) #36
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.ad, i32 noundef %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.az unwind label %bb.bb

bb.az:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJiSB_EEEJiSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderIiEENSI_ISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSM_SQ_ENKUlSQ_E0_clIiEEDaSQ_.exit
  %i.hq = load ptr, ptr %16, align 8, !tbaa !416
  %.not.i74 = icmp eq ptr %i.hq, null
  br i1 %.not.i74, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit75, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %16) #36
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit75

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit75: ; preds = %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #36
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJiSD_EEEJiSD_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderIiEENSK_ISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_EUlSS_E_ZNKSI_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_ENKUlSS_E_clIiEEDaSS_.exit

bb.bb:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_7VarcharENS0_15ConstantCheckerIJiSB_EEEJiSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderIiEENSI_ISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSM_SQ_ENKUlSQ_E0_clIiEEDaSQ_.exit
  %i.hr = landingpad { ptr, i32 }
          cleanup
  %i.hs = load ptr, ptr %16, align 8, !tbaa !416
  %.not.i76 = icmp eq ptr %i.hs, null
  br i1 %.not.i76, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit77, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %16) #36
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit77

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit77: ; preds = %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #36
  br label %bb.bd

bb.bd:                                            ; preds = %.loopexit87, %.loopexit.split-lp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit77
  %.pn16.i = phi { ptr, i32 } [ %i.hr, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit77 ], [ %lpad.loopexit, %.loopexit87 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @__cxa_end_catch()
          to label %.loopexit85 unwind label %bb.be

.loopexit85:                                      ; preds = %bb.ar, %bb.bd, %bb.ay
  %.merged.i = phi { ptr, i32 } [ %.pn.i, %bb.ay ], [ %.pn16.i, %bb.bd ], [ %eh.lpad-body, %bb.ar ]
  resume { ptr, i32 } %.merged.i

bb.be:                                            ; preds = %bb.bd, %bb.ay
  %i.ht = landingpad { ptr, i32 }
          catch ptr null
  %i.hu = extractvalue { ptr, i32 } %i.ht, 0
  call void @__clang_call_terminate(ptr %i.hu) #42
  unreachable

bb.bf:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJiSD_EEEJiSD_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderIiEENSK_ISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_EUlSS_E_ZNKSI_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_ENKUlSS_E_clIiEEDaSS_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit70, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit75
  %i.hv = add i64 %.096, -1
  %i.hw = and i64 %i.hv, %.096                    ; 2 uses
  %.not10 = icmp eq i64 %i.hw, 0
  br i1 %.not10, label %.loopexit84, label %bb.b, !llvm.loop !3785

.loopexit84:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJiSD_EEEJiSD_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderIiEENSK_ISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_EUlSS_E_ZNKSI_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_ENKUlSS_E_clIiEEDaSS_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define internal void @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEEENS0_9VarbinaryENS0_15ConstantCheckerIJiSA_EEEJiSA_EE7getNameB5cxx11Ev(ptr dead_on_unwind noalias nofree readnone sret(%"class.std::__cxx11::basic_string") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #36 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.33)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #36
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZSt11make_sharedIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_4exec10VectorExecEEENS1_9VarbinaryENS1_15ConstantCheckerIJiSB_EEEJiSB_EEEJRbRKSt6vectorINS8_17SignatureVariableESaISI_EEEESt10shared_ptrIT_EDpOT0_(i8 %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.facebook::velox::exec::FunctionSignatureBuilder", align 8 ; 16 uses
  %2 = alloca %"class.std::shared_ptr.15", align 16 ; 7 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"struct.facebook::velox::core::TypeAnalysis.1678", align 1 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"struct.facebook::velox::core::TypeAnalysis.45", align 1 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::vector", align 16     ; 13 uses
  %11 = alloca %"struct.facebook::velox::core::TypeAnalysisResults", align 8 ; 31 uses
  %12 = alloca %"struct.facebook::velox::core::TypeAnalysis.1678", align 1 ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::shared_ptr.18", align 16 ; 7 uses
  %15 = alloca %"class.std::vector.21", align 8   ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"struct.facebook::velox::core::SimpleFunctionMetadata<facebook::velox::functions::iceberg::(anonymous namespace)::TruncateFunction<facebook::velox::exec::VectorExec>, facebook::velox::Varbinary, facebook::velox::ConstantChecker<int, facebook::velox::Varbinary>, int, facebook::velox::Varbinary>::SignatureTypesAnalysisResults", align 16 ; 31 uses
  store ptr null, ptr @_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEENS0_9VarbinaryENS0_15ConstantCheckerIJiSB_EEEJiSB_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISM_EEE8instance, align 16, !tbaa !3786
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #39, !noalias !3789 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !35
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_4exec10VectorExecEEENS1_9VarbinaryENS1_15ConstantCheckerIJiSB_EEEJiSB_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %18 = and i8 %.0.val, 1
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEEENS0_9VarbinaryENS0_15ConstantCheckerIJiSA_EEEJiSA_EEE, i64 16), ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %18, ptr %i.e, align 8, !tbaa !3792
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3794)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36, !noalias !3794
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !3794
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36, !noalias !3794
  store i8 0, ptr %11, align 8, !tbaa !103, !noalias !3794
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 1
  store i8 0, ptr %i.i, align 1, !tbaa !105, !noalias !3794
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 2
  store i8 0, ptr %i.j, align 2, !tbaa !106, !noalias !3794
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !107, !noalias !3794
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.l)
          to label %bb.b unwind label %bb.at, !noalias !3794

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 392 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !noalias !3794
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 416 ; 10 uses
  store i32 0, ptr %i.n, align 8, !tbaa !108, !noalias !3794
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 424 ; 5 uses
  store ptr null, ptr %i.o, align 8, !tbaa !113, !noalias !3794
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 432 ; 5 uses
  store ptr %i.n, ptr %i.p, align 8, !tbaa !114, !noalias !3794
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 440 ; 4 uses
  store ptr %i.n, ptr %i.q, align 8, !tbaa !115, !noalias !3794
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 448 ; 6 uses
  store i64 0, ptr %i.r, align 8, !tbaa !116, !noalias !3794
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36, !noalias !3794
  invoke void @_ZN8facebook5velox4core12TypeAnalysisINS0_9VarbinaryEE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %bb.c unwind label %bb.au

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36, !noalias !3794
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36, !noalias !3794
  call void @llvm.experimental.noalias.scope.decl(metadata !3797)
  call void @llvm.experimental.noalias.scope.decl(metadata !3800)
  call void @llvm.experimental.noalias.scope.decl(metadata !3803)
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 12 uses
  store ptr %i.s, ptr %13, align 8, !tbaa !76, !alias.scope !3806, !noalias !3794
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i64 0, ptr %i.t, align 8, !tbaa !16, !alias.scope !3806, !noalias !3794
  store i8 0, ptr %i.s, align 8, !tbaa !28, !alias.scope !3806, !noalias !3794
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !127, !noalias !3807 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !noalias !3807 ; 2 uses
  %i.y = icmp ugt ptr %i.v, %i.x
  %.08.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.y, ptr %i.v, ptr %i.x ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !132, !noalias !3807 ; 2 uses
  %i.ab = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef %i.aa, i64 noundef %i.ad)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %13, align 8, !tbaa !7, !alias.scope !3806, !noalias !3794 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.s
  br i1 %i.ah, label %.body.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.i.sink.split

bb.f:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e

_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #36, !noalias !3794
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 400 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24, !noalias !3794 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.m, align 8, !tbaa !27, !noalias !3794
  store <2 x ptr> %i.am, ptr %14, align 16, !tbaa !27, !noalias !3794
  %.not.i.i.i25.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i25.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !3794
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !3
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ar = atomicrmw volatile add ptr %i.an, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h, %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #36, !noalias !3794
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false), !noalias !3794
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36, !noalias !3794
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.as, ptr %7, align 8, !tbaa !76, !noalias !3794
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !16, !noalias !3794
  store i8 0, ptr %i.as, align 8, !tbaa !28, !noalias !3794
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i unwind label %bb.j

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.av = load ptr, ptr %7, align 8, !tbaa !7, !noalias !3794 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.as
  br i1 %i.aw, label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i
  %i.ax = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !3794
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #40
  br label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %7, align 8, !tbaa !7, !noalias !3794 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.as
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !3794
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36, !noalias !3794
  br label %.body29.i.i.i.i.i.i.i

_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36, !noalias !3794
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36, !noalias !3794
  invoke void @_ZN8facebook5velox4core12TypeAnalysisIiE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.av

.noexc.i.i.i.i.i.i.i:                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36, !noalias !3794
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36, !noalias !3794
  call void @llvm.experimental.noalias.scope.decl(metadata !3808)
  call void @llvm.experimental.noalias.scope.decl(metadata !3811)
  call void @llvm.experimental.noalias.scope.decl(metadata !3814)
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  store ptr %i.be, ptr %9, align 8, !tbaa !76, !alias.scope !3817, !noalias !3794
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 0, ptr %i.bf, align 8, !tbaa !16, !alias.scope !3817, !noalias !3794
  store i8 0, ptr %i.be, align 8, !tbaa !28, !alias.scope !3817, !noalias !3794
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !127, !noalias !3818 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  %i.bh = load ptr, ptr %i.w, align 8, !noalias !3818 ; 2 uses
  %i.bi = icmp ugt ptr %i.bg, %i.bh
  %.08.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bi, ptr %i.bg, ptr %i.bh ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i26.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i26.i.i.i.i.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !132, !noalias !3818 ; 2 uses
  %i.bl = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.bk, i64 noundef %i.bn)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %9, align 8, !tbaa !7, !alias.scope !3817, !noalias !3794 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.be
  br i1 %i.br, label %.body29.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.bs = load i64, ptr %i.be, align 8, !tbaa !28, !alias.scope !3817, !noalias !3794
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #40
  br label %.body29.i.i.i.i.i.i.i

bb.m:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.bu)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l
end_hunk_5
begin_hunk_6_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS3_10VectorExecEEESD_NS0_9VarbinaryENS0_15ConstantCheckerIJiSF_EEEJiSF_EEEE8applyUdfIZNKSJ_7iterateIJNS3_12VectorReaderIiEENSM_ISF_EEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSK_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_EUlSU_E_EEvPKmiibSU_ENKUlimE_clEim:bb.a
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gs, i64 2
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !28
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.ha, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gs, i64 3
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !28
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.hc, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  %i.hd = load ptr, ptr %i.z, align 8, !tbaa !4494, !nonnull !188, !align !539
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !3912, !nonnull !188, !align !539
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  invoke void @_ZN8facebook5velox4exec12VectorWriterINS0_9VarbinaryEvE10commitNullEv(ptr noundef nonnull align 8 dereferenceable(112) %i.hf)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_9VarbinaryENS0_15ConstantCheckerIJiSB_EEEJiSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderIiEENSI_ISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSM_SQ_ENKUlSQ_E0_clIiEEDaSQ_.exit unwind label %.loopexit87

.loopexit:                                        ; preds = %bb.aq, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #41
          to label %bb.bf unwind label %.loopexit.split-lp

bb.ar:                                            ; preds = %.body
  %i.hg = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #36
  %i.hh = icmp eq i32 %i.gl, %i.hg
  br i1 %i.hh, label %bb.as, label %.loopexit85

bb.as:                                            ; preds = %bb.ar
  %i.hi = call ptr @__cxa_begin_catch(ptr %i.gk) #36 ; 0 uses
  %i.hj = load ptr, ptr %i.z, align 8, !tbaa !4494, !nonnull !188, !align !539
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !3912, !nonnull !188, !align !539
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  invoke void @_ZN8facebook5velox4exec12VectorWriterINS0_9VarbinaryEvE10commitNullEv(ptr noundef nonnull align 8 dereferenceable(112) %i.hl)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_9VarbinaryENS0_15ConstantCheckerIJiSB_EEEJiSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderIiEENSI_ISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSM_SQ_ENKUlSQ_E0_clIiEEDaSQ_.exit14 unwind label %bb.av

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_9VarbinaryENS0_15ConstantCheckerIJiSB_EEEJiSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderIiEENSI_ISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSM_SQ_ENKUlSQ_E0_clIiEEDaSQ_.exit14: ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #36
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %15) #36
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.ad, i32 noundef %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.at unwind label %bb.aw

bb.at:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_9VarbinaryENS0_15ConstantCheckerIJiSB_EEEJiSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderIiEENSI_ISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSM_SQ_ENKUlSQ_E0_clIiEEDaSQ_.exit14
  %i.hm = load ptr, ptr %15, align 8, !tbaa !416
  %.not.i71 = icmp eq ptr %i.hm, null
  br i1 %.not.i71, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %15) #36
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #36
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEESB_NS0_9VarbinaryENS0_15ConstantCheckerIJiSD_EEEJiSD_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderIiEENSK_ISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_EUlSS_E_ZNKSI_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_ENKUlSS_E_clIiEEDaSS_.exit

bb.av:                                            ; preds = %bb.as
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.aw:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_9VarbinaryENS0_15ConstantCheckerIJiSB_EEEJiSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderIiEENSI_ISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSM_SQ_ENKUlSQ_E0_clIiEEDaSQ_.exit14
  %i.ho = landingpad { ptr, i32 }
          cleanup
  %i.hp = load ptr, ptr %15, align 8, !tbaa !416
  %.not.i72 = icmp eq ptr %i.hp, null
  br i1 %.not.i72, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %15) #36
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73: ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #36
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73, %bb.av
  %.pn.i = phi { ptr, i32 } [ %i.ho, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73 ], [ %i.hn, %bb.av ]
  invoke void @__cxa_end_catch()
          to label %.loopexit85 unwind label %bb.be

.loopexit87:                                      ; preds = %tailrecurse.i.i.i.i.3
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.loopexit.split-lp:                               ; preds = %.loopexit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_9VarbinaryENS0_15ConstantCheckerIJiSB_EEEJiSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderIiEENSI_ISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSM_SQ_ENKUlSQ_E0_clIiEEDaSQ_.exit: ; preds = %tailrecurse.i.i.i.i.3
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #36
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %16) #36
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.ad, i32 noundef %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.az unwind label %bb.bb

bb.az:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_9VarbinaryENS0_15ConstantCheckerIJiSB_EEEJiSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderIiEENSI_ISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSM_SQ_ENKUlSQ_E0_clIiEEDaSQ_.exit
  %i.hq = load ptr, ptr %16, align 8, !tbaa !416
  %.not.i74 = icmp eq ptr %i.hq, null
  br i1 %.not.i74, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit75, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %16) #36
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit75

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit75: ; preds = %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #36
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEESB_NS0_9VarbinaryENS0_15ConstantCheckerIJiSD_EEEJiSD_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderIiEENSK_ISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_EUlSS_E_ZNKSI_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_ENKUlSS_E_clIiEEDaSS_.exit

bb.bb:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEES9_NS0_9VarbinaryENS0_15ConstantCheckerIJiSB_EEEJiSB_EEEE8applyUdfIZNKSF_7iterateIJNS1_12VectorReaderIiEENSI_ISB_EEEEEvRNSF_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSM_SQ_ENKUlSQ_E0_clIiEEDaSQ_.exit
  %i.hr = landingpad { ptr, i32 }
          cleanup
  %i.hs = load ptr, ptr %16, align 8, !tbaa !416
  %.not.i76 = icmp eq ptr %i.hs, null
  br i1 %.not.i76, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit77, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %16) #36
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit77

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit77: ; preds = %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #36
  br label %bb.bd

bb.bd:                                            ; preds = %.loopexit87, %.loopexit.split-lp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit77
  %.pn16.i = phi { ptr, i32 } [ %i.hr, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit77 ], [ %lpad.loopexit, %.loopexit87 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @__cxa_end_catch()
          to label %.loopexit85 unwind label %bb.be

.loopexit85:                                      ; preds = %bb.ar, %bb.bd, %bb.ay
  %.merged.i = phi { ptr, i32 } [ %.pn.i, %bb.ay ], [ %.pn16.i, %bb.bd ], [ %eh.lpad-body, %bb.ar ]
  resume { ptr, i32 } %.merged.i

bb.be:                                            ; preds = %bb.bd, %bb.ay
  %i.ht = landingpad { ptr, i32 }
          catch ptr null
  %i.hu = extractvalue { ptr, i32 } %i.ht, 0
  call void @__clang_call_terminate(ptr %i.hu) #42
  unreachable

bb.bf:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEESB_NS0_9VarbinaryENS0_15ConstantCheckerIJiSD_EEEJiSD_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderIiEENSK_ISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_EUlSS_E_ZNKSI_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_ENKUlSS_E_clIiEEDaSS_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit70, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit75
  %i.hv = add i64 %.096, -1
  %i.hw = and i64 %i.hv, %.096                    ; 2 uses
  %.not10 = icmp eq i64 %i.hw, 0
  br i1 %.not10, label %.loopexit84, label %bb.b, !llvm.loop !4495

.loopexit84:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEESB_NS0_9VarbinaryENS0_15ConstantCheckerIJiSD_EEEJiSD_EEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderIiEENSK_ISD_EEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_EUlSS_E_ZNKSI_ISX_EEvSO_SS_EUlSS_E0_EEvRKNS0_17SelectivityVectorESS_SU_ENKUlSS_E_clIiEEDaSS_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define internal void @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEEENS0_11LongDecimalINS0_15IntegerVariableILm1EEENSB_ILm5EEEEENS0_15ConstantCheckerIJiSE_EEEJiSE_EE7getNameB5cxx11Ev(ptr dead_on_unwind noalias nofree readnone sret(%"class.std::__cxx11::basic_string") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #36 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.33)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #36
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZSt11make_sharedIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_4exec10VectorExecEEENS1_11LongDecimalINS1_15IntegerVariableILm1EEENSC_ILm5EEEEENS1_15ConstantCheckerIJiSF_EEEJiSF_EEEJRbRKSt6vectorINS8_17SignatureVariableESaISM_EEEESt10shared_ptrIT_EDpOT0_(i8 %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.facebook::velox::exec::FunctionSignatureBuilder", align 8 ; 16 uses
  %2 = alloca %"class.std::shared_ptr.15", align 16 ; 7 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"struct.facebook::velox::core::TypeAnalysis.1852", align 1 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"struct.facebook::velox::core::TypeAnalysis.45", align 1 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::vector", align 16     ; 13 uses
  %11 = alloca %"struct.facebook::velox::core::TypeAnalysisResults", align 8 ; 31 uses
  %12 = alloca %"struct.facebook::velox::core::TypeAnalysis.1852", align 1 ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::shared_ptr.18", align 16 ; 7 uses
  %15 = alloca %"class.std::vector.21", align 8   ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"struct.facebook::velox::core::SimpleFunctionMetadata<facebook::velox::functions::iceberg::(anonymous namespace)::TruncateFunction<facebook::velox::exec::VectorExec>, facebook::velox::LongDecimal<facebook::velox::IntegerVariable<1>, facebook::velox::IntegerVariable<5>>, facebook::velox::ConstantChecker<int, facebook::velox::LongDecimal<facebook::velox::IntegerVariable<1>, facebook::velox::IntegerVariable<5>>>, int, facebook::velox::LongDecimal<facebook::velox::IntegerVariable<1>, facebook::velox::IntegerVariable<5>>>::SignatureTypesAnalysisResults", align 16 ; 31 uses
  store ptr null, ptr @_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEENS0_11LongDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJiSF_EEEJiSF_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISQ_EEE8instance, align 16, !tbaa !4496
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #39, !noalias !4499 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !35
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_4exec10VectorExecEEENS1_11LongDecimalINS1_15IntegerVariableILm1EEENSC_ILm5EEEEENS1_15ConstantCheckerIJiSF_EEEJiSF_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %18 = and i8 %.0.val, 1
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEEENS0_11LongDecimalINS0_15IntegerVariableILm1EEENSB_ILm5EEEEENS0_15ConstantCheckerIJiSE_EEEJiSE_EEE, i64 16), ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %18, ptr %i.e, align 8, !tbaa !4502
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4504)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36, !noalias !4504
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !4504
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36, !noalias !4504
  store i8 0, ptr %11, align 8, !tbaa !103, !noalias !4504
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 1
  store i8 0, ptr %i.i, align 1, !tbaa !105, !noalias !4504
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 2
  store i8 0, ptr %i.j, align 2, !tbaa !106, !noalias !4504
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !107, !noalias !4504
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.l)
          to label %bb.b unwind label %bb.at, !noalias !4504

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 392 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !noalias !4504
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 416 ; 10 uses
  store i32 0, ptr %i.n, align 8, !tbaa !108, !noalias !4504
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 424 ; 5 uses
  store ptr null, ptr %i.o, align 8, !tbaa !113, !noalias !4504
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 432 ; 5 uses
  store ptr %i.n, ptr %i.p, align 8, !tbaa !114, !noalias !4504
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 440 ; 4 uses
  store ptr %i.n, ptr %i.q, align 8, !tbaa !115, !noalias !4504
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 448 ; 6 uses
  store i64 0, ptr %i.r, align 8, !tbaa !116, !noalias !4504
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36, !noalias !4504
  invoke void @_ZN8facebook5velox4core12TypeAnalysisINS0_11LongDecimalINS0_15IntegerVariableILm1EEENS4_ILm5EEEEEE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %bb.c unwind label %bb.au

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36, !noalias !4504
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36, !noalias !4504
  call void @llvm.experimental.noalias.scope.decl(metadata !4507)
  call void @llvm.experimental.noalias.scope.decl(metadata !4510)
  call void @llvm.experimental.noalias.scope.decl(metadata !4513)
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 12 uses
  store ptr %i.s, ptr %13, align 8, !tbaa !76, !alias.scope !4516, !noalias !4504
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i64 0, ptr %i.t, align 8, !tbaa !16, !alias.scope !4516, !noalias !4504
  store i8 0, ptr %i.s, align 8, !tbaa !28, !alias.scope !4516, !noalias !4504
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !127, !noalias !4517 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !noalias !4517 ; 2 uses
  %i.y = icmp ugt ptr %i.v, %i.x
  %.08.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.y, ptr %i.v, ptr %i.x ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !132, !noalias !4517 ; 2 uses
  %i.ab = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef %i.aa, i64 noundef %i.ad)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %13, align 8, !tbaa !7, !alias.scope !4516, !noalias !4504 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.s
  br i1 %i.ah, label %.body.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.i.sink.split

bb.f:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e

_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #36, !noalias !4504
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 400 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24, !noalias !4504 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.m, align 8, !tbaa !27, !noalias !4504
  store <2 x ptr> %i.am, ptr %14, align 16, !tbaa !27, !noalias !4504
  %.not.i.i.i25.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i25.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !4504
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !3
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ar = atomicrmw volatile add ptr %i.an, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h, %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #36, !noalias !4504
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false), !noalias !4504
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36, !noalias !4504
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.as, ptr %7, align 8, !tbaa !76, !noalias !4504
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !16, !noalias !4504
  store i8 0, ptr %i.as, align 8, !tbaa !28, !noalias !4504
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i unwind label %bb.j

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.av = load ptr, ptr %7, align 8, !tbaa !7, !noalias !4504 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.as
  br i1 %i.aw, label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i
  %i.ax = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !4504
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #40
  br label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %7, align 8, !tbaa !7, !noalias !4504 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.as
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !4504
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36, !noalias !4504
  br label %.body29.i.i.i.i.i.i.i

_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36, !noalias !4504
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36, !noalias !4504
  invoke void @_ZN8facebook5velox4core12TypeAnalysisIiE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.av

.noexc.i.i.i.i.i.i.i:                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36, !noalias !4504
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36, !noalias !4504
  call void @llvm.experimental.noalias.scope.decl(metadata !4518)
  call void @llvm.experimental.noalias.scope.decl(metadata !4521)
  call void @llvm.experimental.noalias.scope.decl(metadata !4524)
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  store ptr %i.be, ptr %9, align 8, !tbaa !76, !alias.scope !4527, !noalias !4504
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 0, ptr %i.bf, align 8, !tbaa !16, !alias.scope !4527, !noalias !4504
  store i8 0, ptr %i.be, align 8, !tbaa !28, !alias.scope !4527, !noalias !4504
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !127, !noalias !4528 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  %i.bh = load ptr, ptr %i.w, align 8, !noalias !4528 ; 2 uses
  %i.bi = icmp ugt ptr %i.bg, %i.bh
  %.08.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bi, ptr %i.bg, ptr %i.bh ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i26.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i26.i.i.i.i.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !132, !noalias !4528 ; 2 uses
  %i.bl = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.bk, i64 noundef %i.bn)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %9, align 8, !tbaa !7, !alias.scope !4527, !noalias !4504 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.be
  br i1 %i.br, label %.body29.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.bs = load i64, ptr %i.be, align 8, !tbaa !28, !alias.scope !4527, !noalias !4504
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #40
  br label %.body29.i.i.i.i.i.i.i

bb.m:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.bu)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l
end_hunk_6
begin_hunk_7_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS3_10VectorExecEEESD_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSG_ILm5EEEEENS0_15ConstantCheckerIJiSJ_EEEJiSJ_EEEE7iterateIJNS3_12VectorReaderIiEENSP_ISJ_EEEEEvRNSN_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISY_EEvRKNS0_17SelectivityVectorESX_EUlSX_E_EEvS12_SX_T0_EUlSX_E_EEvPKmiibSX_ENKUlimE_clEim:bb.a
  %i.ea = extractvalue { ptr, i32 } %eh.lpad-body, 1 ; 2 uses
  %i.eb = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #36
  %i.ec = icmp eq i32 %i.ea, %i.eb
  br i1 %i.ec, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.body
  %i.ed = call ptr @__cxa_begin_catch(ptr %i.dz) #36
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !624 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 144
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !7  ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 152
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !16
  %i.ek = icmp eq i64 %i.ej, 4
  br i1 %i.ek, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.ab
  %i.el = load i8, ptr %i.eh, align 1, !tbaa !28
  %or.cond.not.i.i.i = icmp eq i8 %i.el, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 1
  %i.en = load i8, ptr %i.em, align 1, !tbaa !28
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.en, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eh, i64 2
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !28
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.ep, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eh, i64 3
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !28
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.er, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %12) #36
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.w, i32 noundef %i.v, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.aj unwind label %bb.al

.loopexit:                                        ; preds = %bb.ab, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #41
          to label %bb.ap unwind label %bb.ai

bb.ac:                                            ; preds = %.body
  %i.es = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #36
  %i.et = icmp eq i32 %i.ea, %i.es
  br i1 %i.et, label %bb.ad, label %.loopexit71

bb.ad:                                            ; preds = %bb.ac
  %i.eu = call ptr @__cxa_begin_catch(ptr %i.dz) #36 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %11) #36
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.w, i32 noundef %i.v, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.ev = load ptr, ptr %11, align 8, !tbaa !416
  %.not.i55 = icmp eq ptr %i.ev, null
  br i1 %.not.i55, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #36
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEESB_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSE_ILm5EEEEENS0_15ConstantCheckerIJiSH_EEEJiSH_EEEE7iterateIJNS1_12VectorReaderIiEENSN_ISH_EEEEEvRNSL_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit

bb.ag:                                            ; preds = %bb.ad
  %i.ew = landingpad { ptr, i32 }
          cleanup
  %i.ex = load ptr, ptr %11, align 8, !tbaa !416
  %.not.i56 = icmp eq ptr %i.ex, null
  br i1 %.not.i56, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit57, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #36
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit57

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit57: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  invoke void @__cxa_end_catch()
          to label %.loopexit71 unwind label %bb.ao

bb.ai:                                            ; preds = %.loopexit
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.aj:                                            ; preds = %tailrecurse.i.i.i.i.3
  %i.ez = load ptr, ptr %12, align 8, !tbaa !416
  %.not.i58 = icmp eq ptr %i.ez, null
  br i1 %.not.i58, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit59, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #36
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit59

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit59: ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEESB_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSE_ILm5EEEEENS0_15ConstantCheckerIJiSH_EEEJiSH_EEEE7iterateIJNS1_12VectorReaderIiEENSN_ISH_EEEEEvRNSL_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit

bb.al:                                            ; preds = %tailrecurse.i.i.i.i.3
  %i.fa = landingpad { ptr, i32 }
          cleanup
  %i.fb = load ptr, ptr %12, align 8, !tbaa !416
  %.not.i60 = icmp eq ptr %i.fb, null
  br i1 %.not.i60, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit61, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #36
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit61

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit61: ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  br label %bb.an

bb.an:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit61, %bb.ai
  %.pn.i = phi { ptr, i32 } [ %i.fa, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit61 ], [ %i.ey, %bb.ai ]
  invoke void @__cxa_end_catch()
          to label %.loopexit71 unwind label %bb.ao

.loopexit71:                                      ; preds = %bb.ac, %bb.an, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit57
  %.merged.i = phi { ptr, i32 } [ %i.ew, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit57 ], [ %.pn.i, %bb.an ], [ %eh.lpad-body, %bb.ac ]
  resume { ptr, i32 } %.merged.i

bb.ao:                                            ; preds = %bb.an, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit57
  %i.fc = landingpad { ptr, i32 }
          catch ptr null
  %i.fd = extractvalue { ptr, i32 } %i.fc, 0
  call void @__clang_call_terminate(ptr %i.fd) #42
  unreachable

bb.ap:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEESB_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSE_ILm5EEEEENS0_15ConstantCheckerIJiSH_EEEJiSH_EEEE7iterateIJNS1_12VectorReaderIiEENSN_ISH_EEEEEvRNSL_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit54, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit59
  %i.fe = add i64 %.077, -1
  %i.ff = and i64 %i.fe, %.077                    ; 2 uses
  %.not10 = icmp eq i64 %i.ff, 0
  br i1 %.not10, label %.loopexit70, label %bb.b, !llvm.loop !5084

.loopexit70:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEESB_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSE_ILm5EEEEENS0_15ConstantCheckerIJiSH_EEEJiSH_EEEE7iterateIJNS1_12VectorReaderIiEENSN_ISH_EEEEEvRNSL_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISW_EEvRKNS0_17SelectivityVectorESV_EUlSV_E_EEvS10_SV_T0_ENKUlSV_E_clIiEEDaSV_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define internal void @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEEENS0_12ShortDecimalINS0_15IntegerVariableILm1EEENSB_ILm5EEEEENS0_15ConstantCheckerIJiSE_EEEJiSE_EE7getNameB5cxx11Ev(ptr dead_on_unwind noalias nofree readnone sret(%"class.std::__cxx11::basic_string") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #36 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.33)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #36
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZSt11make_sharedIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_4exec10VectorExecEEENS1_12ShortDecimalINS1_15IntegerVariableILm1EEENSC_ILm5EEEEENS1_15ConstantCheckerIJiSF_EEEJiSF_EEEJRbRKSt6vectorINS8_17SignatureVariableESaISM_EEEESt10shared_ptrIT_EDpOT0_(i8 %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.facebook::velox::exec::FunctionSignatureBuilder", align 8 ; 16 uses
  %2 = alloca %"class.std::shared_ptr.15", align 16 ; 7 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"struct.facebook::velox::core::TypeAnalysis.2061", align 1 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"struct.facebook::velox::core::TypeAnalysis.45", align 1 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::vector", align 16     ; 13 uses
  %11 = alloca %"struct.facebook::velox::core::TypeAnalysisResults", align 8 ; 31 uses
  %12 = alloca %"struct.facebook::velox::core::TypeAnalysis.2061", align 1 ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::shared_ptr.18", align 16 ; 7 uses
  %15 = alloca %"class.std::vector.21", align 8   ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"struct.facebook::velox::core::SimpleFunctionMetadata<facebook::velox::functions::iceberg::(anonymous namespace)::TruncateFunction<facebook::velox::exec::VectorExec>, facebook::velox::ShortDecimal<facebook::velox::IntegerVariable<1>, facebook::velox::IntegerVariable<5>>, facebook::velox::ConstantChecker<int, facebook::velox::ShortDecimal<facebook::velox::IntegerVariable<1>, facebook::velox::IntegerVariable<5>>>, int, facebook::velox::ShortDecimal<facebook::velox::IntegerVariable<1>, facebook::velox::IntegerVariable<5>>>::SignatureTypesAnalysisResults", align 16 ; 31 uses
  store ptr null, ptr @_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_10VectorExecEEENS0_12ShortDecimalINS0_15IntegerVariableILm1EEENSC_ILm5EEEEENS0_15ConstantCheckerIJiSF_EEEJiSF_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISQ_EEE8instance, align 16, !tbaa !5085
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #39, !noalias !5088 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !35
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS1_4exec10VectorExecEEENS1_12ShortDecimalINS1_15IntegerVariableILm1EEENSC_ILm5EEEEENS1_15ConstantCheckerIJiSF_EEEJiSF_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %18 = and i8 %.0.val, 1
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions7iceberg12_GLOBAL__N_116TruncateFunctionINS0_4exec10VectorExecEEENS0_12ShortDecimalINS0_15IntegerVariableILm1EEENSB_ILm5EEEEENS0_15ConstantCheckerIJiSE_EEEJiSE_EEE, i64 16), ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %18, ptr %i.e, align 8, !tbaa !5091
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5093)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36, !noalias !5093
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !5093
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36, !noalias !5093
  store i8 0, ptr %11, align 8, !tbaa !103, !noalias !5093
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 1
  store i8 0, ptr %i.i, align 1, !tbaa !105, !noalias !5093
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 2
  store i8 0, ptr %i.j, align 2, !tbaa !106, !noalias !5093
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !107, !noalias !5093
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.l)
          to label %bb.b unwind label %bb.at, !noalias !5093

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 392 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !noalias !5093
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 416 ; 10 uses
  store i32 0, ptr %i.n, align 8, !tbaa !108, !noalias !5093
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 424 ; 5 uses
  store ptr null, ptr %i.o, align 8, !tbaa !113, !noalias !5093
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 432 ; 5 uses
  store ptr %i.n, ptr %i.p, align 8, !tbaa !114, !noalias !5093
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 440 ; 4 uses
  store ptr %i.n, ptr %i.q, align 8, !tbaa !115, !noalias !5093
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 448 ; 6 uses
  store i64 0, ptr %i.r, align 8, !tbaa !116, !noalias !5093
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36, !noalias !5093
  invoke void @_ZN8facebook5velox4core12TypeAnalysisINS0_12ShortDecimalINS0_15IntegerVariableILm1EEENS4_ILm5EEEEEE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %bb.c unwind label %bb.au

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36, !noalias !5093
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36, !noalias !5093
  call void @llvm.experimental.noalias.scope.decl(metadata !5096)
  call void @llvm.experimental.noalias.scope.decl(metadata !5099)
  call void @llvm.experimental.noalias.scope.decl(metadata !5102)
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 12 uses
  store ptr %i.s, ptr %13, align 8, !tbaa !76, !alias.scope !5105, !noalias !5093
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i64 0, ptr %i.t, align 8, !tbaa !16, !alias.scope !5105, !noalias !5093
  store i8 0, ptr %i.s, align 8, !tbaa !28, !alias.scope !5105, !noalias !5093
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !127, !noalias !5106 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !noalias !5106 ; 2 uses
  %i.y = icmp ugt ptr %i.v, %i.x
  %.08.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.y, ptr %i.v, ptr %i.x ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !132, !noalias !5106 ; 2 uses
  %i.ab = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef %i.aa, i64 noundef %i.ad)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %13, align 8, !tbaa !7, !alias.scope !5105, !noalias !5093 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.s
  br i1 %i.ah, label %.body.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.i.sink.split

bb.f:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e

_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #36, !noalias !5093
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 400 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24, !noalias !5093 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.m, align 8, !tbaa !27, !noalias !5093
  store <2 x ptr> %i.am, ptr %14, align 16, !tbaa !27, !noalias !5093
  %.not.i.i.i25.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i25.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !5093
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !3
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ar = atomicrmw volatile add ptr %i.an, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h, %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #36, !noalias !5093
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false), !noalias !5093
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36, !noalias !5093
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.as, ptr %7, align 8, !tbaa !76, !noalias !5093
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !16, !noalias !5093
  store i8 0, ptr %i.as, align 8, !tbaa !28, !noalias !5093
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i unwind label %bb.j

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.av = load ptr, ptr %7, align 8, !tbaa !7, !noalias !5093 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.as
  br i1 %i.aw, label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i
  %i.ax = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !5093
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #40
  br label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %7, align 8, !tbaa !7, !noalias !5093 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.as
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !5093
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36, !noalias !5093
  br label %.body29.i.i.i.i.i.i.i

_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36, !noalias !5093
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36, !noalias !5093
  invoke void @_ZN8facebook5velox4core12TypeAnalysisIiE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.av

.noexc.i.i.i.i.i.i.i:                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36, !noalias !5093
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36, !noalias !5093
  call void @llvm.experimental.noalias.scope.decl(metadata !5107)
  call void @llvm.experimental.noalias.scope.decl(metadata !5110)
  call void @llvm.experimental.noalias.scope.decl(metadata !5113)
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  store ptr %i.be, ptr %9, align 8, !tbaa !76, !alias.scope !5116, !noalias !5093
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 0, ptr %i.bf, align 8, !tbaa !16, !alias.scope !5116, !noalias !5093
  store i8 0, ptr %i.be, align 8, !tbaa !28, !alias.scope !5116, !noalias !5093
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !127, !noalias !5117 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  %i.bh = load ptr, ptr %i.w, align 8, !noalias !5117 ; 2 uses
  %i.bi = icmp ugt ptr %i.bg, %i.bh
  %.08.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bi, ptr %i.bg, ptr %i.bh ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i26.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i26.i.i.i.i.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !132, !noalias !5117 ; 2 uses
  %i.bl = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.bk, i64 noundef %i.bn)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %9, align 8, !tbaa !7, !alias.scope !5116, !noalias !5093 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.be
  br i1 %i.br, label %.body29.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.bs = load i64, ptr %i.be, align 8, !tbaa !28, !alias.scope !5116, !noalias !5093
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #40
  br label %.body29.i.i.i.i.i.i.i

bb.m:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.bu)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l
end_hunk_7
