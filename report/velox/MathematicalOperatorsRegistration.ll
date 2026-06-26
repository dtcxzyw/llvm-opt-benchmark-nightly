inline.NumInlined: 29983
inline.NumDeleted: 8059
begin_hunk_0_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev:bb.a

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !17
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #35
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN8facebook5velox4exec17SignatureVariableESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !40     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN8facebook5velox4exec17SignatureVariableES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN8facebook5velox4exec17SignatureVariableEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.o, %_ZSt8_DestroyIN8facebook5velox4exec17SignatureVariableEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !7    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !28
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = load ptr, ptr %.05.i.i, align 8, !tbaa !7 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZSt8_DestroyIN8facebook5velox4exec17SignatureVariableEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !28
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #35
  br label %_ZSt8_DestroyIN8facebook5velox4exec17SignatureVariableEEvPT_.exit.i.i

_ZSt8_DestroyIN8facebook5velox4exec17SignatureVariableEEvPT_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 72 ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN8facebook5velox4exec17SignatureVariableES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !44

_ZSt8_DestroyIPN8facebook5velox4exec17SignatureVariableES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN8facebook5velox4exec17SignatureVariableEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !40
  br label %_ZSt8_DestroyIPN8facebook5velox4exec17SignatureVariableES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPN8facebook5velox4exec17SignatureVariableES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN8facebook5velox4exec17SignatureVariableES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.p = phi ptr [ %.pr, %_ZSt8_DestroyIPN8facebook5velox4exec17SignatureVariableES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.p, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN8facebook5velox4exec17SignatureVariableESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN8facebook5velox4exec17SignatureVariableES3_EvT_S5_RSaIT0_E.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !46
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #35
  br label %_ZNSt12_Vector_baseIN8facebook5velox4exec17SignatureVariableESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseIN8facebook5velox4exec17SignatureVariableESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN8facebook5velox4exec17SignatureVariableES3_EvT_S5_RSaIT0_E.exit, %bb.b
  ret void
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN8facebook5velox4exec22mutableSimpleFunctionsEv() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare noundef zeroext i1 @_ZN8facebook5velox4exec22SimpleFunctionRegistry24registerFunctionInternalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrIKNS0_4core23ISimpleFunctionMetadataEERKSt8functionIFSt10unique_ptrINS1_28SimpleFunctionAdapterFactoryESt14default_deleteISK_EEvEEb(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress noreturn uwtable
define internal void @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_112PlusFunctionINS0_4exec10VectorExecEEEdNS0_15ConstantCheckerIJddEEEJddEE7getNameB5cxx11Ev(ptr dead_on_unwind noalias nofree readnone sret(%"class.std::__cxx11::basic_string") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.34)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #33
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
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #33, !inline_history !125
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #33, !inline_history !125
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
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #33
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZSt11make_sharedIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_112PlusFunctionINS1_4exec10VectorExecEEEdNS1_15ConstantCheckerIJddEEEJddEEEJRbRKSt6vectorINS7_17SignatureVariableESaISG_EEEESt10shared_ptrIT_EDpOT0_(i8 %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.facebook::velox::exec::FunctionSignatureBuilder", align 8 ; 16 uses
  %2 = alloca %"class.std::shared_ptr.15", align 16 ; 7 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"struct.facebook::velox::core::TypeAnalysis", align 1 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"struct.facebook::velox::core::TypeAnalysis", align 1 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::vector", align 16     ; 13 uses
  %11 = alloca %"struct.facebook::velox::core::TypeAnalysisResults", align 8 ; 31 uses
  %12 = alloca %"struct.facebook::velox::core::TypeAnalysis", align 1 ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::shared_ptr.18", align 16 ; 7 uses
  %15 = alloca %"class.std::vector.21", align 8   ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"struct.facebook::velox::core::SimpleFunctionMetadata<facebook::velox::functions::(anonymous namespace)::PlusFunction<facebook::velox::exec::VectorExec>, double, facebook::velox::ConstantChecker<double, double>, double, double>::SignatureTypesAnalysisResults", align 16 ; 31 uses
  store ptr null, ptr @_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_112PlusFunctionINS1_10VectorExecEEEdNS0_15ConstantCheckerIJddEEEJddEEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISK_EEE8instance, align 16, !tbaa !126
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #34, !noalias !129 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !35
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_112PlusFunctionINS1_4exec10VectorExecEEEdNS1_15ConstantCheckerIJddEEEJddEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_112PlusFunctionINS0_4exec10VectorExecEEEdNS0_15ConstantCheckerIJddEEEJddEEE, i64 16), ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %.0.val, ptr %i.e, align 8, !tbaa !132
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33, !noalias !147
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !147
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33, !noalias !147
  store i8 0, ptr %11, align 8, !tbaa !150, !noalias !147
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 1
  store i8 0, ptr %i.i, align 1, !tbaa !152, !noalias !147
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 2
  store i8 0, ptr %i.j, align 2, !tbaa !153, !noalias !147
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !154, !noalias !147
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.l)
          to label %bb.b unwind label %bb.at, !noalias !147

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 392 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !noalias !147
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 416 ; 10 uses
  store i32 0, ptr %i.n, align 8, !tbaa !155, !noalias !147
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 424 ; 5 uses
  store ptr null, ptr %i.o, align 8, !tbaa !160, !noalias !147
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 432 ; 5 uses
  store ptr %i.n, ptr %i.p, align 8, !tbaa !161, !noalias !147
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 440 ; 4 uses
  store ptr %i.n, ptr %i.q, align 8, !tbaa !162, !noalias !147
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 448 ; 6 uses
  store i64 0, ptr %i.r, align 8, !tbaa !163, !noalias !147
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33, !noalias !147
  invoke void @_ZN8facebook5velox4core12TypeAnalysisIdE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %bb.c unwind label %bb.au

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33, !noalias !147
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33, !noalias !147
  call void @llvm.experimental.noalias.scope.decl(metadata !164)
  call void @llvm.experimental.noalias.scope.decl(metadata !167)
  call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 12 uses
  store ptr %i.s, ptr %13, align 8, !tbaa !173, !alias.scope !174, !noalias !147
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i64 0, ptr %i.t, align 8, !tbaa !16, !alias.scope !174, !noalias !147
  store i8 0, ptr %i.s, align 8, !tbaa !28, !alias.scope !174, !noalias !147
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !179 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !noalias !179 ; 2 uses
  %i.y = icmp ugt ptr %i.v, %i.x
  %.08.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.y, ptr %i.v, ptr %i.x ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !180, !noalias !179 ; 2 uses
  %i.ab = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef %i.aa, i64 noundef %i.ad)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %13, align 8, !tbaa !7, !alias.scope !174, !noalias !147 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.s
  br i1 %i.ah, label %.body.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.i.sink.split

bb.f:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e

_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33, !noalias !147
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 400 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24, !noalias !147 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.m, align 8, !tbaa !27, !noalias !147
  store <2 x ptr> %i.am, ptr %14, align 16, !tbaa !27, !noalias !147
  %.not.i.i.i25.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i25.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !147
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
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33, !noalias !147
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false), !noalias !147
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33, !noalias !147
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.as, ptr %7, align 8, !tbaa !173, !noalias !147
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !16, !noalias !147
  store i8 0, ptr %i.as, align 8, !tbaa !28, !noalias !147
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i unwind label %bb.j

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.av = load ptr, ptr %7, align 8, !tbaa !7, !noalias !147 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.as
  br i1 %i.aw, label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i
  %i.ax = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !147
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #35
  br label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %7, align 8, !tbaa !7, !noalias !147 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.as
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !147
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !147
  br label %.body29.i.i.i.i.i.i.i

_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !147
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33, !noalias !147
  invoke void @_ZN8facebook5velox4core12TypeAnalysisIdE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.av

.noexc.i.i.i.i.i.i.i:                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33, !noalias !147
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33, !noalias !147
  call void @llvm.experimental.noalias.scope.decl(metadata !181)
  call void @llvm.experimental.noalias.scope.decl(metadata !184)
  call void @llvm.experimental.noalias.scope.decl(metadata !187)
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  store ptr %i.be, ptr %9, align 8, !tbaa !173, !alias.scope !190, !noalias !147
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 0, ptr %i.bf, align 8, !tbaa !16, !alias.scope !190, !noalias !147
  store i8 0, ptr %i.be, align 8, !tbaa !28, !alias.scope !190, !noalias !147
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !191 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  %i.bh = load ptr, ptr %i.w, align 8, !noalias !191 ; 2 uses
  %i.bi = icmp ugt ptr %i.bg, %i.bh
  %.08.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bi, ptr %i.bg, ptr %i.bh ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i26.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i26.i.i.i.i.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !180, !noalias !191 ; 2 uses
  %i.bl = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.bk, i64 noundef %i.bn)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %9, align 8, !tbaa !7, !alias.scope !190, !noalias !147 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.be
  br i1 %i.br, label %.body29.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.bs = load i64, ptr %i.be, align 8, !tbaa !28, !alias.scope !190, !noalias !147
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #35
  br label %.body29.i.i.i.i.i.i.i

bb.m:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.bu)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l
end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_:bb.a
  %i.bu = icmp eq i64 %index.next72, %n.vec63
  br i1 %i.bu, label %middle.block73, label %vector.body64, !llvm.loop !955

middle.block73:                                   ; preds = %vector.body64
  %cmp.n74 = icmp eq i64 %i.bb, %n.vec63
  br i1 %cmp.n74, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %vec.epilog.iter.check79

vec.epilog.iter.check79:                          ; preds = %middle.block73
  %min.epilog.iters.check80 = icmp eq i64 %n.mod.vf62, 0
  br i1 %min.epilog.iters.check80, label %.lr.ph.i.i.i17.preheader, label %vec.epilog.ph81, !prof !574

vec.epilog.ph81:                                  ; preds = %vector.main.loop.iter.check59, %vec.epilog.iter.check79
  %vec.epilog.resume.val75 = phi i64 [ %n.vec63, %vec.epilog.iter.check79 ], [ 0, %vector.main.loop.iter.check59 ]
  %n.vec83 = and i64 %i.bb, 4611686018427387900   ; 3 uses
  %i.bv = shl i64 %n.vec83, 3                     ; 2 uses
  %i.bw = getelementptr i8, ptr %i.ax, i64 %i.bv  ; 2 uses
  %i.bx = getelementptr i8, ptr %1, i64 %i.bv
  br label %vec.epilog.vector.body84

vec.epilog.vector.body84:                         ; preds = %vec.epilog.vector.body84, %vec.epilog.ph81
  %index85 = phi i64 [ %vec.epilog.resume.val75, %vec.epilog.ph81 ], [ %index.next89, %vec.epilog.vector.body84 ] ; 2 uses
  %i.by = shl i64 %index85, 3                     ; 2 uses
  %next.gep86 = getelementptr i8, ptr %i.ax, i64 %i.by
  %next.gep87 = getelementptr i8, ptr %1, i64 %i.by ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !945)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !948)
  %wide.load88 = load <4 x i64>, ptr %next.gep87, align 8, !tbaa !701, !alias.scope !950, !noalias !945
  store <4 x i64> %wide.load88, ptr %next.gep86, align 8, !tbaa !701, !alias.scope !953, !noalias !950
  store <4 x ptr> splat (ptr null), ptr %next.gep87, align 8, !tbaa !701, !alias.scope !950, !noalias !945
  %index.next89 = add nuw i64 %index85, 4         ; 2 uses
  %i.bz = icmp eq i64 %index.next89, %n.vec83
  br i1 %i.bz, label %vec.epilog.middle.block90, label %vec.epilog.vector.body84, !llvm.loop !956

vec.epilog.middle.block90:                        ; preds = %vec.epilog.vector.body84
  %cmp.n91 = icmp eq i64 %i.bb, %n.vec83
  br i1 %cmp.n91, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %vector.memcheck52, %iter.check77, %vec.epilog.iter.check79, %vec.epilog.middle.block90
  %.012.i.i.i18.ph = phi ptr [ %i.ax, %iter.check77 ], [ %i.ax, %vector.memcheck52 ], [ %i.bi, %vec.epilog.iter.check79 ], [ %i.bw, %vec.epilog.middle.block90 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %iter.check77 ], [ %1, %vector.memcheck52 ], [ %i.bj, %vec.epilog.iter.check79 ], [ %i.bx, %vec.epilog.middle.block90 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.cc, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.cb, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !945)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !948)
  %i.ca = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !701, !alias.scope !948, !noalias !945
  store i64 %i.ca, ptr %.012.i.i.i18, align 8, !tbaa !701, !alias.scope !945, !noalias !948
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !701, !alias.scope !948, !noalias !945
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.cb, %i.c
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !957

_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block73, %vec.epilog.middle.block90, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ax, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ], [ %i.bw, %vec.epilog.middle.block90 ], [ %i.bi, %middle.block73 ], [ %i.cc, %.lr.ph.i.i.i17 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.d, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !930
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = sub i64 %i.cf, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.cg) #35
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, %bb.c
  store ptr %i.q, ptr %0, align 8, !tbaa !931
  store ptr %.0.lcssa.i.i.i21, ptr %i.b, align 8, !tbaa !751
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.m
  store ptr %i.ch, ptr %i.cd, align 8, !tbaa !930
  ret void
}

declare void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(94), ptr noundef nonnull align 8 dereferenceable(38), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #29

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = icmp eq ptr %i.a, %i.b                   ; 2 uses
  %i.d = load i64, ptr %i.b, align 8              ; 2 uses
  %i.e = select i1 %i.c, i64 15, i64 %i.d         ; 2 uses
  %.not = icmp ugt i64 %1, %i.e
  br i1 %.not, label %bb.a, label %bb.g

bb.a:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.f = icmp slt i64 %1, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = shl nuw i64 %i.e, 1                      ; 2 uses
  %i.h = icmp ult i64 %1, %i.g
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 9223372036854775807)
  %.0 = select i1 %i.h, i64 %spec.store.select.i, i64 %1 ; 2 uses
  %i.i = add nuw i64 %.0, 1                       ; 2 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !39

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #36
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.c
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #34 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !16   ; 2 uses
  %i.n = add i64 %i.m, 1                          ; 2 uses
  switch i64 %i.n, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  ]

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.o = load i8, ptr %i.a, align 1, !tbaa !28
  store i8 %i.o, ptr %i.k, align 1, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.a, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.e, %bb.f
  br i1 %i.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.p = icmp ult i64 %i.m, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.q = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.q) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.k, ptr %0, align 8, !tbaa !7
  store i64 %.0, ptr %i.b, align 8, !tbaa !28
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define internal void @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_112PlusFunctionINS0_4exec10VectorExecEEEfNS0_15ConstantCheckerIJffEEEJffEE7getNameB5cxx11Ev(ptr dead_on_unwind noalias nofree readnone sret(%"class.std::__cxx11::basic_string") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.34)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #33
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZSt11make_sharedIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_112PlusFunctionINS1_4exec10VectorExecEEEfNS1_15ConstantCheckerIJffEEEJffEEEJRbRKSt6vectorINS7_17SignatureVariableESaISG_EEEESt10shared_ptrIT_EDpOT0_(i8 %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.facebook::velox::exec::FunctionSignatureBuilder", align 8 ; 16 uses
  %2 = alloca %"class.std::shared_ptr.15", align 16 ; 7 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"struct.facebook::velox::core::TypeAnalysis.925", align 1 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"struct.facebook::velox::core::TypeAnalysis.925", align 1 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::vector", align 16     ; 13 uses
  %11 = alloca %"struct.facebook::velox::core::TypeAnalysisResults", align 8 ; 31 uses
  %12 = alloca %"struct.facebook::velox::core::TypeAnalysis.925", align 1 ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::shared_ptr.18", align 16 ; 7 uses
  %15 = alloca %"class.std::vector.21", align 8   ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"struct.facebook::velox::core::SimpleFunctionMetadata<facebook::velox::functions::(anonymous namespace)::PlusFunction<facebook::velox::exec::VectorExec>, float, facebook::velox::ConstantChecker<float, float>, float, float>::SignatureTypesAnalysisResults", align 16 ; 31 uses
  store ptr null, ptr @_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_112PlusFunctionINS1_10VectorExecEEEfNS0_15ConstantCheckerIJffEEEJffEEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISK_EEE8instance, align 16, !tbaa !958
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #34, !noalias !961 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !35
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_112PlusFunctionINS1_4exec10VectorExecEEEfNS1_15ConstantCheckerIJffEEEJffEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_112PlusFunctionINS0_4exec10VectorExecEEEfNS0_15ConstantCheckerIJffEEEJffEEE, i64 16), ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %.0.val, ptr %i.e, align 8, !tbaa !964
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !966)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33, !noalias !966
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !966
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33, !noalias !966
  store i8 0, ptr %11, align 8, !tbaa !150, !noalias !966
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 1
  store i8 0, ptr %i.i, align 1, !tbaa !152, !noalias !966
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 2
  store i8 0, ptr %i.j, align 2, !tbaa !153, !noalias !966
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !154, !noalias !966
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.l)
          to label %bb.b unwind label %bb.at, !noalias !966

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 392 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !noalias !966
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 416 ; 10 uses
  store i32 0, ptr %i.n, align 8, !tbaa !155, !noalias !966
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 424 ; 5 uses
  store ptr null, ptr %i.o, align 8, !tbaa !160, !noalias !966
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 432 ; 5 uses
  store ptr %i.n, ptr %i.p, align 8, !tbaa !161, !noalias !966
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 440 ; 4 uses
  store ptr %i.n, ptr %i.q, align 8, !tbaa !162, !noalias !966
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 448 ; 6 uses
  store i64 0, ptr %i.r, align 8, !tbaa !163, !noalias !966
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33, !noalias !966
  invoke void @_ZN8facebook5velox4core12TypeAnalysisIfE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %bb.c unwind label %bb.au

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33, !noalias !966
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33, !noalias !966
  call void @llvm.experimental.noalias.scope.decl(metadata !969)
  call void @llvm.experimental.noalias.scope.decl(metadata !972)
  call void @llvm.experimental.noalias.scope.decl(metadata !975)
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 12 uses
  store ptr %i.s, ptr %13, align 8, !tbaa !173, !alias.scope !978, !noalias !966
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i64 0, ptr %i.t, align 8, !tbaa !16, !alias.scope !978, !noalias !966
  store i8 0, ptr %i.s, align 8, !tbaa !28, !alias.scope !978, !noalias !966
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !979 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !noalias !979 ; 2 uses
  %i.y = icmp ugt ptr %i.v, %i.x
  %.08.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.y, ptr %i.v, ptr %i.x ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !180, !noalias !979 ; 2 uses
  %i.ab = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef %i.aa, i64 noundef %i.ad)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %13, align 8, !tbaa !7, !alias.scope !978, !noalias !966 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.s
  br i1 %i.ah, label %.body.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.i.sink.split

bb.f:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e

_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33, !noalias !966
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 400 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24, !noalias !966 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.m, align 8, !tbaa !27, !noalias !966
  store <2 x ptr> %i.am, ptr %14, align 16, !tbaa !27, !noalias !966
  %.not.i.i.i25.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i25.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !966
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
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33, !noalias !966
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false), !noalias !966
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33, !noalias !966
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.as, ptr %7, align 8, !tbaa !173, !noalias !966
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !16, !noalias !966
  store i8 0, ptr %i.as, align 8, !tbaa !28, !noalias !966
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i unwind label %bb.j

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.av = load ptr, ptr %7, align 8, !tbaa !7, !noalias !966 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.as
  br i1 %i.aw, label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i
  %i.ax = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !966
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #35
  br label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %7, align 8, !tbaa !7, !noalias !966 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.as
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !966
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !966
  br label %.body29.i.i.i.i.i.i.i

_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !966
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33, !noalias !966
  invoke void @_ZN8facebook5velox4core12TypeAnalysisIfE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.av

.noexc.i.i.i.i.i.i.i:                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33, !noalias !966
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33, !noalias !966
  call void @llvm.experimental.noalias.scope.decl(metadata !980)
  call void @llvm.experimental.noalias.scope.decl(metadata !983)
  call void @llvm.experimental.noalias.scope.decl(metadata !986)
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  store ptr %i.be, ptr %9, align 8, !tbaa !173, !alias.scope !989, !noalias !966
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 0, ptr %i.bf, align 8, !tbaa !16, !alias.scope !989, !noalias !966
  store i8 0, ptr %i.be, align 8, !tbaa !28, !alias.scope !989, !noalias !966
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !990 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  %i.bh = load ptr, ptr %i.w, align 8, !noalias !990 ; 2 uses
  %i.bi = icmp ugt ptr %i.bg, %i.bh
  %.08.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bi, ptr %i.bg, ptr %i.bh ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i26.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i26.i.i.i.i.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !180, !noalias !990 ; 2 uses
  %i.bl = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.bk, i64 noundef %i.bn)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %9, align 8, !tbaa !7, !alias.scope !989, !noalias !966 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.be
  br i1 %i.br, label %.body29.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.bs = load i64, ptr %i.be, align 8, !tbaa !28, !alias.scope !989, !noalias !966
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #35
  br label %.body29.i.i.i.i.i.i.i

bb.m:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.bu)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l
end_hunk_1
begin_hunk_2_@_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE:bb.a
  %i.ag = load ptr, ptr %0, align 8, !tbaa !7
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.t
  store i8 0, ptr %i.ah, align 1, !tbaa !28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not20 = icmp eq ptr %0, %1
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.022 = phi ptr [ %i.o, %bb.f ], [ %2, %bb.a ]  ; 6 uses
  %.01221 = phi ptr [ %i.n, %bb.f ], [ %0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.022, i64 16 ; 3 uses
  store ptr %i.a, ptr %.022, align 8, !tbaa !173
  %i.b = load ptr, ptr %.01221, align 8, !tbaa !7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.01221, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16   ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i.i

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %.noexc.i.i, label %bb.c

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #36
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.noexc6.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !39

.noexc6.i.i:                                      ; preds = %bb.c
  invoke void @_ZSt17__throw_bad_allocv() #36
          to label %.noexc13 unwind label %.loopexit.split-lp

.noexc13:                                         ; preds = %.noexc6.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.c
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #34
          to label %.noexc14 unwind label %.loopexit ; 2 uses

.noexc14:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.i, ptr %.022, align 8, !tbaa !7
  store i64 %i.d, ptr %i.a, align 8, !tbaa !28
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc14, %.lr.ph
  %i.j = phi ptr [ %i.i, %.noexc14 ], [ %i.a, %.lr.ph ] ; 3 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.b, align 1, !tbaa !28
  store i8 %i.k, ptr %i.j, align 1, !tbaa !28
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.022, i64 8
  store i64 %i.d, ptr %i.l, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %.01221, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.022, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.n, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1238

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

.loopexit.split-lp:                               ; preds = %.noexc.i.i, %.noexc6.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.p = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %i.p) #33 ; 0 uses
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %2, ptr noundef nonnull %.022)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_rethrow() #36
          to label %bb.l unwind label %bb.i

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.o, %bb.f ]
  ret ptr %.0.lcssa

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.r

bb.k:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #37
  unreachable

bb.l:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.f, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !7  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.d = load i64, ptr %i.b, align 8, !tbaa !28
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i, !llvm.loop !48

_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define internal void @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_112PlusFunctionINS0_4exec10VectorExecEEENS0_15IntervalDayTimeENS0_15ConstantCheckerIJS9_S9_EEEJS9_S9_EE7getNameB5cxx11Ev(ptr dead_on_unwind noalias nofree readnone sret(%"class.std::__cxx11::basic_string") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.34)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #33
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZSt11make_sharedIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_112PlusFunctionINS1_4exec10VectorExecEEENS1_15IntervalDayTimeENS1_15ConstantCheckerIJSA_SA_EEEJSA_SA_EEEJRbRKSt6vectorINS7_17SignatureVariableESaISH_EEEESt10shared_ptrIT_EDpOT0_(i8 %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.facebook::velox::exec::FunctionSignatureBuilder", align 8 ; 16 uses
  %2 = alloca %"class.std::shared_ptr.15", align 16 ; 7 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"struct.facebook::velox::core::TypeAnalysis.1121", align 1 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"struct.facebook::velox::core::TypeAnalysis.1121", align 1 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::vector", align 16     ; 13 uses
  %11 = alloca %"struct.facebook::velox::core::TypeAnalysisResults", align 8 ; 31 uses
  %12 = alloca %"struct.facebook::velox::core::TypeAnalysis.1121", align 1 ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::shared_ptr.18", align 16 ; 7 uses
  %15 = alloca %"class.std::vector.21", align 8   ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"struct.facebook::velox::core::SimpleFunctionMetadata<facebook::velox::functions::(anonymous namespace)::PlusFunction<facebook::velox::exec::VectorExec>, facebook::velox::IntervalDayTime, facebook::velox::ConstantChecker<facebook::velox::IntervalDayTime, facebook::velox::IntervalDayTime>, facebook::velox::IntervalDayTime, facebook::velox::IntervalDayTime>::SignatureTypesAnalysisResults", align 16 ; 31 uses
  store ptr null, ptr @_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_112PlusFunctionINS1_10VectorExecEEENS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_SA_EEEJSA_SA_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISL_EEE8instance, align 16, !tbaa !1239
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #34, !noalias !1242 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !35
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_112PlusFunctionINS1_4exec10VectorExecEEENS1_15IntervalDayTimeENS1_15ConstantCheckerIJSA_SA_EEEJSA_SA_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_112PlusFunctionINS0_4exec10VectorExecEEENS0_15IntervalDayTimeENS0_15ConstantCheckerIJS9_S9_EEEJS9_S9_EEE, i64 16), ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %.0.val, ptr %i.e, align 8, !tbaa !1245
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1247)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33, !noalias !1247
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !1247
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33, !noalias !1247
  store i8 0, ptr %11, align 8, !tbaa !150, !noalias !1247
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 1
  store i8 0, ptr %i.i, align 1, !tbaa !152, !noalias !1247
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 2
  store i8 0, ptr %i.j, align 2, !tbaa !153, !noalias !1247
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !154, !noalias !1247
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.l)
          to label %bb.b unwind label %bb.at, !noalias !1247

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 392 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !noalias !1247
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 416 ; 10 uses
  store i32 0, ptr %i.n, align 8, !tbaa !155, !noalias !1247
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 424 ; 5 uses
  store ptr null, ptr %i.o, align 8, !tbaa !160, !noalias !1247
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 432 ; 5 uses
  store ptr %i.n, ptr %i.p, align 8, !tbaa !161, !noalias !1247
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 440 ; 4 uses
  store ptr %i.n, ptr %i.q, align 8, !tbaa !162, !noalias !1247
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 448 ; 6 uses
  store i64 0, ptr %i.r, align 8, !tbaa !163, !noalias !1247
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33, !noalias !1247
  invoke void @_ZN8facebook5velox4core12TypeAnalysisINS0_15IntervalDayTimeEE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %bb.c unwind label %bb.au

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33, !noalias !1247
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33, !noalias !1247
  call void @llvm.experimental.noalias.scope.decl(metadata !1250)
  call void @llvm.experimental.noalias.scope.decl(metadata !1253)
  call void @llvm.experimental.noalias.scope.decl(metadata !1256)
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 12 uses
  store ptr %i.s, ptr %13, align 8, !tbaa !173, !alias.scope !1259, !noalias !1247
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i64 0, ptr %i.t, align 8, !tbaa !16, !alias.scope !1259, !noalias !1247
  store i8 0, ptr %i.s, align 8, !tbaa !28, !alias.scope !1259, !noalias !1247
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !1260 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !noalias !1260 ; 2 uses
  %i.y = icmp ugt ptr %i.v, %i.x
  %.08.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.y, ptr %i.v, ptr %i.x ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !180, !noalias !1260 ; 2 uses
  %i.ab = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef %i.aa, i64 noundef %i.ad)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %13, align 8, !tbaa !7, !alias.scope !1259, !noalias !1247 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.s
  br i1 %i.ah, label %.body.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.i.sink.split

bb.f:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e

_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33, !noalias !1247
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 400 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24, !noalias !1247 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.m, align 8, !tbaa !27, !noalias !1247
  store <2 x ptr> %i.am, ptr %14, align 16, !tbaa !27, !noalias !1247
  %.not.i.i.i25.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i25.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !1247
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
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33, !noalias !1247
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false), !noalias !1247
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33, !noalias !1247
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.as, ptr %7, align 8, !tbaa !173, !noalias !1247
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !16, !noalias !1247
  store i8 0, ptr %i.as, align 8, !tbaa !28, !noalias !1247
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i unwind label %bb.j

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.av = load ptr, ptr %7, align 8, !tbaa !7, !noalias !1247 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.as
  br i1 %i.aw, label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i
  %i.ax = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !1247
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #35
  br label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %7, align 8, !tbaa !7, !noalias !1247 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.as
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !1247
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !1247
  br label %.body29.i.i.i.i.i.i.i

_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !1247
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33, !noalias !1247
  invoke void @_ZN8facebook5velox4core12TypeAnalysisINS0_15IntervalDayTimeEE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.av

.noexc.i.i.i.i.i.i.i:                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33, !noalias !1247
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33, !noalias !1247
  call void @llvm.experimental.noalias.scope.decl(metadata !1261)
  call void @llvm.experimental.noalias.scope.decl(metadata !1264)
  call void @llvm.experimental.noalias.scope.decl(metadata !1267)
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  store ptr %i.be, ptr %9, align 8, !tbaa !173, !alias.scope !1270, !noalias !1247
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 0, ptr %i.bf, align 8, !tbaa !16, !alias.scope !1270, !noalias !1247
  store i8 0, ptr %i.be, align 8, !tbaa !28, !alias.scope !1270, !noalias !1247
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !1271 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  %i.bh = load ptr, ptr %i.w, align 8, !noalias !1271 ; 2 uses
  %i.bi = icmp ugt ptr %i.bg, %i.bh
  %.08.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bi, ptr %i.bg, ptr %i.bh ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i26.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i26.i.i.i.i.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !180, !noalias !1271 ; 2 uses
  %i.bl = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.bk, i64 noundef %i.bn)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %9, align 8, !tbaa !7, !alias.scope !1270, !noalias !1247 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.be
  br i1 %i.br, label %.body29.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.bs = load i64, ptr %i.be, align 8, !tbaa !28, !alias.scope !1270, !noalias !1247
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #35
  br label %.body29.i.i.i.i.i.i.i

bb.m:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.bu)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox13AlignedBuffer8allocateIlEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox13AlignedBuffer13fillNewMemoryIlEEvmmRKSt8optionalIT_E(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.419", align 16 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !767  ; 2 uses
  %.not = icmp ugt i64 %2, %i.b
  br i1 %.not, label %bb.b, label %bb.e, !prof !39

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33, !noalias !1505
  store i64 %2, ptr %4, align 16, !tbaa !28, !alias.scope !1508, !noalias !1505
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.b, ptr %i.c, align 16, !tbaa !28, !alias.scope !1508, !noalias !1505
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.38, i64 11, i64 68, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33, !noalias !1505
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox13AlignedBuffer13fillNewMemoryIlEEvmmRKSt8optionalIT_EE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull @.str.38) #36
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %5, align 8, !tbaa !7      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !28
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.a
  %.not8 = icmp ugt i64 %2, %1
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load i8, ptr %i.j, align 8, !range !235
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond = select i1 %.not8, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.f, label %_ZSt4fillIPllEvT_S1_RKT0_.exit

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.n = load i8, ptr %i.m, align 4, !tbaa !487
  %i.o = and i8 %i.n, 2
  %.not.i = icmp eq i8 %i.o, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9asMutableIlEEPT_v.exit, label %bb.g, !prof !285

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIlEEPT_vE18veloxCheckFailArgs) #36
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIlEEPT_v.exit: ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !755  ; 2 uses
  %i.r = lshr i64 %1, 3                           ; 2 uses
  %i.s = lshr i64 %2, 3                           ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.s
  %i.u = load i64, ptr %3, align 8, !tbaa !209    ; 3 uses
  %.not5.i.i.i = icmp samesign eq i64 %i.r, %i.s
  br i1 %.not5.i.i.i, label %_ZSt4fillIPllEvT_S1_RKT0_.exit, label %iter.check

iter.check:                                       ; preds = %_ZNK8facebook5velox6Buffer9asMutableIlEEPT_v.exit
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.r ; 5 uses
  %i.w = add i64 %2, -8
  %i.x = and i64 %1, -8
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 5 uses
  %min.iters.check = icmp ult i64 %i.y, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check19 = icmp ult i64 %i.y, 120
  br i1 %min.iters.check19, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.aa, 12
  %n.vec = and i64 %i.aa, 4611686018427387888     ; 4 uses
  %i.ab = shl i64 %n.vec, 3
  %i.ac = getelementptr i8, ptr %i.v, i64 %i.ab
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.u, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ad ; 4 uses
  %i.ae = getelementptr i8, ptr %next.gep, i64 32
  %i.af = getelementptr i8, ptr %next.gep, i64 64
  %i.ag = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !209
  store <4 x i64> %broadcast.splat, ptr %i.ae, align 8, !tbaa !209
  store <4 x i64> %broadcast.splat, ptr %i.af, align 8, !tbaa !209
  store <4 x i64> %broadcast.splat, ptr %i.ag, align 8, !tbaa !209
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !1511

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZSt4fillIPllEvT_S1_RKT0_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !574

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec21 = and i64 %i.aa, 4611686018427387900   ; 3 uses
  %i.ai = shl i64 %n.vec21, 3
  %i.aj = getelementptr i8, ptr %i.v, i64 %i.ai
  %broadcast.splatinsert22 = insertelement <4 x i64> poison, i64 %i.u, i64 0
  %broadcast.splat23 = shufflevector <4 x i64> %broadcast.splatinsert22, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index24 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next26, %vec.epilog.vector.body ] ; 2 uses
  %i.ak = shl i64 %index24, 3
  %next.gep25 = getelementptr i8, ptr %i.v, i64 %i.ak
  store <4 x i64> %broadcast.splat23, ptr %next.gep25, align 8, !tbaa !209
  %index.next26 = add nuw i64 %index24, 4         ; 2 uses
  %i.al = icmp eq i64 %index.next26, %n.vec21
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1512

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n27 = icmp eq i64 %i.aa, %n.vec21
  br i1 %cmp.n27, label %_ZSt4fillIPllEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06.i.i.i.ph = phi ptr [ %i.v, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i64 %i.u, ptr %.06.i.i.i, align 8, !tbaa !209
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.t
  br i1 %.not.i.i.i, label %_ZSt4fillIPllEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !1513

_ZSt4fillIPllEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNK8facebook5velox6Buffer9asMutableIlEEPT_v.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define internal void @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_112PlusFunctionINS0_4exec10VectorExecEEENS0_17IntervalYearMonthENS0_15ConstantCheckerIJS9_S9_EEEJS9_S9_EE7getNameB5cxx11Ev(ptr dead_on_unwind noalias nofree readnone sret(%"class.std::__cxx11::basic_string") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.34)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #33
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZSt11make_sharedIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_112PlusFunctionINS1_4exec10VectorExecEEENS1_17IntervalYearMonthENS1_15ConstantCheckerIJSA_SA_EEEJSA_SA_EEEJRbRKSt6vectorINS7_17SignatureVariableESaISH_EEEESt10shared_ptrIT_EDpOT0_(i8 %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.facebook::velox::exec::FunctionSignatureBuilder", align 8 ; 16 uses
  %2 = alloca %"class.std::shared_ptr.15", align 16 ; 7 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"struct.facebook::velox::core::TypeAnalysis.1317", align 1 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"struct.facebook::velox::core::TypeAnalysis.1317", align 1 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::vector", align 16     ; 13 uses
  %11 = alloca %"struct.facebook::velox::core::TypeAnalysisResults", align 8 ; 31 uses
  %12 = alloca %"struct.facebook::velox::core::TypeAnalysis.1317", align 1 ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::shared_ptr.18", align 16 ; 7 uses
  %15 = alloca %"class.std::vector.21", align 8   ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"struct.facebook::velox::core::SimpleFunctionMetadata<facebook::velox::functions::(anonymous namespace)::PlusFunction<facebook::velox::exec::VectorExec>, facebook::velox::IntervalYearMonth, facebook::velox::ConstantChecker<facebook::velox::IntervalYearMonth, facebook::velox::IntervalYearMonth>, facebook::velox::IntervalYearMonth, facebook::velox::IntervalYearMonth>::SignatureTypesAnalysisResults", align 16 ; 31 uses
  store ptr null, ptr @_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_112PlusFunctionINS1_10VectorExecEEENS0_17IntervalYearMonthENS0_15ConstantCheckerIJSA_SA_EEEJSA_SA_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISL_EEE8instance, align 16, !tbaa !1514
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #34, !noalias !1517 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !35
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_112PlusFunctionINS1_4exec10VectorExecEEENS1_17IntervalYearMonthENS1_15ConstantCheckerIJSA_SA_EEEJSA_SA_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_112PlusFunctionINS0_4exec10VectorExecEEENS0_17IntervalYearMonthENS0_15ConstantCheckerIJS9_S9_EEEJS9_S9_EEE, i64 16), ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %.0.val, ptr %i.e, align 8, !tbaa !1520
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1522)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33, !noalias !1522
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !1522
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33, !noalias !1522
  store i8 0, ptr %11, align 8, !tbaa !150, !noalias !1522
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 1
  store i8 0, ptr %i.i, align 1, !tbaa !152, !noalias !1522
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 2
  store i8 0, ptr %i.j, align 2, !tbaa !153, !noalias !1522
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !154, !noalias !1522
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.l)
          to label %bb.b unwind label %bb.at, !noalias !1522

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 392 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !noalias !1522
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 416 ; 10 uses
  store i32 0, ptr %i.n, align 8, !tbaa !155, !noalias !1522
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 424 ; 5 uses
  store ptr null, ptr %i.o, align 8, !tbaa !160, !noalias !1522
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 432 ; 5 uses
  store ptr %i.n, ptr %i.p, align 8, !tbaa !161, !noalias !1522
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 440 ; 4 uses
  store ptr %i.n, ptr %i.q, align 8, !tbaa !162, !noalias !1522
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 448 ; 6 uses
  store i64 0, ptr %i.r, align 8, !tbaa !163, !noalias !1522
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33, !noalias !1522
  invoke void @_ZN8facebook5velox4core12TypeAnalysisINS0_17IntervalYearMonthEE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %bb.c unwind label %bb.au

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33, !noalias !1522
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33, !noalias !1522
  call void @llvm.experimental.noalias.scope.decl(metadata !1525)
  call void @llvm.experimental.noalias.scope.decl(metadata !1528)
  call void @llvm.experimental.noalias.scope.decl(metadata !1531)
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 12 uses
  store ptr %i.s, ptr %13, align 8, !tbaa !173, !alias.scope !1534, !noalias !1522
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i64 0, ptr %i.t, align 8, !tbaa !16, !alias.scope !1534, !noalias !1522
  store i8 0, ptr %i.s, align 8, !tbaa !28, !alias.scope !1534, !noalias !1522
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !1535 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !noalias !1535 ; 2 uses
  %i.y = icmp ugt ptr %i.v, %i.x
  %.08.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.y, ptr %i.v, ptr %i.x ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !180, !noalias !1535 ; 2 uses
  %i.ab = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef %i.aa, i64 noundef %i.ad)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %13, align 8, !tbaa !7, !alias.scope !1534, !noalias !1522 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.s
  br i1 %i.ah, label %.body.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.i.sink.split

bb.f:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e

_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33, !noalias !1522
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 400 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24, !noalias !1522 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.m, align 8, !tbaa !27, !noalias !1522
  store <2 x ptr> %i.am, ptr %14, align 16, !tbaa !27, !noalias !1522
  %.not.i.i.i25.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i25.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !1522
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
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33, !noalias !1522
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false), !noalias !1522
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33, !noalias !1522
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.as, ptr %7, align 8, !tbaa !173, !noalias !1522
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !16, !noalias !1522
  store i8 0, ptr %i.as, align 8, !tbaa !28, !noalias !1522
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i unwind label %bb.j

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.av = load ptr, ptr %7, align 8, !tbaa !7, !noalias !1522 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.as
  br i1 %i.aw, label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i
  %i.ax = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !1522
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #35
  br label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %7, align 8, !tbaa !7, !noalias !1522 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.as
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !1522
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !1522
  br label %.body29.i.i.i.i.i.i.i

_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !1522
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33, !noalias !1522
  invoke void @_ZN8facebook5velox4core12TypeAnalysisINS0_17IntervalYearMonthEE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.av

.noexc.i.i.i.i.i.i.i:                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33, !noalias !1522
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33, !noalias !1522
  call void @llvm.experimental.noalias.scope.decl(metadata !1536)
  call void @llvm.experimental.noalias.scope.decl(metadata !1539)
  call void @llvm.experimental.noalias.scope.decl(metadata !1542)
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  store ptr %i.be, ptr %9, align 8, !tbaa !173, !alias.scope !1545, !noalias !1522
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 0, ptr %i.bf, align 8, !tbaa !16, !alias.scope !1545, !noalias !1522
  store i8 0, ptr %i.be, align 8, !tbaa !28, !alias.scope !1545, !noalias !1522
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !1546 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  %i.bh = load ptr, ptr %i.w, align 8, !noalias !1546 ; 2 uses
  %i.bi = icmp ugt ptr %i.bg, %i.bh
  %.08.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bi, ptr %i.bg, ptr %i.bh ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i26.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i26.i.i.i.i.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !180, !noalias !1546 ; 2 uses
  %i.bl = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.bk, i64 noundef %i.bn)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %9, align 8, !tbaa !7, !alias.scope !1545, !noalias !1522 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.be
  br i1 %i.br, label %.body29.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.bs = load i64, ptr %i.be, align 8, !tbaa !28, !alias.scope !1545, !noalias !1522
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #35
  br label %.body29.i.i.i.i.i.i.i

bb.m:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.bu)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox13AlignedBuffer13fillNewMemoryIiEEvmmRKSt8optionalIT_E(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.419", align 16 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !767  ; 2 uses
  %.not = icmp ugt i64 %2, %i.b
  br i1 %.not, label %bb.b, label %bb.e, !prof !39

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33, !noalias !1767
  store i64 %2, ptr %4, align 16, !tbaa !28, !alias.scope !1770, !noalias !1767
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.b, ptr %i.c, align 16, !tbaa !28, !alias.scope !1770, !noalias !1767
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.38, i64 11, i64 68, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33, !noalias !1767
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox13AlignedBuffer13fillNewMemoryIiEEvmmRKSt8optionalIT_EE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull @.str.38) #36
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %5, align 8, !tbaa !7      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !28
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.a
  %.not8 = icmp ugt i64 %2, %1
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.k = load i8, ptr %i.j, align 4, !range !235
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond = select i1 %.not8, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.f, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.n = load i8, ptr %i.m, align 4, !tbaa !487
  %i.o = and i8 %i.n, 2
  %.not.i = icmp eq i8 %i.o, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit, label %bb.g, !prof !285

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #36
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit: ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !755  ; 2 uses
  %i.r = lshr i64 %1, 2                           ; 2 uses
  %i.s = lshr i64 %2, 2                           ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.s
  %i.u = load i32, ptr %3, align 4, !tbaa !3      ; 3 uses
  %.not5.i.i.i = icmp samesign eq i64 %i.r, %i.s
  br i1 %.not5.i.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %iter.check

iter.check:                                       ; preds = %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.r ; 5 uses
  %i.w = add i64 %2, -4
  %i.x = and i64 %1, -4
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  %i.z = lshr i64 %i.y, 2
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 5 uses
  %min.iters.check = icmp ult i64 %i.y, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check19 = icmp ult i64 %i.y, 124
  br i1 %min.iters.check19, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.aa, 24
  %n.vec = and i64 %i.aa, 9223372036854775776     ; 4 uses
  %i.ab = shl i64 %n.vec, 2
  %i.ac = getelementptr i8, ptr %i.v, i64 %i.ab
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.u, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ad ; 4 uses
  %i.ae = getelementptr i8, ptr %next.gep, i64 32
  %i.af = getelementptr i8, ptr %next.gep, i64 64
  %i.ag = getelementptr i8, ptr %next.gep, i64 96
  store <8 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat, ptr %i.ae, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat, ptr %i.af, align 4, !tbaa !3
  store <8 x i32> %broadcast.splat, ptr %i.ag, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !1773

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !1053

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec21 = and i64 %i.aa, 9223372036854775800   ; 3 uses
  %i.ai = shl i64 %n.vec21, 2
  %i.aj = getelementptr i8, ptr %i.v, i64 %i.ai
  %broadcast.splatinsert22 = insertelement <8 x i32> poison, i32 %i.u, i64 0
  %broadcast.splat23 = shufflevector <8 x i32> %broadcast.splatinsert22, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index24 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next26, %vec.epilog.vector.body ] ; 2 uses
  %i.ak = shl i64 %index24, 2
  %next.gep25 = getelementptr i8, ptr %i.v, i64 %i.ak
  store <8 x i32> %broadcast.splat23, ptr %next.gep25, align 4, !tbaa !3
  %index.next26 = add nuw i64 %index24, 8         ; 2 uses
  %i.al = icmp eq i64 %index.next26, %n.vec21
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1774

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n27 = icmp eq i64 %i.aa, %n.vec21
  br i1 %cmp.n27, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06.i.i.i.ph = phi ptr [ %i.v, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.u, ptr %.06.i.i.i, align 4, !tbaa !3
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.t
  br i1 %.not.i.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !1775

_ZSt4fillIPiiEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define internal void @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_113MinusFunctionINS0_4exec10VectorExecEEEdNS0_15ConstantCheckerIJddEEEJddEE7getNameB5cxx11Ev(ptr dead_on_unwind noalias nofree readnone sret(%"class.std::__cxx11::basic_string") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.34)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #33
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZSt11make_sharedIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_113MinusFunctionINS1_4exec10VectorExecEEEdNS1_15ConstantCheckerIJddEEEJddEEEJRbRKSt6vectorINS7_17SignatureVariableESaISG_EEEESt10shared_ptrIT_EDpOT0_(i8 %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.facebook::velox::exec::FunctionSignatureBuilder", align 8 ; 16 uses
  %2 = alloca %"class.std::shared_ptr.15", align 16 ; 7 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"struct.facebook::velox::core::TypeAnalysis", align 1 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"struct.facebook::velox::core::TypeAnalysis", align 1 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::vector", align 16     ; 13 uses
  %11 = alloca %"struct.facebook::velox::core::TypeAnalysisResults", align 8 ; 31 uses
  %12 = alloca %"struct.facebook::velox::core::TypeAnalysis", align 1 ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::shared_ptr.18", align 16 ; 7 uses
  %15 = alloca %"class.std::vector.21", align 8   ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"struct.facebook::velox::core::SimpleFunctionMetadata<facebook::velox::functions::(anonymous namespace)::MinusFunction<facebook::velox::exec::VectorExec>, double, facebook::velox::ConstantChecker<double, double>, double, double>::SignatureTypesAnalysisResults", align 16 ; 31 uses
  store ptr null, ptr @_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEEdNS0_15ConstantCheckerIJddEEEJddEEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISK_EEE8instance, align 16, !tbaa !1776
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #34, !noalias !1779 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !35
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_113MinusFunctionINS1_4exec10VectorExecEEEdNS1_15ConstantCheckerIJddEEEJddEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_113MinusFunctionINS0_4exec10VectorExecEEEdNS0_15ConstantCheckerIJddEEEJddEEE, i64 16), ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %.0.val, ptr %i.e, align 8, !tbaa !1782
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1784)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33, !noalias !1784
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !1784
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33, !noalias !1784
  store i8 0, ptr %11, align 8, !tbaa !150, !noalias !1784
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 1
  store i8 0, ptr %i.i, align 1, !tbaa !152, !noalias !1784
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 2
  store i8 0, ptr %i.j, align 2, !tbaa !153, !noalias !1784
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !154, !noalias !1784
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.l)
          to label %bb.b unwind label %bb.at, !noalias !1784

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 392 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !noalias !1784
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 416 ; 10 uses
  store i32 0, ptr %i.n, align 8, !tbaa !155, !noalias !1784
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 424 ; 5 uses
  store ptr null, ptr %i.o, align 8, !tbaa !160, !noalias !1784
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 432 ; 5 uses
  store ptr %i.n, ptr %i.p, align 8, !tbaa !161, !noalias !1784
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 440 ; 4 uses
  store ptr %i.n, ptr %i.q, align 8, !tbaa !162, !noalias !1784
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 448 ; 6 uses
  store i64 0, ptr %i.r, align 8, !tbaa !163, !noalias !1784
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33, !noalias !1784
  invoke void @_ZN8facebook5velox4core12TypeAnalysisIdE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %bb.c unwind label %bb.au

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33, !noalias !1784
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33, !noalias !1784
  call void @llvm.experimental.noalias.scope.decl(metadata !1787)
  call void @llvm.experimental.noalias.scope.decl(metadata !1790)
  call void @llvm.experimental.noalias.scope.decl(metadata !1793)
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 12 uses
  store ptr %i.s, ptr %13, align 8, !tbaa !173, !alias.scope !1796, !noalias !1784
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i64 0, ptr %i.t, align 8, !tbaa !16, !alias.scope !1796, !noalias !1784
  store i8 0, ptr %i.s, align 8, !tbaa !28, !alias.scope !1796, !noalias !1784
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !1797 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !noalias !1797 ; 2 uses
  %i.y = icmp ugt ptr %i.v, %i.x
  %.08.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.y, ptr %i.v, ptr %i.x ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !180, !noalias !1797 ; 2 uses
  %i.ab = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef %i.aa, i64 noundef %i.ad)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %13, align 8, !tbaa !7, !alias.scope !1796, !noalias !1784 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.s
  br i1 %i.ah, label %.body.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.i.sink.split

bb.f:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e

_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33, !noalias !1784
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 400 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24, !noalias !1784 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.m, align 8, !tbaa !27, !noalias !1784
  store <2 x ptr> %i.am, ptr %14, align 16, !tbaa !27, !noalias !1784
  %.not.i.i.i25.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i25.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !1784
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
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33, !noalias !1784
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false), !noalias !1784
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33, !noalias !1784
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.as, ptr %7, align 8, !tbaa !173, !noalias !1784
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !16, !noalias !1784
  store i8 0, ptr %i.as, align 8, !tbaa !28, !noalias !1784
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i unwind label %bb.j

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.av = load ptr, ptr %7, align 8, !tbaa !7, !noalias !1784 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.as
  br i1 %i.aw, label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i
  %i.ax = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !1784
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #35
  br label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %7, align 8, !tbaa !7, !noalias !1784 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.as
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !1784
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !1784
  br label %.body29.i.i.i.i.i.i.i

_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !1784
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33, !noalias !1784
  invoke void @_ZN8facebook5velox4core12TypeAnalysisIdE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.av

.noexc.i.i.i.i.i.i.i:                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33, !noalias !1784
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33, !noalias !1784
  call void @llvm.experimental.noalias.scope.decl(metadata !1798)
  call void @llvm.experimental.noalias.scope.decl(metadata !1801)
  call void @llvm.experimental.noalias.scope.decl(metadata !1804)
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  store ptr %i.be, ptr %9, align 8, !tbaa !173, !alias.scope !1807, !noalias !1784
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 0, ptr %i.bf, align 8, !tbaa !16, !alias.scope !1807, !noalias !1784
  store i8 0, ptr %i.be, align 8, !tbaa !28, !alias.scope !1807, !noalias !1784
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !1808 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  %i.bh = load ptr, ptr %i.w, align 8, !noalias !1808 ; 2 uses
  %i.bi = icmp ugt ptr %i.bg, %i.bh
  %.08.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bi, ptr %i.bg, ptr %i.bh ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i26.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i26.i.i.i.i.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !180, !noalias !1808 ; 2 uses
  %i.bl = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.bk, i64 noundef %i.bn)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %9, align 8, !tbaa !7, !alias.scope !1807, !noalias !1784 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.be
  br i1 %i.br, label %.body29.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.bs = load i64, ptr %i.be, align 8, !tbaa !28, !alias.scope !1807, !noalias !1784
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #35
  br label %.body29.i.i.i.i.i.i.i

bb.m:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.bu)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l
end_hunk_4
begin_hunk_5_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a

bb.et:                                            ; preds = %bb.er
  %i.bcu = load ptr, ptr %i.bcb, align 8, !tbaa !720
  %i.bcv = shl nsw i64 %i.bcg, 2
  %i.bcw = getelementptr inbounds i8, ptr %i.bcu, i64 %i.bcv
  %i.bcx = load i32, ptr %i.bcw, align 4, !tbaa !3
  br label %_ZN8facebook5velox6StatusD2Ev.exit26.i75.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit26.i75.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.et, %bb.es, %.noexc12.i73.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i17.i76.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bcx, %bb.et ], [ %i.bct, %bb.es ], [ %i.bcf, %.noexc12.i73.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bcy = sext i32 %.0.i.i.i17.i76.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bcz = getelementptr inbounds [8 x i8], ptr %i.bbw, i64 %i.bcy
  %i.bda = load double, ptr %i.bcz, align 8, !tbaa !561
  %i.bdb = fsub double %i.bcq, %i.bda
  %i.bdc = getelementptr inbounds [8 x i8], ptr %.sink.i.i, i64 %i.bcg
  store double %i.bdb, ptr %i.bdc, align 8, !tbaa !561
  %i.bdd = add nsw i64 %.036.i72.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.bde = and i64 %i.bdd, %.036.i72.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i77.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bde, 0
  br i1 %.not10.i77.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit, label %bb.en, !llvm.loop !1969

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit26.i75.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit26.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i72.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i.i.i.i.i.i.i.i.i.i43.i.i, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i47.i.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i47.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i70.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit21.i70.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit21.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit15.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit15.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit25.i73.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit25.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit19.i.i.i.i.i.i.i.i, %middle.block428, %vec.epilog.middle.block444, %middle.block509, %vec.epilog.middle.block526, %middle.block591, %vec.epilog.middle.block608, %middle.block655, %vec.epilog.middle.block671, %bb.z, %bb.aa, %bb.ac, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, %bb.ag, %bb.ao, %bb.ap, %bb.ar, %._crit_edge.i.i.i.i.i.i.i.i.i26.i.i, %bb.av, %bb.bf, %bb.bg, %bb.bi, %._crit_edge.i.i.i.i.i.i.i.i.i.i43.i, %bb.bm, %bb.bu, %bb.bv, %bb.bx, %._crit_edge.i.i.i.i.i.i.i.i.i29.i.i, %bb.cb, %bb.cy, %bb.dg, %bb.di, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i63, %bb.em
  br i1 %.136124, label %bb.eu, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

bb.eu:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit
  %i.bdf = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bdg = load <2 x ptr>, ptr %.134126, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.134126, i8 0, i64 16, i1 false)
  %i.bdh = load ptr, ptr %i.bdf, align 8, !tbaa !24 ; 8 uses
  store <2 x ptr> %i.bdg, ptr %5, align 8, !tbaa !27
  %.not.i.i.i.i103 = icmp eq ptr %i.bdh, null
  br i1 %.not.i.i.i.i103, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.bdh, i64 8 ; 4 uses
  %i.bdj = load atomic i64, ptr %i.bdi acquire, align 8 ; 2 uses
  %i.bdk = icmp eq i64 %i.bdj, 4294967297
  %i.bdl = trunc i64 %i.bdj to i32                ; 2 uses
  br i1 %i.bdk, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  store i32 0, ptr %i.bdi, align 8, !tbaa !33
  %i.bdm = getelementptr inbounds nuw i8, ptr %i.bdh, i64 12
  store i32 0, ptr %i.bdm, align 4, !tbaa !35
  %i.bdn = load ptr, ptr %i.bdh, align 8, !tbaa !36
  %i.bdo = getelementptr inbounds nuw i8, ptr %i.bdn, i64 16
  %i.bdp = load ptr, ptr %i.bdo, align 8
  call void %i.bdp(ptr noundef nonnull align 8 dereferenceable(16) %i.bdh) #33, !inline_history !739
  %i.bdq = load ptr, ptr %i.bdh, align 8, !tbaa !36
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.bdq, i64 24
  %i.bds = load ptr, ptr %i.bdr, align 8
  call void %i.bds(ptr noundef nonnull align 8 dereferenceable(16) %i.bdh) #33, !inline_history !739
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

bb.ex:                                            ; preds = %bb.ev
  %i.bdt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i104 = icmp eq i8 %i.bdt, 0
  br i1 %.not.i.i.i.i.i104, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.bdu = add nsw i32 %i.bdl, -1
  store i32 %i.bdu, ptr %i.bdi, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ez:                                            ; preds = %bb.ex
  %i.bdv = atomicrmw volatile add ptr %i.bdi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ez, %bb.ey
  %.0.i.i.i.i.i.i = phi i32 [ %i.bdl, %bb.ey ], [ %i.bdv, %bb.ez ]
  %i.bdw = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bdw, label %bb.fa, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, !prof !39

bb.fa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bdh) #33
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit: ; preds = %bb.fa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ew, %bb.eu, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit
  %i.bdx = load ptr, ptr %8, align 8, !tbaa !696  ; 3 uses
  %i.bdy = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bdz = load ptr, ptr %i.bdy, align 8, !tbaa !707 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bdx, %i.bdz
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bed, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i ], [ %i.bdx, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %i.bea = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.beb = load i8, ptr %i.bea, align 8, !tbaa !699, !range !235, !noundef !236
  %i.bec = trunc nuw i8 %i.beb to i1
  store i8 0, ptr %i.bea, align 8, !tbaa !699
  br i1 %i.bec, label %bb.fb, label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

bb.fb:                                            ; preds = %.lr.ph.i.i.i
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %.05.i.i.i) #33
  br label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i: ; preds = %bb.fb, %.lr.ph.i.i.i
  %i.bed = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i105 = icmp eq ptr %i.bed, %i.bdz
  br i1 %.not.i.i.i105, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !740

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !696
  br label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit
  %i.bee = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bdx, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bee, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit, label %bb.fc

bb.fc:                                            ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bef = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.beg = load ptr, ptr %i.bef, align 8, !tbaa !741
  %i.beh = ptrtoint ptr %i.beg to i64
  %i.bei = ptrtoint ptr %i.bee to i64
  %i.bej = sub i64 %i.beh, %i.bei
  call void @_ZdlPvm(ptr noundef nonnull %i.bee, i64 noundef %i.bej) #35
  br label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit

_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  ret void

.body:                                            ; preds = %bb.cc, %common.resume.i
  %.pn.pn.pn = phi { ptr, i32 } [ %common.resume.op.i, %common.resume.i ], [ %i.ajh, %bb.cc ]
  call void @_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE27supportsFlatNoNullsFastPathEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE34ensureStringEncodingSetAtAllInputsEv(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE36propagateStringEncodingFromAllInputsEv(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE16getCanonicalNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress noreturn uwtable
define internal void @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_113MinusFunctionINS0_4exec10VectorExecEEEfNS0_15ConstantCheckerIJffEEEJffEE7getNameB5cxx11Ev(ptr dead_on_unwind noalias nofree readnone sret(%"class.std::__cxx11::basic_string") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.34)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #33
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZSt11make_sharedIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_113MinusFunctionINS1_4exec10VectorExecEEEfNS1_15ConstantCheckerIJffEEEJffEEEJRbRKSt6vectorINS7_17SignatureVariableESaISG_EEEESt10shared_ptrIT_EDpOT0_(i8 %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.facebook::velox::exec::FunctionSignatureBuilder", align 8 ; 16 uses
  %2 = alloca %"class.std::shared_ptr.15", align 16 ; 7 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"struct.facebook::velox::core::TypeAnalysis.925", align 1 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"struct.facebook::velox::core::TypeAnalysis.925", align 1 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::vector", align 16     ; 13 uses
  %11 = alloca %"struct.facebook::velox::core::TypeAnalysisResults", align 8 ; 31 uses
  %12 = alloca %"struct.facebook::velox::core::TypeAnalysis.925", align 1 ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::shared_ptr.18", align 16 ; 7 uses
  %15 = alloca %"class.std::vector.21", align 8   ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"struct.facebook::velox::core::SimpleFunctionMetadata<facebook::velox::functions::(anonymous namespace)::MinusFunction<facebook::velox::exec::VectorExec>, float, facebook::velox::ConstantChecker<float, float>, float, float>::SignatureTypesAnalysisResults", align 16 ; 31 uses
  store ptr null, ptr @_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEEfNS0_15ConstantCheckerIJffEEEJffEEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISK_EEE8instance, align 16, !tbaa !1986
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #34, !noalias !1989 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !35
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_113MinusFunctionINS1_4exec10VectorExecEEEfNS1_15ConstantCheckerIJffEEEJffEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_113MinusFunctionINS0_4exec10VectorExecEEEfNS0_15ConstantCheckerIJffEEEJffEEE, i64 16), ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %.0.val, ptr %i.e, align 8, !tbaa !1992
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1994)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33, !noalias !1994
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !1994
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33, !noalias !1994
  store i8 0, ptr %11, align 8, !tbaa !150, !noalias !1994
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 1
  store i8 0, ptr %i.i, align 1, !tbaa !152, !noalias !1994
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 2
  store i8 0, ptr %i.j, align 2, !tbaa !153, !noalias !1994
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !154, !noalias !1994
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.l)
          to label %bb.b unwind label %bb.at, !noalias !1994

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 392 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !noalias !1994
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 416 ; 10 uses
  store i32 0, ptr %i.n, align 8, !tbaa !155, !noalias !1994
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 424 ; 5 uses
  store ptr null, ptr %i.o, align 8, !tbaa !160, !noalias !1994
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 432 ; 5 uses
  store ptr %i.n, ptr %i.p, align 8, !tbaa !161, !noalias !1994
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 440 ; 4 uses
  store ptr %i.n, ptr %i.q, align 8, !tbaa !162, !noalias !1994
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 448 ; 6 uses
  store i64 0, ptr %i.r, align 8, !tbaa !163, !noalias !1994
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33, !noalias !1994
  invoke void @_ZN8facebook5velox4core12TypeAnalysisIfE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %bb.c unwind label %bb.au

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33, !noalias !1994
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33, !noalias !1994
  call void @llvm.experimental.noalias.scope.decl(metadata !1997)
  call void @llvm.experimental.noalias.scope.decl(metadata !2000)
  call void @llvm.experimental.noalias.scope.decl(metadata !2003)
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 12 uses
  store ptr %i.s, ptr %13, align 8, !tbaa !173, !alias.scope !2006, !noalias !1994
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i64 0, ptr %i.t, align 8, !tbaa !16, !alias.scope !2006, !noalias !1994
  store i8 0, ptr %i.s, align 8, !tbaa !28, !alias.scope !2006, !noalias !1994
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !2007 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !noalias !2007 ; 2 uses
  %i.y = icmp ugt ptr %i.v, %i.x
  %.08.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.y, ptr %i.v, ptr %i.x ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !180, !noalias !2007 ; 2 uses
  %i.ab = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef %i.aa, i64 noundef %i.ad)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %13, align 8, !tbaa !7, !alias.scope !2006, !noalias !1994 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.s
  br i1 %i.ah, label %.body.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.i.sink.split

bb.f:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e

_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33, !noalias !1994
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 400 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24, !noalias !1994 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.m, align 8, !tbaa !27, !noalias !1994
  store <2 x ptr> %i.am, ptr %14, align 16, !tbaa !27, !noalias !1994
  %.not.i.i.i25.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i25.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !1994
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
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33, !noalias !1994
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false), !noalias !1994
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33, !noalias !1994
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.as, ptr %7, align 8, !tbaa !173, !noalias !1994
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !16, !noalias !1994
  store i8 0, ptr %i.as, align 8, !tbaa !28, !noalias !1994
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i unwind label %bb.j

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.av = load ptr, ptr %7, align 8, !tbaa !7, !noalias !1994 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.as
  br i1 %i.aw, label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i
  %i.ax = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !1994
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #35
  br label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %7, align 8, !tbaa !7, !noalias !1994 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.as
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !1994
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !1994
  br label %.body29.i.i.i.i.i.i.i

_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !1994
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33, !noalias !1994
  invoke void @_ZN8facebook5velox4core12TypeAnalysisIfE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.av

.noexc.i.i.i.i.i.i.i:                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33, !noalias !1994
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33, !noalias !1994
  call void @llvm.experimental.noalias.scope.decl(metadata !2008)
  call void @llvm.experimental.noalias.scope.decl(metadata !2011)
  call void @llvm.experimental.noalias.scope.decl(metadata !2014)
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  store ptr %i.be, ptr %9, align 8, !tbaa !173, !alias.scope !2017, !noalias !1994
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 0, ptr %i.bf, align 8, !tbaa !16, !alias.scope !2017, !noalias !1994
  store i8 0, ptr %i.be, align 8, !tbaa !28, !alias.scope !2017, !noalias !1994
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !2018 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  %i.bh = load ptr, ptr %i.w, align 8, !noalias !2018 ; 2 uses
  %i.bi = icmp ugt ptr %i.bg, %i.bh
  %.08.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bi, ptr %i.bg, ptr %i.bh ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i26.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i26.i.i.i.i.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !180, !noalias !2018 ; 2 uses
  %i.bl = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.bk, i64 noundef %i.bn)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %9, align 8, !tbaa !7, !alias.scope !2017, !noalias !1994 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.be
  br i1 %i.br, label %.body29.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.bs = load i64, ptr %i.be, align 8, !tbaa !28, !alias.scope !2017, !noalias !1994
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #35
  br label %.body29.i.i.i.i.i.i.i

bb.m:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.bu)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l
end_hunk_5
begin_hunk_6_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a

bb.et:                                            ; preds = %bb.er
  %i.bdj = load ptr, ptr %i.bcq, align 8, !tbaa !720, !noalias !2231
  %i.bdk = shl nsw i64 %i.bcv, 2
  %i.bdl = getelementptr inbounds i8, ptr %i.bdj, i64 %i.bdk
  %i.bdm = load i32, ptr %i.bdl, align 4, !tbaa !3, !noalias !2231
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i76.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit24.i76.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.et, %bb.es, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i74.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i15.i77.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bdm, %bb.et ], [ %i.bdi, %bb.es ], [ %i.bcu, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i74.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bdn = sext i32 %.0.i.i.i15.i77.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bdo = getelementptr inbounds [4 x i8], ptr %i.bcl, i64 %i.bdn
  %i.bdp = load float, ptr %i.bdo, align 4, !tbaa !1051, !noalias !2231
  %i.bdq = fsub float %i.bdf, %i.bdp
  %i.bdr = getelementptr inbounds [4 x i8], ptr %.sink.i.i, i64 %i.bcv
  store float %i.bdq, ptr %i.bdr, align 4, !tbaa !1051
  %i.bds = add nsw i64 %.034.i73.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.bdt = and i64 %i.bds, %.034.i73.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i78.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bdt, 0
  br i1 %.not10.i78.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit, label %bb.en, !llvm.loop !2192

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i76.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit18.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i72.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i.i.i.i.i.i.i.i.i.i43.i.i, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i47.i.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i47.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i70.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit21.i70.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit21.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit15.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit15.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit25.i73.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit25.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit19.i.i.i.i.i.i.i.i, %middle.block456, %vec.epilog.middle.block471, %middle.block533, %vec.epilog.middle.block549, %middle.block611, %vec.epilog.middle.block627, %middle.block671, %vec.epilog.middle.block686, %bb.z, %bb.aa, %bb.ac, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, %bb.ag, %bb.ao, %bb.ap, %bb.ar, %._crit_edge.i.i.i.i.i.i.i.i.i26.i.i, %bb.av, %bb.bf, %bb.bg, %bb.bi, %._crit_edge.i.i.i.i.i.i.i.i.i.i43.i, %bb.bm, %bb.bu, %bb.bv, %bb.bx, %._crit_edge.i.i.i.i.i.i.i.i.i29.i.i, %bb.cb, %bb.cy, %bb.dg, %bb.di, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i63, %bb.em
  br i1 %.136121, label %bb.eu, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

bb.eu:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit
  %i.bdu = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bdv = load <2 x ptr>, ptr %.134123, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.134123, i8 0, i64 16, i1 false)
  %i.bdw = load ptr, ptr %i.bdu, align 8, !tbaa !24 ; 8 uses
  store <2 x ptr> %i.bdv, ptr %5, align 8, !tbaa !27
  %.not.i.i.i.i100 = icmp eq ptr %i.bdw, null
  br i1 %.not.i.i.i.i100, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.bdw, i64 8 ; 4 uses
  %i.bdy = load atomic i64, ptr %i.bdx acquire, align 8 ; 2 uses
  %i.bdz = icmp eq i64 %i.bdy, 4294967297
  %i.bea = trunc i64 %i.bdy to i32                ; 2 uses
  br i1 %i.bdz, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  store i32 0, ptr %i.bdx, align 8, !tbaa !33
  %i.beb = getelementptr inbounds nuw i8, ptr %i.bdw, i64 12
  store i32 0, ptr %i.beb, align 4, !tbaa !35
  %i.bec = load ptr, ptr %i.bdw, align 8, !tbaa !36
  %i.bed = getelementptr inbounds nuw i8, ptr %i.bec, i64 16
  %i.bee = load ptr, ptr %i.bed, align 8
  call void %i.bee(ptr noundef nonnull align 8 dereferenceable(16) %i.bdw) #33, !inline_history !739
  %i.bef = load ptr, ptr %i.bdw, align 8, !tbaa !36
  %i.beg = getelementptr inbounds nuw i8, ptr %i.bef, i64 24
  %i.beh = load ptr, ptr %i.beg, align 8
  call void %i.beh(ptr noundef nonnull align 8 dereferenceable(16) %i.bdw) #33, !inline_history !739
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

bb.ex:                                            ; preds = %bb.ev
  %i.bei = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i101 = icmp eq i8 %i.bei, 0
  br i1 %.not.i.i.i.i.i101, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.bej = add nsw i32 %i.bea, -1
  store i32 %i.bej, ptr %i.bdx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ez:                                            ; preds = %bb.ex
  %i.bek = atomicrmw volatile add ptr %i.bdx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ez, %bb.ey
  %.0.i.i.i.i.i.i = phi i32 [ %i.bea, %bb.ey ], [ %i.bek, %bb.ez ]
  %i.bel = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bel, label %bb.fa, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, !prof !39

bb.fa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bdw) #33
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit: ; preds = %bb.fa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ew, %bb.eu, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit
  %i.bem = load ptr, ptr %8, align 8, !tbaa !696  ; 3 uses
  %i.ben = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.beo = load ptr, ptr %i.ben, align 8, !tbaa !707 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bem, %i.beo
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bes, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i ], [ %i.bem, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %i.bep = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.beq = load i8, ptr %i.bep, align 8, !tbaa !699, !range !235, !noundef !236
  %i.ber = trunc nuw i8 %i.beq to i1
  store i8 0, ptr %i.bep, align 8, !tbaa !699
  br i1 %i.ber, label %bb.fb, label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

bb.fb:                                            ; preds = %.lr.ph.i.i.i
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %.05.i.i.i) #33
  br label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i: ; preds = %bb.fb, %.lr.ph.i.i.i
  %i.bes = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i102 = icmp eq ptr %i.bes, %i.beo
  br i1 %.not.i.i.i102, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !740

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !696
  br label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit
  %i.bet = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bem, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bet, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit, label %bb.fc

bb.fc:                                            ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i
  %i.beu = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bev = load ptr, ptr %i.beu, align 8, !tbaa !741
  %i.bew = ptrtoint ptr %i.bev to i64
  %i.bex = ptrtoint ptr %i.bet to i64
  %i.bey = sub i64 %i.bew, %i.bex
  call void @_ZdlPvm(ptr noundef nonnull %i.bet, i64 noundef %i.bey) #35
  br label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit

_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  ret void

.body:                                            ; preds = %bb.cc, %common.resume.i
  %.pn.pn.pn = phi { ptr, i32 } [ %common.resume.op.i, %common.resume.i ], [ %i.ajp, %bb.cc ]
  call void @_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE27supportsFlatNoNullsFastPathEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE34ensureStringEncodingSetAtAllInputsEv(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE36propagateStringEncodingFromAllInputsEv(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE16getCanonicalNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress noreturn uwtable
define internal void @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_113MinusFunctionINS0_4exec10VectorExecEEENS0_15IntervalDayTimeENS0_15ConstantCheckerIJS9_S9_EEEJS9_S9_EE7getNameB5cxx11Ev(ptr dead_on_unwind noalias nofree readnone sret(%"class.std::__cxx11::basic_string") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.34)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #33
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZSt11make_sharedIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_113MinusFunctionINS1_4exec10VectorExecEEENS1_15IntervalDayTimeENS1_15ConstantCheckerIJSA_SA_EEEJSA_SA_EEEJRbRKSt6vectorINS7_17SignatureVariableESaISH_EEEESt10shared_ptrIT_EDpOT0_(i8 %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.facebook::velox::exec::FunctionSignatureBuilder", align 8 ; 16 uses
  %2 = alloca %"class.std::shared_ptr.15", align 16 ; 7 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"struct.facebook::velox::core::TypeAnalysis.1121", align 1 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"struct.facebook::velox::core::TypeAnalysis.1121", align 1 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::vector", align 16     ; 13 uses
  %11 = alloca %"struct.facebook::velox::core::TypeAnalysisResults", align 8 ; 31 uses
  %12 = alloca %"struct.facebook::velox::core::TypeAnalysis.1121", align 1 ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::shared_ptr.18", align 16 ; 7 uses
  %15 = alloca %"class.std::vector.21", align 8   ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"struct.facebook::velox::core::SimpleFunctionMetadata<facebook::velox::functions::(anonymous namespace)::MinusFunction<facebook::velox::exec::VectorExec>, facebook::velox::IntervalDayTime, facebook::velox::ConstantChecker<facebook::velox::IntervalDayTime, facebook::velox::IntervalDayTime>, facebook::velox::IntervalDayTime, facebook::velox::IntervalDayTime>::SignatureTypesAnalysisResults", align 16 ; 31 uses
  store ptr null, ptr @_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEENS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_SA_EEEJSA_SA_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISL_EEE8instance, align 16, !tbaa !2234
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #34, !noalias !2237 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !35
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_113MinusFunctionINS1_4exec10VectorExecEEENS1_15IntervalDayTimeENS1_15ConstantCheckerIJSA_SA_EEEJSA_SA_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_113MinusFunctionINS0_4exec10VectorExecEEENS0_15IntervalDayTimeENS0_15ConstantCheckerIJS9_S9_EEEJS9_S9_EEE, i64 16), ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %.0.val, ptr %i.e, align 8, !tbaa !2240
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2242)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33, !noalias !2242
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !2242
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33, !noalias !2242
  store i8 0, ptr %11, align 8, !tbaa !150, !noalias !2242
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 1
  store i8 0, ptr %i.i, align 1, !tbaa !152, !noalias !2242
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 2
  store i8 0, ptr %i.j, align 2, !tbaa !153, !noalias !2242
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !154, !noalias !2242
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.l)
          to label %bb.b unwind label %bb.at, !noalias !2242

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 392 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !noalias !2242
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 416 ; 10 uses
  store i32 0, ptr %i.n, align 8, !tbaa !155, !noalias !2242
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 424 ; 5 uses
  store ptr null, ptr %i.o, align 8, !tbaa !160, !noalias !2242
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 432 ; 5 uses
  store ptr %i.n, ptr %i.p, align 8, !tbaa !161, !noalias !2242
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 440 ; 4 uses
  store ptr %i.n, ptr %i.q, align 8, !tbaa !162, !noalias !2242
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 448 ; 6 uses
  store i64 0, ptr %i.r, align 8, !tbaa !163, !noalias !2242
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33, !noalias !2242
  invoke void @_ZN8facebook5velox4core12TypeAnalysisINS0_15IntervalDayTimeEE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %bb.c unwind label %bb.au

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33, !noalias !2242
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33, !noalias !2242
  call void @llvm.experimental.noalias.scope.decl(metadata !2245)
  call void @llvm.experimental.noalias.scope.decl(metadata !2248)
  call void @llvm.experimental.noalias.scope.decl(metadata !2251)
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 12 uses
  store ptr %i.s, ptr %13, align 8, !tbaa !173, !alias.scope !2254, !noalias !2242
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i64 0, ptr %i.t, align 8, !tbaa !16, !alias.scope !2254, !noalias !2242
  store i8 0, ptr %i.s, align 8, !tbaa !28, !alias.scope !2254, !noalias !2242
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !2255 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !noalias !2255 ; 2 uses
  %i.y = icmp ugt ptr %i.v, %i.x
  %.08.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.y, ptr %i.v, ptr %i.x ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !180, !noalias !2255 ; 2 uses
  %i.ab = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef %i.aa, i64 noundef %i.ad)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %13, align 8, !tbaa !7, !alias.scope !2254, !noalias !2242 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.s
  br i1 %i.ah, label %.body.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.i.sink.split

bb.f:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e

_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33, !noalias !2242
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 400 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24, !noalias !2242 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.m, align 8, !tbaa !27, !noalias !2242
  store <2 x ptr> %i.am, ptr %14, align 16, !tbaa !27, !noalias !2242
  %.not.i.i.i25.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i25.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !2242
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
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33, !noalias !2242
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false), !noalias !2242
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33, !noalias !2242
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.as, ptr %7, align 8, !tbaa !173, !noalias !2242
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !16, !noalias !2242
  store i8 0, ptr %i.as, align 8, !tbaa !28, !noalias !2242
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i unwind label %bb.j

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.av = load ptr, ptr %7, align 8, !tbaa !7, !noalias !2242 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.as
  br i1 %i.aw, label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i
  %i.ax = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !2242
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #35
  br label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %7, align 8, !tbaa !7, !noalias !2242 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.as
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !2242
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !2242
  br label %.body29.i.i.i.i.i.i.i

_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !2242
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33, !noalias !2242
  invoke void @_ZN8facebook5velox4core12TypeAnalysisINS0_15IntervalDayTimeEE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.av

.noexc.i.i.i.i.i.i.i:                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33, !noalias !2242
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33, !noalias !2242
  call void @llvm.experimental.noalias.scope.decl(metadata !2256)
  call void @llvm.experimental.noalias.scope.decl(metadata !2259)
  call void @llvm.experimental.noalias.scope.decl(metadata !2262)
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  store ptr %i.be, ptr %9, align 8, !tbaa !173, !alias.scope !2265, !noalias !2242
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 0, ptr %i.bf, align 8, !tbaa !16, !alias.scope !2265, !noalias !2242
  store i8 0, ptr %i.be, align 8, !tbaa !28, !alias.scope !2265, !noalias !2242
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !2266 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  %i.bh = load ptr, ptr %i.w, align 8, !noalias !2266 ; 2 uses
  %i.bi = icmp ugt ptr %i.bg, %i.bh
  %.08.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bi, ptr %i.bg, ptr %i.bh ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i26.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i26.i.i.i.i.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !180, !noalias !2266 ; 2 uses
  %i.bl = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.bk, i64 noundef %i.bn)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %9, align 8, !tbaa !7, !alias.scope !2265, !noalias !2242 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.be
  br i1 %i.br, label %.body29.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.bs = load i64, ptr %i.be, align 8, !tbaa !28, !alias.scope !2265, !noalias !2242
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #35
  br label %.body29.i.i.i.i.i.i.i

bb.m:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.bu)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l
end_hunk_6
begin_hunk_7_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_SA_EEEJSA_SA_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EERKSJ_IKNS0_4TypeEERNS1_7EvalCtxERSL_:bb.a

bb.et:                                            ; preds = %bb.er
  %i.bcu = load ptr, ptr %i.bcb, align 8, !tbaa !720, !noalias !2477
  %i.bcv = shl nsw i64 %i.bcg, 2
  %i.bcw = getelementptr inbounds i8, ptr %i.bcu, i64 %i.bcv
  %i.bcx = load i32, ptr %i.bcw, align 4, !tbaa !3, !noalias !2477
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i76.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit24.i76.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.et, %bb.es, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i74.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i15.i77.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bcx, %bb.et ], [ %i.bct, %bb.es ], [ %i.bcf, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i74.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bcy = sext i32 %.0.i.i.i15.i77.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bcz = getelementptr inbounds [8 x i8], ptr %i.bbw, i64 %i.bcy
  %i.bda = load i64, ptr %i.bcz, align 8, !tbaa !209, !noalias !2477
  %i.bdb = sub nsw i64 %i.bcq, %i.bda
  %i.bdc = getelementptr inbounds [8 x i8], ptr %.sink.i.i, i64 %i.bcg
  store i64 %i.bdb, ptr %i.bdc, align 8, !tbaa !209
  %i.bdd = add nsw i64 %.035.i73.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.bde = and i64 %i.bdd, %.035.i73.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i78.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bde, 0
  br i1 %.not10.i78.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_SA_EEEJSA_SA_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit, label %bb.en, !llvm.loop !2439

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_SA_EEEJSA_SA_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i76.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit18.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i72.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i.i.i.i.i.i.i.i.i.i43.i.i, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i47.i.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i47.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i70.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit21.i70.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit21.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit15.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit15.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit25.i73.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit25.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit19.i.i.i.i.i.i.i.i, %middle.block425, %vec.epilog.middle.block441, %middle.block506, %vec.epilog.middle.block523, %middle.block588, %vec.epilog.middle.block605, %middle.block652, %vec.epilog.middle.block668, %bb.z, %bb.aa, %bb.ac, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, %bb.ag, %bb.ao, %bb.ap, %bb.ar, %._crit_edge.i.i.i.i.i.i.i.i.i26.i.i, %bb.av, %bb.bf, %bb.bg, %bb.bi, %._crit_edge.i.i.i.i.i.i.i.i.i.i43.i, %bb.bm, %bb.bu, %bb.bv, %bb.bx, %._crit_edge.i.i.i.i.i.i.i.i.i29.i.i, %bb.cb, %bb.cy, %bb.dg, %bb.di, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i63, %bb.em
  br i1 %.136121, label %bb.eu, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

bb.eu:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_SA_EEEJSA_SA_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit
  %i.bdf = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bdg = load <2 x ptr>, ptr %.134123, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.134123, i8 0, i64 16, i1 false)
  %i.bdh = load ptr, ptr %i.bdf, align 8, !tbaa !24 ; 8 uses
  store <2 x ptr> %i.bdg, ptr %5, align 8, !tbaa !27
  %.not.i.i.i.i100 = icmp eq ptr %i.bdh, null
  br i1 %.not.i.i.i.i100, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.bdh, i64 8 ; 4 uses
  %i.bdj = load atomic i64, ptr %i.bdi acquire, align 8 ; 2 uses
  %i.bdk = icmp eq i64 %i.bdj, 4294967297
  %i.bdl = trunc i64 %i.bdj to i32                ; 2 uses
  br i1 %i.bdk, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  store i32 0, ptr %i.bdi, align 8, !tbaa !33
  %i.bdm = getelementptr inbounds nuw i8, ptr %i.bdh, i64 12
  store i32 0, ptr %i.bdm, align 4, !tbaa !35
  %i.bdn = load ptr, ptr %i.bdh, align 8, !tbaa !36
  %i.bdo = getelementptr inbounds nuw i8, ptr %i.bdn, i64 16
  %i.bdp = load ptr, ptr %i.bdo, align 8
  call void %i.bdp(ptr noundef nonnull align 8 dereferenceable(16) %i.bdh) #33, !inline_history !739
  %i.bdq = load ptr, ptr %i.bdh, align 8, !tbaa !36
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.bdq, i64 24
  %i.bds = load ptr, ptr %i.bdr, align 8
  call void %i.bds(ptr noundef nonnull align 8 dereferenceable(16) %i.bdh) #33, !inline_history !739
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

bb.ex:                                            ; preds = %bb.ev
  %i.bdt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i101 = icmp eq i8 %i.bdt, 0
  br i1 %.not.i.i.i.i.i101, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.bdu = add nsw i32 %i.bdl, -1
  store i32 %i.bdu, ptr %i.bdi, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ez:                                            ; preds = %bb.ex
  %i.bdv = atomicrmw volatile add ptr %i.bdi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ez, %bb.ey
  %.0.i.i.i.i.i.i = phi i32 [ %i.bdl, %bb.ey ], [ %i.bdv, %bb.ez ]
  %i.bdw = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bdw, label %bb.fa, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, !prof !39

bb.fa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bdh) #33
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit: ; preds = %bb.fa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ew, %bb.eu, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_SA_EEEJSA_SA_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit
  %i.bdx = load ptr, ptr %8, align 8, !tbaa !696  ; 3 uses
  %i.bdy = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bdz = load ptr, ptr %i.bdy, align 8, !tbaa !707 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bdx, %i.bdz
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bed, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i ], [ %i.bdx, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %i.bea = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.beb = load i8, ptr %i.bea, align 8, !tbaa !699, !range !235, !noundef !236
  %i.bec = trunc nuw i8 %i.beb to i1
  store i8 0, ptr %i.bea, align 8, !tbaa !699
  br i1 %i.bec, label %bb.fb, label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

bb.fb:                                            ; preds = %.lr.ph.i.i.i
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %.05.i.i.i) #33
  br label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i: ; preds = %bb.fb, %.lr.ph.i.i.i
  %i.bed = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i102 = icmp eq ptr %i.bed, %i.bdz
  br i1 %.not.i.i.i102, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !740

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !696
  br label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit
  %i.bee = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bdx, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bee, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit, label %bb.fc

bb.fc:                                            ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bef = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.beg = load ptr, ptr %i.bef, align 8, !tbaa !741
  %i.beh = ptrtoint ptr %i.beg to i64
  %i.bei = ptrtoint ptr %i.bee to i64
  %i.bej = sub i64 %i.beh, %i.bei
  call void @_ZdlPvm(ptr noundef nonnull %i.bee, i64 noundef %i.bej) #35
  br label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit

_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  ret void

.body:                                            ; preds = %bb.cc, %common.resume.i
  %.pn.pn.pn = phi { ptr, i32 } [ %common.resume.op.i, %common.resume.i ], [ %i.ajh, %bb.cc ]
  call void @_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_SA_EEEJSA_SA_EEEE27supportsFlatNoNullsFastPathEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_SA_EEEJSA_SA_EEEE34ensureStringEncodingSetAtAllInputsEv(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_SA_EEEJSA_SA_EEEE36propagateStringEncodingFromAllInputsEv(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_SA_EEEJSA_SA_EEEE16getCanonicalNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress noreturn uwtable
define internal void @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_113MinusFunctionINS0_4exec10VectorExecEEENS0_17IntervalYearMonthENS0_15ConstantCheckerIJS9_S9_EEEJS9_S9_EE7getNameB5cxx11Ev(ptr dead_on_unwind noalias nofree readnone sret(%"class.std::__cxx11::basic_string") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.34)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #33
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZSt11make_sharedIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_113MinusFunctionINS1_4exec10VectorExecEEENS1_17IntervalYearMonthENS1_15ConstantCheckerIJSA_SA_EEEJSA_SA_EEEJRbRKSt6vectorINS7_17SignatureVariableESaISH_EEEESt10shared_ptrIT_EDpOT0_(i8 %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.facebook::velox::exec::FunctionSignatureBuilder", align 8 ; 16 uses
  %2 = alloca %"class.std::shared_ptr.15", align 16 ; 7 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"struct.facebook::velox::core::TypeAnalysis.1317", align 1 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"struct.facebook::velox::core::TypeAnalysis.1317", align 1 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::vector", align 16     ; 13 uses
  %11 = alloca %"struct.facebook::velox::core::TypeAnalysisResults", align 8 ; 31 uses
  %12 = alloca %"struct.facebook::velox::core::TypeAnalysis.1317", align 1 ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::shared_ptr.18", align 16 ; 7 uses
  %15 = alloca %"class.std::vector.21", align 8   ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"struct.facebook::velox::core::SimpleFunctionMetadata<facebook::velox::functions::(anonymous namespace)::MinusFunction<facebook::velox::exec::VectorExec>, facebook::velox::IntervalYearMonth, facebook::velox::ConstantChecker<facebook::velox::IntervalYearMonth, facebook::velox::IntervalYearMonth>, facebook::velox::IntervalYearMonth, facebook::velox::IntervalYearMonth>::SignatureTypesAnalysisResults", align 16 ; 31 uses
  store ptr null, ptr @_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEENS0_17IntervalYearMonthENS0_15ConstantCheckerIJSA_SA_EEEJSA_SA_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISL_EEE8instance, align 16, !tbaa !2480
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #34, !noalias !2483 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !35
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_113MinusFunctionINS1_4exec10VectorExecEEENS1_17IntervalYearMonthENS1_15ConstantCheckerIJSA_SA_EEEJSA_SA_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_113MinusFunctionINS0_4exec10VectorExecEEENS0_17IntervalYearMonthENS0_15ConstantCheckerIJS9_S9_EEEJS9_S9_EEE, i64 16), ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %.0.val, ptr %i.e, align 8, !tbaa !2486
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2488)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33, !noalias !2488
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !2488
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33, !noalias !2488
  store i8 0, ptr %11, align 8, !tbaa !150, !noalias !2488
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 1
  store i8 0, ptr %i.i, align 1, !tbaa !152, !noalias !2488
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 2
  store i8 0, ptr %i.j, align 2, !tbaa !153, !noalias !2488
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !154, !noalias !2488
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.l)
          to label %bb.b unwind label %bb.at, !noalias !2488

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 392 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !noalias !2488
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 416 ; 10 uses
  store i32 0, ptr %i.n, align 8, !tbaa !155, !noalias !2488
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 424 ; 5 uses
  store ptr null, ptr %i.o, align 8, !tbaa !160, !noalias !2488
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 432 ; 5 uses
  store ptr %i.n, ptr %i.p, align 8, !tbaa !161, !noalias !2488
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 440 ; 4 uses
  store ptr %i.n, ptr %i.q, align 8, !tbaa !162, !noalias !2488
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 448 ; 6 uses
  store i64 0, ptr %i.r, align 8, !tbaa !163, !noalias !2488
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33, !noalias !2488
  invoke void @_ZN8facebook5velox4core12TypeAnalysisINS0_17IntervalYearMonthEE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %bb.c unwind label %bb.au

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33, !noalias !2488
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33, !noalias !2488
  call void @llvm.experimental.noalias.scope.decl(metadata !2491)
  call void @llvm.experimental.noalias.scope.decl(metadata !2494)
  call void @llvm.experimental.noalias.scope.decl(metadata !2497)
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 12 uses
  store ptr %i.s, ptr %13, align 8, !tbaa !173, !alias.scope !2500, !noalias !2488
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i64 0, ptr %i.t, align 8, !tbaa !16, !alias.scope !2500, !noalias !2488
  store i8 0, ptr %i.s, align 8, !tbaa !28, !alias.scope !2500, !noalias !2488
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !2501 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !noalias !2501 ; 2 uses
  %i.y = icmp ugt ptr %i.v, %i.x
  %.08.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.y, ptr %i.v, ptr %i.x ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !180, !noalias !2501 ; 2 uses
  %i.ab = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef %i.aa, i64 noundef %i.ad)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %13, align 8, !tbaa !7, !alias.scope !2500, !noalias !2488 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.s
  br i1 %i.ah, label %.body.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.i.sink.split

bb.f:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e

_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33, !noalias !2488
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 400 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24, !noalias !2488 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.m, align 8, !tbaa !27, !noalias !2488
  store <2 x ptr> %i.am, ptr %14, align 16, !tbaa !27, !noalias !2488
  %.not.i.i.i25.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i25.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !2488
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
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33, !noalias !2488
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false), !noalias !2488
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33, !noalias !2488
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.as, ptr %7, align 8, !tbaa !173, !noalias !2488
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !16, !noalias !2488
  store i8 0, ptr %i.as, align 8, !tbaa !28, !noalias !2488
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i unwind label %bb.j

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.av = load ptr, ptr %7, align 8, !tbaa !7, !noalias !2488 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.as
  br i1 %i.aw, label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i
  %i.ax = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !2488
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #35
  br label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %7, align 8, !tbaa !7, !noalias !2488 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.as
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !2488
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !2488
  br label %.body29.i.i.i.i.i.i.i

_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !2488
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33, !noalias !2488
  invoke void @_ZN8facebook5velox4core12TypeAnalysisINS0_17IntervalYearMonthEE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.av

.noexc.i.i.i.i.i.i.i:                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33, !noalias !2488
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33, !noalias !2488
  call void @llvm.experimental.noalias.scope.decl(metadata !2502)
  call void @llvm.experimental.noalias.scope.decl(metadata !2505)
  call void @llvm.experimental.noalias.scope.decl(metadata !2508)
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  store ptr %i.be, ptr %9, align 8, !tbaa !173, !alias.scope !2511, !noalias !2488
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 0, ptr %i.bf, align 8, !tbaa !16, !alias.scope !2511, !noalias !2488
  store i8 0, ptr %i.be, align 8, !tbaa !28, !alias.scope !2511, !noalias !2488
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !2512 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  %i.bh = load ptr, ptr %i.w, align 8, !noalias !2512 ; 2 uses
  %i.bi = icmp ugt ptr %i.bg, %i.bh
  %.08.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bi, ptr %i.bg, ptr %i.bh ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i26.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i26.i.i.i.i.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !180, !noalias !2512 ; 2 uses
  %i.bl = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.bk, i64 noundef %i.bn)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %9, align 8, !tbaa !7, !alias.scope !2511, !noalias !2488 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.be
  br i1 %i.br, label %.body29.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.bs = load i64, ptr %i.be, align 8, !tbaa !28, !alias.scope !2511, !noalias !2488
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #35
  br label %.body29.i.i.i.i.i.i.i

bb.m:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.bu)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l
end_hunk_7
begin_hunk_8_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJSA_SA_EEEJSA_SA_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EERKSJ_IKNS0_4TypeEERNS1_7EvalCtxERSL_:bb.a

bb.et:                                            ; preds = %bb.er
  %i.bbo = load ptr, ptr %i.bav, align 8, !tbaa !720, !noalias !2714
  %i.bbp = shl nsw i64 %i.bba, 2
  %i.bbq = getelementptr inbounds i8, ptr %i.bbo, i64 %i.bbp
  %i.bbr = load i32, ptr %i.bbq, align 4, !tbaa !3, !noalias !2714
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i76.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit24.i76.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.et, %bb.es, %_ZNK8facebook5velox4exec12VectorReaderINS0_17IntervalYearMonthEEixEm.exit.i74.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i15.i77.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bbr, %bb.et ], [ %i.bbn, %bb.es ], [ %i.baz, %_ZNK8facebook5velox4exec12VectorReaderINS0_17IntervalYearMonthEEixEm.exit.i74.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bbs = sext i32 %.0.i.i.i15.i77.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bbt = getelementptr inbounds [4 x i8], ptr %i.baq, i64 %i.bbs
  %i.bbu = load i32, ptr %i.bbt, align 4, !tbaa !3, !noalias !2714
  %i.bbv = sub nsw i32 %i.bbk, %i.bbu
  %i.bbw = getelementptr inbounds [4 x i8], ptr %.sink.i.i, i64 %i.bba
  store i32 %i.bbv, ptr %i.bbw, align 4, !tbaa !3
  %i.bbx = add nsw i64 %.035.i73.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.bby = and i64 %i.bbx, %.035.i73.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i78.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bby, 0
  br i1 %.not10.i78.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJSA_SA_EEEJSA_SA_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit, label %bb.en, !llvm.loop !2686

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJSA_SA_EEEJSA_SA_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i76.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit18.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i72.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i.i.i.i.i.i.i.i.i.i43.i.i, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i47.i.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i47.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i70.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit21.i70.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit21.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit15.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit15.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit25.i73.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit25.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit19.i.i.i.i.i.i.i.i, %middle.block407, %vec.epilog.middle.block422, %middle.block482, %vec.epilog.middle.block498, %middle.block560, %vec.epilog.middle.block576, %middle.block620, %vec.epilog.middle.block635, %bb.z, %bb.aa, %bb.ac, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, %bb.ag, %bb.ao, %bb.ap, %bb.ar, %._crit_edge.i.i.i.i.i.i.i.i.i26.i.i, %bb.av, %bb.bf, %bb.bg, %bb.bi, %._crit_edge.i.i.i.i.i.i.i.i.i.i43.i, %bb.bm, %bb.bu, %bb.bv, %bb.bx, %._crit_edge.i.i.i.i.i.i.i.i.i29.i.i, %bb.cb, %bb.cy, %bb.dg, %bb.di, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i63, %bb.em
  br i1 %.136121, label %bb.eu, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

bb.eu:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJSA_SA_EEEJSA_SA_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit
  %i.bbz = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bca = load <2 x ptr>, ptr %.134123, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.134123, i8 0, i64 16, i1 false)
  %i.bcb = load ptr, ptr %i.bbz, align 8, !tbaa !24 ; 8 uses
  store <2 x ptr> %i.bca, ptr %5, align 8, !tbaa !27
  %.not.i.i.i.i100 = icmp eq ptr %i.bcb, null
  br i1 %.not.i.i.i.i100, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.bcc = getelementptr inbounds nuw i8, ptr %i.bcb, i64 8 ; 4 uses
  %i.bcd = load atomic i64, ptr %i.bcc acquire, align 8 ; 2 uses
  %i.bce = icmp eq i64 %i.bcd, 4294967297
  %i.bcf = trunc i64 %i.bcd to i32                ; 2 uses
  br i1 %i.bce, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  store i32 0, ptr %i.bcc, align 8, !tbaa !33
  %i.bcg = getelementptr inbounds nuw i8, ptr %i.bcb, i64 12
  store i32 0, ptr %i.bcg, align 4, !tbaa !35
  %i.bch = load ptr, ptr %i.bcb, align 8, !tbaa !36
  %i.bci = getelementptr inbounds nuw i8, ptr %i.bch, i64 16
  %i.bcj = load ptr, ptr %i.bci, align 8
  call void %i.bcj(ptr noundef nonnull align 8 dereferenceable(16) %i.bcb) #33, !inline_history !739
  %i.bck = load ptr, ptr %i.bcb, align 8, !tbaa !36
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.bck, i64 24
  %i.bcm = load ptr, ptr %i.bcl, align 8
  call void %i.bcm(ptr noundef nonnull align 8 dereferenceable(16) %i.bcb) #33, !inline_history !739
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

bb.ex:                                            ; preds = %bb.ev
  %i.bcn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i101 = icmp eq i8 %i.bcn, 0
  br i1 %.not.i.i.i.i.i101, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.bco = add nsw i32 %i.bcf, -1
  store i32 %i.bco, ptr %i.bcc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ez:                                            ; preds = %bb.ex
  %i.bcp = atomicrmw volatile add ptr %i.bcc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ez, %bb.ey
  %.0.i.i.i.i.i.i = phi i32 [ %i.bcf, %bb.ey ], [ %i.bcp, %bb.ez ]
  %i.bcq = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bcq, label %bb.fa, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, !prof !39

bb.fa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bcb) #33
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit: ; preds = %bb.fa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ew, %bb.eu, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJSA_SA_EEEJSA_SA_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit
  %i.bcr = load ptr, ptr %8, align 8, !tbaa !696  ; 3 uses
  %i.bcs = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bct = load ptr, ptr %i.bcs, align 8, !tbaa !707 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bcr, %i.bct
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bcx, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i ], [ %i.bcr, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %i.bcu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.bcv = load i8, ptr %i.bcu, align 8, !tbaa !699, !range !235, !noundef !236
  %i.bcw = trunc nuw i8 %i.bcv to i1
  store i8 0, ptr %i.bcu, align 8, !tbaa !699
  br i1 %i.bcw, label %bb.fb, label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

bb.fb:                                            ; preds = %.lr.ph.i.i.i
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %.05.i.i.i) #33
  br label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i: ; preds = %bb.fb, %.lr.ph.i.i.i
  %i.bcx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i102 = icmp eq ptr %i.bcx, %i.bct
  br i1 %.not.i.i.i102, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !740

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !696
  br label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit
  %i.bcy = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bcr, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bcy, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit, label %bb.fc

bb.fc:                                            ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bcz = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bda = load ptr, ptr %i.bcz, align 8, !tbaa !741
  %i.bdb = ptrtoint ptr %i.bda to i64
  %i.bdc = ptrtoint ptr %i.bcy to i64
  %i.bdd = sub i64 %i.bdb, %i.bdc
  call void @_ZdlPvm(ptr noundef nonnull %i.bcy, i64 noundef %i.bdd) #35
  br label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit

_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  ret void

.body:                                            ; preds = %bb.cc, %common.resume.i
  %.pn.pn.pn = phi { ptr, i32 } [ %common.resume.op.i, %common.resume.i ], [ %i.ajp, %bb.cc ]
  call void @_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJSA_SA_EEEJSA_SA_EEEE27supportsFlatNoNullsFastPathEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJSA_SA_EEEJSA_SA_EEEE34ensureStringEncodingSetAtAllInputsEv(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJSA_SA_EEEJSA_SA_EEEE36propagateStringEncodingFromAllInputsEv(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113MinusFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJSA_SA_EEEJSA_SA_EEEE16getCanonicalNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress noreturn uwtable
define internal void @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS0_4exec10VectorExecEEEdNS0_15ConstantCheckerIJddEEEJddEE7getNameB5cxx11Ev(ptr dead_on_unwind noalias nofree readnone sret(%"class.std::__cxx11::basic_string") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.34)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #33
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZSt11make_sharedIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_116MultiplyFunctionINS1_4exec10VectorExecEEEdNS1_15ConstantCheckerIJddEEEJddEEEJRbRKSt6vectorINS7_17SignatureVariableESaISG_EEEESt10shared_ptrIT_EDpOT0_(i8 %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.facebook::velox::exec::FunctionSignatureBuilder", align 8 ; 16 uses
  %2 = alloca %"class.std::shared_ptr.15", align 16 ; 7 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"struct.facebook::velox::core::TypeAnalysis", align 1 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"struct.facebook::velox::core::TypeAnalysis", align 1 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::vector", align 16     ; 13 uses
  %11 = alloca %"struct.facebook::velox::core::TypeAnalysisResults", align 8 ; 31 uses
  %12 = alloca %"struct.facebook::velox::core::TypeAnalysis", align 1 ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::shared_ptr.18", align 16 ; 7 uses
  %15 = alloca %"class.std::vector.21", align 8   ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"struct.facebook::velox::core::SimpleFunctionMetadata<facebook::velox::functions::(anonymous namespace)::MultiplyFunction<facebook::velox::exec::VectorExec>, double, facebook::velox::ConstantChecker<double, double>, double, double>::SignatureTypesAnalysisResults", align 16 ; 31 uses
  store ptr null, ptr @_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEEdNS0_15ConstantCheckerIJddEEEJddEEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISK_EEE8instance, align 16, !tbaa !2717
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #34, !noalias !2720 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !35
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_116MultiplyFunctionINS1_4exec10VectorExecEEEdNS1_15ConstantCheckerIJddEEEJddEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS0_4exec10VectorExecEEEdNS0_15ConstantCheckerIJddEEEJddEEE, i64 16), ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %.0.val, ptr %i.e, align 8, !tbaa !2723
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2725)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33, !noalias !2725
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !2725
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33, !noalias !2725
  store i8 0, ptr %11, align 8, !tbaa !150, !noalias !2725
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 1
  store i8 0, ptr %i.i, align 1, !tbaa !152, !noalias !2725
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 2
  store i8 0, ptr %i.j, align 2, !tbaa !153, !noalias !2725
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !154, !noalias !2725
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.l)
          to label %bb.b unwind label %bb.at, !noalias !2725

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 392 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !noalias !2725
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 416 ; 10 uses
  store i32 0, ptr %i.n, align 8, !tbaa !155, !noalias !2725
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 424 ; 5 uses
  store ptr null, ptr %i.o, align 8, !tbaa !160, !noalias !2725
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 432 ; 5 uses
  store ptr %i.n, ptr %i.p, align 8, !tbaa !161, !noalias !2725
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 440 ; 4 uses
  store ptr %i.n, ptr %i.q, align 8, !tbaa !162, !noalias !2725
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 448 ; 6 uses
  store i64 0, ptr %i.r, align 8, !tbaa !163, !noalias !2725
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33, !noalias !2725
  invoke void @_ZN8facebook5velox4core12TypeAnalysisIdE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %bb.c unwind label %bb.au

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33, !noalias !2725
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33, !noalias !2725
  call void @llvm.experimental.noalias.scope.decl(metadata !2728)
  call void @llvm.experimental.noalias.scope.decl(metadata !2731)
  call void @llvm.experimental.noalias.scope.decl(metadata !2734)
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 12 uses
  store ptr %i.s, ptr %13, align 8, !tbaa !173, !alias.scope !2737, !noalias !2725
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i64 0, ptr %i.t, align 8, !tbaa !16, !alias.scope !2737, !noalias !2725
  store i8 0, ptr %i.s, align 8, !tbaa !28, !alias.scope !2737, !noalias !2725
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !2738 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !noalias !2738 ; 2 uses
  %i.y = icmp ugt ptr %i.v, %i.x
  %.08.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.y, ptr %i.v, ptr %i.x ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !180, !noalias !2738 ; 2 uses
  %i.ab = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef %i.aa, i64 noundef %i.ad)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %13, align 8, !tbaa !7, !alias.scope !2737, !noalias !2725 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.s
  br i1 %i.ah, label %.body.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.i.sink.split

bb.f:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e

_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33, !noalias !2725
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 400 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24, !noalias !2725 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.m, align 8, !tbaa !27, !noalias !2725
  store <2 x ptr> %i.am, ptr %14, align 16, !tbaa !27, !noalias !2725
  %.not.i.i.i25.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i25.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !2725
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
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33, !noalias !2725
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false), !noalias !2725
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33, !noalias !2725
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.as, ptr %7, align 8, !tbaa !173, !noalias !2725
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !16, !noalias !2725
  store i8 0, ptr %i.as, align 8, !tbaa !28, !noalias !2725
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i unwind label %bb.j

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.av = load ptr, ptr %7, align 8, !tbaa !7, !noalias !2725 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.as
  br i1 %i.aw, label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i
  %i.ax = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !2725
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #35
  br label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %7, align 8, !tbaa !7, !noalias !2725 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.as
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !2725
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !2725
  br label %.body29.i.i.i.i.i.i.i

_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !2725
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33, !noalias !2725
  invoke void @_ZN8facebook5velox4core12TypeAnalysisIdE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.av

.noexc.i.i.i.i.i.i.i:                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33, !noalias !2725
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33, !noalias !2725
  call void @llvm.experimental.noalias.scope.decl(metadata !2739)
  call void @llvm.experimental.noalias.scope.decl(metadata !2742)
  call void @llvm.experimental.noalias.scope.decl(metadata !2745)
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  store ptr %i.be, ptr %9, align 8, !tbaa !173, !alias.scope !2748, !noalias !2725
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 0, ptr %i.bf, align 8, !tbaa !16, !alias.scope !2748, !noalias !2725
  store i8 0, ptr %i.be, align 8, !tbaa !28, !alias.scope !2748, !noalias !2725
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !2749 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  %i.bh = load ptr, ptr %i.w, align 8, !noalias !2749 ; 2 uses
  %i.bi = icmp ugt ptr %i.bg, %i.bh
  %.08.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bi, ptr %i.bg, ptr %i.bh ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i26.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i26.i.i.i.i.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !180, !noalias !2749 ; 2 uses
  %i.bl = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.bk, i64 noundef %i.bn)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %9, align 8, !tbaa !7, !alias.scope !2748, !noalias !2725 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.be
  br i1 %i.br, label %.body29.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.bs = load i64, ptr %i.be, align 8, !tbaa !28, !alias.scope !2748, !noalias !2725
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #35
  br label %.body29.i.i.i.i.i.i.i

bb.m:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.bu)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l
end_hunk_8
begin_hunk_9_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a

bb.et:                                            ; preds = %bb.er
  %i.bcq = load ptr, ptr %i.bbx, align 8, !tbaa !720
  %i.bcr = shl nsw i64 %i.bcc, 2
  %i.bcs = getelementptr inbounds i8, ptr %i.bcq, i64 %i.bcr
  %i.bct = load i32, ptr %i.bcs, align 4, !tbaa !3
  br label %_ZN8facebook5velox6StatusD2Ev.exit26.i75.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit26.i75.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.et, %bb.es, %.noexc12.i73.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i17.i76.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bct, %bb.et ], [ %i.bcp, %bb.es ], [ %i.bcb, %.noexc12.i73.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bcu = sext i32 %.0.i.i.i17.i76.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bcv = getelementptr inbounds [8 x i8], ptr %i.bbs, i64 %i.bcu
  %i.bcw = load double, ptr %i.bcv, align 8, !tbaa !561
  %i.bcx = fmul double %i.bcm, %i.bcw
  %i.bcy = getelementptr inbounds [8 x i8], ptr %.sink.i.i, i64 %i.bcc
  store double %i.bcx, ptr %i.bcy, align 8, !tbaa !561
  %i.bcz = add nsw i64 %.036.i72.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.bda = and i64 %i.bcz, %.036.i72.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i77.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bda, 0
  br i1 %.not10.i77.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit, label %bb.en, !llvm.loop !2910

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit26.i75.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit26.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i72.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i.i.i.i.i.i.i.i.i.i43.i.i, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i47.i.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i47.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i70.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit21.i70.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit21.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit15.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit15.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit25.i73.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit25.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit19.i.i.i.i.i.i.i.i, %middle.block428, %vec.epilog.middle.block444, %middle.block509, %vec.epilog.middle.block526, %middle.block591, %vec.epilog.middle.block608, %middle.block655, %vec.epilog.middle.block671, %bb.z, %bb.aa, %bb.ac, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, %bb.ag, %bb.ao, %bb.ap, %bb.ar, %._crit_edge.i.i.i.i.i.i.i.i.i26.i.i, %bb.av, %bb.bf, %bb.bg, %bb.bi, %._crit_edge.i.i.i.i.i.i.i.i.i.i43.i, %bb.bm, %bb.bu, %bb.bv, %bb.bx, %._crit_edge.i.i.i.i.i.i.i.i.i29.i.i, %bb.cb, %bb.cy, %bb.dg, %bb.di, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i63, %bb.em
  br i1 %.136124, label %bb.eu, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

bb.eu:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit
  %i.bdb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bdc = load <2 x ptr>, ptr %.134126, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.134126, i8 0, i64 16, i1 false)
  %i.bdd = load ptr, ptr %i.bdb, align 8, !tbaa !24 ; 8 uses
  store <2 x ptr> %i.bdc, ptr %5, align 8, !tbaa !27
  %.not.i.i.i.i103 = icmp eq ptr %i.bdd, null
  br i1 %.not.i.i.i.i103, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bdd, i64 8 ; 4 uses
  %i.bdf = load atomic i64, ptr %i.bde acquire, align 8 ; 2 uses
  %i.bdg = icmp eq i64 %i.bdf, 4294967297
  %i.bdh = trunc i64 %i.bdf to i32                ; 2 uses
  br i1 %i.bdg, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  store i32 0, ptr %i.bde, align 8, !tbaa !33
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.bdd, i64 12
  store i32 0, ptr %i.bdi, align 4, !tbaa !35
  %i.bdj = load ptr, ptr %i.bdd, align 8, !tbaa !36
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.bdj, i64 16
  %i.bdl = load ptr, ptr %i.bdk, align 8
  call void %i.bdl(ptr noundef nonnull align 8 dereferenceable(16) %i.bdd) #33, !inline_history !739
  %i.bdm = load ptr, ptr %i.bdd, align 8, !tbaa !36
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.bdm, i64 24
  %i.bdo = load ptr, ptr %i.bdn, align 8
  call void %i.bdo(ptr noundef nonnull align 8 dereferenceable(16) %i.bdd) #33, !inline_history !739
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

bb.ex:                                            ; preds = %bb.ev
  %i.bdp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i104 = icmp eq i8 %i.bdp, 0
  br i1 %.not.i.i.i.i.i104, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.bdq = add nsw i32 %i.bdh, -1
  store i32 %i.bdq, ptr %i.bde, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ez:                                            ; preds = %bb.ex
  %i.bdr = atomicrmw volatile add ptr %i.bde, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ez, %bb.ey
  %.0.i.i.i.i.i.i = phi i32 [ %i.bdh, %bb.ey ], [ %i.bdr, %bb.ez ]
  %i.bds = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bds, label %bb.fa, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, !prof !39

bb.fa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bdd) #33
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit: ; preds = %bb.fa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ew, %bb.eu, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit
  %i.bdt = load ptr, ptr %8, align 8, !tbaa !696  ; 3 uses
  %i.bdu = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bdv = load ptr, ptr %i.bdu, align 8, !tbaa !707 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bdt, %i.bdv
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bdz, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i ], [ %i.bdt, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %i.bdw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.bdx = load i8, ptr %i.bdw, align 8, !tbaa !699, !range !235, !noundef !236
  %i.bdy = trunc nuw i8 %i.bdx to i1
  store i8 0, ptr %i.bdw, align 8, !tbaa !699
  br i1 %i.bdy, label %bb.fb, label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

bb.fb:                                            ; preds = %.lr.ph.i.i.i
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %.05.i.i.i) #33
  br label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i: ; preds = %bb.fb, %.lr.ph.i.i.i
  %i.bdz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i105 = icmp eq ptr %i.bdz, %i.bdv
  br i1 %.not.i.i.i105, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !740

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !696
  br label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit
  %i.bea = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bdt, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bea, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit, label %bb.fc

bb.fc:                                            ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i
  %i.beb = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bec = load ptr, ptr %i.beb, align 8, !tbaa !741
  %i.bed = ptrtoint ptr %i.bec to i64
  %i.bee = ptrtoint ptr %i.bea to i64
  %i.bef = sub i64 %i.bed, %i.bee
  call void @_ZdlPvm(ptr noundef nonnull %i.bea, i64 noundef %i.bef) #35
  br label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit

_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  ret void

.body:                                            ; preds = %bb.cc, %common.resume.i
  %.pn.pn.pn = phi { ptr, i32 } [ %common.resume.op.i, %common.resume.i ], [ %i.ajd, %bb.cc ]
  call void @_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE27supportsFlatNoNullsFastPathEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE34ensureStringEncodingSetAtAllInputsEv(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE36propagateStringEncodingFromAllInputsEv(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE16getCanonicalNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress noreturn uwtable
define internal void @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS0_4exec10VectorExecEEEfNS0_15ConstantCheckerIJffEEEJffEE7getNameB5cxx11Ev(ptr dead_on_unwind noalias nofree readnone sret(%"class.std::__cxx11::basic_string") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.34)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #33
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZSt11make_sharedIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_116MultiplyFunctionINS1_4exec10VectorExecEEEfNS1_15ConstantCheckerIJffEEEJffEEEJRbRKSt6vectorINS7_17SignatureVariableESaISG_EEEESt10shared_ptrIT_EDpOT0_(i8 %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.facebook::velox::exec::FunctionSignatureBuilder", align 8 ; 16 uses
  %2 = alloca %"class.std::shared_ptr.15", align 16 ; 7 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"struct.facebook::velox::core::TypeAnalysis.925", align 1 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"struct.facebook::velox::core::TypeAnalysis.925", align 1 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::vector", align 16     ; 13 uses
  %11 = alloca %"struct.facebook::velox::core::TypeAnalysisResults", align 8 ; 31 uses
  %12 = alloca %"struct.facebook::velox::core::TypeAnalysis.925", align 1 ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::shared_ptr.18", align 16 ; 7 uses
  %15 = alloca %"class.std::vector.21", align 8   ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"struct.facebook::velox::core::SimpleFunctionMetadata<facebook::velox::functions::(anonymous namespace)::MultiplyFunction<facebook::velox::exec::VectorExec>, float, facebook::velox::ConstantChecker<float, float>, float, float>::SignatureTypesAnalysisResults", align 16 ; 31 uses
  store ptr null, ptr @_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEEfNS0_15ConstantCheckerIJffEEEJffEEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISK_EEE8instance, align 16, !tbaa !2927
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #34, !noalias !2930 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !35
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_116MultiplyFunctionINS1_4exec10VectorExecEEEfNS1_15ConstantCheckerIJffEEEJffEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS0_4exec10VectorExecEEEfNS0_15ConstantCheckerIJffEEEJffEEE, i64 16), ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %.0.val, ptr %i.e, align 8, !tbaa !2933
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2935)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33, !noalias !2935
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !2935
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33, !noalias !2935
  store i8 0, ptr %11, align 8, !tbaa !150, !noalias !2935
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 1
  store i8 0, ptr %i.i, align 1, !tbaa !152, !noalias !2935
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 2
  store i8 0, ptr %i.j, align 2, !tbaa !153, !noalias !2935
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !154, !noalias !2935
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.l)
          to label %bb.b unwind label %bb.at, !noalias !2935

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 392 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !noalias !2935
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 416 ; 10 uses
  store i32 0, ptr %i.n, align 8, !tbaa !155, !noalias !2935
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 424 ; 5 uses
  store ptr null, ptr %i.o, align 8, !tbaa !160, !noalias !2935
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 432 ; 5 uses
  store ptr %i.n, ptr %i.p, align 8, !tbaa !161, !noalias !2935
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 440 ; 4 uses
  store ptr %i.n, ptr %i.q, align 8, !tbaa !162, !noalias !2935
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 448 ; 6 uses
  store i64 0, ptr %i.r, align 8, !tbaa !163, !noalias !2935
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33, !noalias !2935
  invoke void @_ZN8facebook5velox4core12TypeAnalysisIfE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %bb.c unwind label %bb.au

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33, !noalias !2935
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33, !noalias !2935
  call void @llvm.experimental.noalias.scope.decl(metadata !2938)
  call void @llvm.experimental.noalias.scope.decl(metadata !2941)
  call void @llvm.experimental.noalias.scope.decl(metadata !2944)
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 12 uses
  store ptr %i.s, ptr %13, align 8, !tbaa !173, !alias.scope !2947, !noalias !2935
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i64 0, ptr %i.t, align 8, !tbaa !16, !alias.scope !2947, !noalias !2935
  store i8 0, ptr %i.s, align 8, !tbaa !28, !alias.scope !2947, !noalias !2935
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !2948 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !noalias !2948 ; 2 uses
  %i.y = icmp ugt ptr %i.v, %i.x
  %.08.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.y, ptr %i.v, ptr %i.x ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !180, !noalias !2948 ; 2 uses
  %i.ab = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef %i.aa, i64 noundef %i.ad)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %13, align 8, !tbaa !7, !alias.scope !2947, !noalias !2935 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.s
  br i1 %i.ah, label %.body.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.i.sink.split

bb.f:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e

_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33, !noalias !2935
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 400 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24, !noalias !2935 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.m, align 8, !tbaa !27, !noalias !2935
  store <2 x ptr> %i.am, ptr %14, align 16, !tbaa !27, !noalias !2935
  %.not.i.i.i25.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i25.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !2935
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
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33, !noalias !2935
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false), !noalias !2935
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33, !noalias !2935
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.as, ptr %7, align 8, !tbaa !173, !noalias !2935
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !16, !noalias !2935
  store i8 0, ptr %i.as, align 8, !tbaa !28, !noalias !2935
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i unwind label %bb.j

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.av = load ptr, ptr %7, align 8, !tbaa !7, !noalias !2935 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.as
  br i1 %i.aw, label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i
  %i.ax = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !2935
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #35
  br label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %7, align 8, !tbaa !7, !noalias !2935 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.as
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !2935
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !2935
  br label %.body29.i.i.i.i.i.i.i

_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !2935
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33, !noalias !2935
  invoke void @_ZN8facebook5velox4core12TypeAnalysisIfE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.av

.noexc.i.i.i.i.i.i.i:                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33, !noalias !2935
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33, !noalias !2935
  call void @llvm.experimental.noalias.scope.decl(metadata !2949)
  call void @llvm.experimental.noalias.scope.decl(metadata !2952)
  call void @llvm.experimental.noalias.scope.decl(metadata !2955)
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  store ptr %i.be, ptr %9, align 8, !tbaa !173, !alias.scope !2958, !noalias !2935
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 0, ptr %i.bf, align 8, !tbaa !16, !alias.scope !2958, !noalias !2935
  store i8 0, ptr %i.be, align 8, !tbaa !28, !alias.scope !2958, !noalias !2935
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !2959 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  %i.bh = load ptr, ptr %i.w, align 8, !noalias !2959 ; 2 uses
  %i.bi = icmp ugt ptr %i.bg, %i.bh
  %.08.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bi, ptr %i.bg, ptr %i.bh ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i26.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i26.i.i.i.i.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !180, !noalias !2959 ; 2 uses
  %i.bl = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.bk, i64 noundef %i.bn)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %9, align 8, !tbaa !7, !alias.scope !2958, !noalias !2935 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.be
  br i1 %i.br, label %.body29.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.bs = load i64, ptr %i.be, align 8, !tbaa !28, !alias.scope !2958, !noalias !2935
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #35
  br label %.body29.i.i.i.i.i.i.i

bb.m:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.bu)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l
end_hunk_9
begin_hunk_10_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a

bb.et:                                            ; preds = %bb.er
  %i.bdf = load ptr, ptr %i.bcm, align 8, !tbaa !720, !noalias !3172
  %i.bdg = shl nsw i64 %i.bcr, 2
  %i.bdh = getelementptr inbounds i8, ptr %i.bdf, i64 %i.bdg
  %i.bdi = load i32, ptr %i.bdh, align 4, !tbaa !3, !noalias !3172
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i76.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit24.i76.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.et, %bb.es, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i74.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i15.i77.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bdi, %bb.et ], [ %i.bde, %bb.es ], [ %i.bcq, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i74.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bdj = sext i32 %.0.i.i.i15.i77.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bdk = getelementptr inbounds [4 x i8], ptr %i.bch, i64 %i.bdj
  %i.bdl = load float, ptr %i.bdk, align 4, !tbaa !1051, !noalias !3172
  %i.bdm = fmul float %i.bdb, %i.bdl
  %i.bdn = getelementptr inbounds [4 x i8], ptr %.sink.i.i, i64 %i.bcr
  store float %i.bdm, ptr %i.bdn, align 4, !tbaa !1051
  %i.bdo = add nsw i64 %.034.i73.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.bdp = and i64 %i.bdo, %.034.i73.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i78.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bdp, 0
  br i1 %.not10.i78.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit, label %bb.en, !llvm.loop !3133

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i76.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit18.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i72.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i.i.i.i.i.i.i.i.i.i43.i.i, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i47.i.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i47.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i70.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit21.i70.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit21.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit15.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit15.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit25.i73.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit25.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit19.i.i.i.i.i.i.i.i, %middle.block456, %vec.epilog.middle.block471, %middle.block533, %vec.epilog.middle.block549, %middle.block611, %vec.epilog.middle.block627, %middle.block671, %vec.epilog.middle.block686, %bb.z, %bb.aa, %bb.ac, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, %bb.ag, %bb.ao, %bb.ap, %bb.ar, %._crit_edge.i.i.i.i.i.i.i.i.i26.i.i, %bb.av, %bb.bf, %bb.bg, %bb.bi, %._crit_edge.i.i.i.i.i.i.i.i.i.i43.i, %bb.bm, %bb.bu, %bb.bv, %bb.bx, %._crit_edge.i.i.i.i.i.i.i.i.i29.i.i, %bb.cb, %bb.cy, %bb.dg, %bb.di, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i63, %bb.em
  br i1 %.136121, label %bb.eu, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

bb.eu:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit
  %i.bdq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bdr = load <2 x ptr>, ptr %.134123, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.134123, i8 0, i64 16, i1 false)
  %i.bds = load ptr, ptr %i.bdq, align 8, !tbaa !24 ; 8 uses
  store <2 x ptr> %i.bdr, ptr %5, align 8, !tbaa !27
  %.not.i.i.i.i100 = icmp eq ptr %i.bds, null
  br i1 %.not.i.i.i.i100, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.bds, i64 8 ; 4 uses
  %i.bdu = load atomic i64, ptr %i.bdt acquire, align 8 ; 2 uses
  %i.bdv = icmp eq i64 %i.bdu, 4294967297
  %i.bdw = trunc i64 %i.bdu to i32                ; 2 uses
  br i1 %i.bdv, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  store i32 0, ptr %i.bdt, align 8, !tbaa !33
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.bds, i64 12
  store i32 0, ptr %i.bdx, align 4, !tbaa !35
  %i.bdy = load ptr, ptr %i.bds, align 8, !tbaa !36
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.bdy, i64 16
  %i.bea = load ptr, ptr %i.bdz, align 8
  call void %i.bea(ptr noundef nonnull align 8 dereferenceable(16) %i.bds) #33, !inline_history !739
  %i.beb = load ptr, ptr %i.bds, align 8, !tbaa !36
  %i.bec = getelementptr inbounds nuw i8, ptr %i.beb, i64 24
  %i.bed = load ptr, ptr %i.bec, align 8
  call void %i.bed(ptr noundef nonnull align 8 dereferenceable(16) %i.bds) #33, !inline_history !739
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

bb.ex:                                            ; preds = %bb.ev
  %i.bee = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i101 = icmp eq i8 %i.bee, 0
  br i1 %.not.i.i.i.i.i101, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.bef = add nsw i32 %i.bdw, -1
  store i32 %i.bef, ptr %i.bdt, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ez:                                            ; preds = %bb.ex
  %i.beg = atomicrmw volatile add ptr %i.bdt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ez, %bb.ey
  %.0.i.i.i.i.i.i = phi i32 [ %i.bdw, %bb.ey ], [ %i.beg, %bb.ez ]
  %i.beh = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.beh, label %bb.fa, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, !prof !39

bb.fa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bds) #33
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit: ; preds = %bb.fa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ew, %bb.eu, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit
  %i.bei = load ptr, ptr %8, align 8, !tbaa !696  ; 3 uses
  %i.bej = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bek = load ptr, ptr %i.bej, align 8, !tbaa !707 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bei, %i.bek
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.beo, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i ], [ %i.bei, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %i.bel = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.bem = load i8, ptr %i.bel, align 8, !tbaa !699, !range !235, !noundef !236
  %i.ben = trunc nuw i8 %i.bem to i1
  store i8 0, ptr %i.bel, align 8, !tbaa !699
  br i1 %i.ben, label %bb.fb, label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

bb.fb:                                            ; preds = %.lr.ph.i.i.i
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %.05.i.i.i) #33
  br label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i: ; preds = %bb.fb, %.lr.ph.i.i.i
  %i.beo = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i102 = icmp eq ptr %i.beo, %i.bek
  br i1 %.not.i.i.i102, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !740

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !696
  br label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit
  %i.bep = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bei, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bep, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit, label %bb.fc

bb.fc:                                            ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i
  %i.beq = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ber = load ptr, ptr %i.beq, align 8, !tbaa !741
  %i.bes = ptrtoint ptr %i.ber to i64
  %i.bet = ptrtoint ptr %i.bep to i64
  %i.beu = sub i64 %i.bes, %i.bet
  call void @_ZdlPvm(ptr noundef nonnull %i.bep, i64 noundef %i.beu) #35
  br label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit

_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  ret void

.body:                                            ; preds = %bb.cc, %common.resume.i
  %.pn.pn.pn = phi { ptr, i32 } [ %common.resume.op.i, %common.resume.i ], [ %i.ajl, %bb.cc ]
  call void @_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE27supportsFlatNoNullsFastPathEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE34ensureStringEncodingSetAtAllInputsEv(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE36propagateStringEncodingFromAllInputsEv(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE16getCanonicalNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress noreturn uwtable
define internal void @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS0_4exec10VectorExecEEENS0_15IntervalDayTimeENS0_15ConstantCheckerIJS9_lEEEJS9_lEE7getNameB5cxx11Ev(ptr dead_on_unwind noalias nofree readnone sret(%"class.std::__cxx11::basic_string") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.34)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #33
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZSt11make_sharedIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_116MultiplyFunctionINS1_4exec10VectorExecEEENS1_15IntervalDayTimeENS1_15ConstantCheckerIJSA_lEEEJSA_lEEEJRbRKSt6vectorINS7_17SignatureVariableESaISH_EEEESt10shared_ptrIT_EDpOT0_(i8 %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.facebook::velox::exec::FunctionSignatureBuilder", align 8 ; 16 uses
  %2 = alloca %"class.std::shared_ptr.15", align 16 ; 7 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"struct.facebook::velox::core::TypeAnalysis.2585", align 1 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"struct.facebook::velox::core::TypeAnalysis.1121", align 1 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::vector", align 16     ; 13 uses
  %11 = alloca %"struct.facebook::velox::core::TypeAnalysisResults", align 8 ; 31 uses
  %12 = alloca %"struct.facebook::velox::core::TypeAnalysis.1121", align 1 ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::shared_ptr.18", align 16 ; 7 uses
  %15 = alloca %"class.std::vector.21", align 8   ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"struct.facebook::velox::core::SimpleFunctionMetadata<facebook::velox::functions::(anonymous namespace)::MultiplyFunction<facebook::velox::exec::VectorExec>, facebook::velox::IntervalDayTime, facebook::velox::ConstantChecker<facebook::velox::IntervalDayTime, long>, facebook::velox::IntervalDayTime, long>::SignatureTypesAnalysisResults", align 16 ; 31 uses
  store ptr null, ptr @_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEENS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_lEEEJSA_lEEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISL_EEE8instance, align 16, !tbaa !3175
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #34, !noalias !3178 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !35
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_116MultiplyFunctionINS1_4exec10VectorExecEEENS1_15IntervalDayTimeENS1_15ConstantCheckerIJSA_lEEEJSA_lEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS0_4exec10VectorExecEEENS0_15IntervalDayTimeENS0_15ConstantCheckerIJS9_lEEEJS9_lEEE, i64 16), ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %.0.val, ptr %i.e, align 8, !tbaa !3181
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3183)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33, !noalias !3183
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !3183
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33, !noalias !3183
  store i8 0, ptr %11, align 8, !tbaa !150, !noalias !3183
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 1
  store i8 0, ptr %i.i, align 1, !tbaa !152, !noalias !3183
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 2
  store i8 0, ptr %i.j, align 2, !tbaa !153, !noalias !3183
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !154, !noalias !3183
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.l)
          to label %bb.b unwind label %bb.at, !noalias !3183

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 392 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !noalias !3183
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 416 ; 10 uses
  store i32 0, ptr %i.n, align 8, !tbaa !155, !noalias !3183
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 424 ; 5 uses
  store ptr null, ptr %i.o, align 8, !tbaa !160, !noalias !3183
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 432 ; 5 uses
  store ptr %i.n, ptr %i.p, align 8, !tbaa !161, !noalias !3183
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 440 ; 4 uses
  store ptr %i.n, ptr %i.q, align 8, !tbaa !162, !noalias !3183
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 448 ; 6 uses
  store i64 0, ptr %i.r, align 8, !tbaa !163, !noalias !3183
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33, !noalias !3183
  invoke void @_ZN8facebook5velox4core12TypeAnalysisINS0_15IntervalDayTimeEE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %bb.c unwind label %bb.au

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33, !noalias !3183
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33, !noalias !3183
  call void @llvm.experimental.noalias.scope.decl(metadata !3186)
  call void @llvm.experimental.noalias.scope.decl(metadata !3189)
  call void @llvm.experimental.noalias.scope.decl(metadata !3192)
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 12 uses
  store ptr %i.s, ptr %13, align 8, !tbaa !173, !alias.scope !3195, !noalias !3183
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i64 0, ptr %i.t, align 8, !tbaa !16, !alias.scope !3195, !noalias !3183
  store i8 0, ptr %i.s, align 8, !tbaa !28, !alias.scope !3195, !noalias !3183
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !3196 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !noalias !3196 ; 2 uses
  %i.y = icmp ugt ptr %i.v, %i.x
  %.08.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.y, ptr %i.v, ptr %i.x ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !180, !noalias !3196 ; 2 uses
  %i.ab = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef %i.aa, i64 noundef %i.ad)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %13, align 8, !tbaa !7, !alias.scope !3195, !noalias !3183 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.s
  br i1 %i.ah, label %.body.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.i.sink.split

bb.f:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e

_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33, !noalias !3183
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 400 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24, !noalias !3183 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.m, align 8, !tbaa !27, !noalias !3183
  store <2 x ptr> %i.am, ptr %14, align 16, !tbaa !27, !noalias !3183
  %.not.i.i.i25.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i25.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !3183
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
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33, !noalias !3183
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false), !noalias !3183
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33, !noalias !3183
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.as, ptr %7, align 8, !tbaa !173, !noalias !3183
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !16, !noalias !3183
  store i8 0, ptr %i.as, align 8, !tbaa !28, !noalias !3183
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i unwind label %bb.j

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.av = load ptr, ptr %7, align 8, !tbaa !7, !noalias !3183 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.as
  br i1 %i.aw, label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i
  %i.ax = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !3183
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #35
  br label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %7, align 8, !tbaa !7, !noalias !3183 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.as
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !3183
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !3183
  br label %.body29.i.i.i.i.i.i.i

_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !3183
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33, !noalias !3183
  invoke void @_ZN8facebook5velox4core12TypeAnalysisINS0_15IntervalDayTimeEE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.av

.noexc.i.i.i.i.i.i.i:                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33, !noalias !3183
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33, !noalias !3183
  call void @llvm.experimental.noalias.scope.decl(metadata !3197)
  call void @llvm.experimental.noalias.scope.decl(metadata !3200)
  call void @llvm.experimental.noalias.scope.decl(metadata !3203)
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  store ptr %i.be, ptr %9, align 8, !tbaa !173, !alias.scope !3206, !noalias !3183
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 0, ptr %i.bf, align 8, !tbaa !16, !alias.scope !3206, !noalias !3183
  store i8 0, ptr %i.be, align 8, !tbaa !28, !alias.scope !3206, !noalias !3183
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !3207 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  %i.bh = load ptr, ptr %i.w, align 8, !noalias !3207 ; 2 uses
  %i.bi = icmp ugt ptr %i.bg, %i.bh
  %.08.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bi, ptr %i.bg, ptr %i.bh ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i26.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i26.i.i.i.i.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !180, !noalias !3207 ; 2 uses
  %i.bl = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.bk, i64 noundef %i.bn)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %9, align 8, !tbaa !7, !alias.scope !3206, !noalias !3183 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.be
  br i1 %i.br, label %.body29.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.bs = load i64, ptr %i.be, align 8, !tbaa !28, !alias.scope !3206, !noalias !3183
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #35
  br label %.body29.i.i.i.i.i.i.i

bb.m:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.bu)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l
end_hunk_10
begin_hunk_11_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_lEEEJSA_lEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EERKSJ_IKNS0_4TypeEERNS1_7EvalCtxERSL_:bb.a

bb.et:                                            ; preds = %bb.er
  %i.bcq = load ptr, ptr %i.bbx, align 8, !tbaa !720, !noalias !3418
  %i.bcr = shl nsw i64 %i.bcc, 2
  %i.bcs = getelementptr inbounds i8, ptr %i.bcq, i64 %i.bcr
  %i.bct = load i32, ptr %i.bcs, align 4, !tbaa !3, !noalias !3418
  br label %_ZN8facebook5velox6StatusD2Ev.exit23.i76.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit23.i76.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.et, %bb.es, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i74.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i15.i77.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bct, %bb.et ], [ %i.bcp, %bb.es ], [ %i.bcb, %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i74.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bcu = sext i32 %.0.i.i.i15.i77.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bcv = getelementptr inbounds [8 x i8], ptr %i.bbs, i64 %i.bcu
  %i.bcw = load i64, ptr %i.bcv, align 8, !tbaa !209, !noalias !3418
  %i.bcx = mul nsw i64 %i.bcw, %i.bcm
  %i.bcy = getelementptr inbounds [8 x i8], ptr %.sink.i.i, i64 %i.bcc
  store i64 %i.bcx, ptr %i.bcy, align 8, !tbaa !209
  %i.bcz = add nsw i64 %.034.i73.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.bda = and i64 %i.bcz, %.034.i73.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i78.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bda, 0
  br i1 %.not10.i78.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_lEEEJSA_lEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit, label %bb.en, !llvm.loop !3380

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_lEEEJSA_lEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit23.i76.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit23.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit17.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i72.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i.i.i.i.i.i.i.i.i.i43.i.i, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i47.i.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i47.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i70.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit21.i70.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit21.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit15.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit15.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit25.i73.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit25.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit19.i.i.i.i.i.i.i.i, %middle.block425, %vec.epilog.middle.block441, %middle.block506, %vec.epilog.middle.block523, %middle.block588, %vec.epilog.middle.block605, %middle.block652, %vec.epilog.middle.block668, %bb.z, %bb.aa, %bb.ac, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, %bb.ag, %bb.ao, %bb.ap, %bb.ar, %._crit_edge.i.i.i.i.i.i.i.i.i26.i.i, %bb.av, %bb.bf, %bb.bg, %bb.bi, %._crit_edge.i.i.i.i.i.i.i.i.i.i43.i, %bb.bm, %bb.bu, %bb.bv, %bb.bx, %._crit_edge.i.i.i.i.i.i.i.i.i29.i.i, %bb.cb, %bb.cy, %bb.dg, %bb.di, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i63, %bb.em
  br i1 %.136121, label %bb.eu, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

bb.eu:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_lEEEJSA_lEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit
  %i.bdb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bdc = load <2 x ptr>, ptr %.134123, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.134123, i8 0, i64 16, i1 false)
  %i.bdd = load ptr, ptr %i.bdb, align 8, !tbaa !24 ; 8 uses
  store <2 x ptr> %i.bdc, ptr %5, align 8, !tbaa !27
  %.not.i.i.i.i100 = icmp eq ptr %i.bdd, null
  br i1 %.not.i.i.i.i100, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bdd, i64 8 ; 4 uses
  %i.bdf = load atomic i64, ptr %i.bde acquire, align 8 ; 2 uses
  %i.bdg = icmp eq i64 %i.bdf, 4294967297
  %i.bdh = trunc i64 %i.bdf to i32                ; 2 uses
  br i1 %i.bdg, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  store i32 0, ptr %i.bde, align 8, !tbaa !33
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.bdd, i64 12
  store i32 0, ptr %i.bdi, align 4, !tbaa !35
  %i.bdj = load ptr, ptr %i.bdd, align 8, !tbaa !36
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.bdj, i64 16
  %i.bdl = load ptr, ptr %i.bdk, align 8
  call void %i.bdl(ptr noundef nonnull align 8 dereferenceable(16) %i.bdd) #33, !inline_history !739
  %i.bdm = load ptr, ptr %i.bdd, align 8, !tbaa !36
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.bdm, i64 24
  %i.bdo = load ptr, ptr %i.bdn, align 8
  call void %i.bdo(ptr noundef nonnull align 8 dereferenceable(16) %i.bdd) #33, !inline_history !739
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

bb.ex:                                            ; preds = %bb.ev
  %i.bdp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i101 = icmp eq i8 %i.bdp, 0
  br i1 %.not.i.i.i.i.i101, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.bdq = add nsw i32 %i.bdh, -1
  store i32 %i.bdq, ptr %i.bde, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ez:                                            ; preds = %bb.ex
  %i.bdr = atomicrmw volatile add ptr %i.bde, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ez, %bb.ey
  %.0.i.i.i.i.i.i = phi i32 [ %i.bdh, %bb.ey ], [ %i.bdr, %bb.ez ]
  %i.bds = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bds, label %bb.fa, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, !prof !39

bb.fa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bdd) #33
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit: ; preds = %bb.fa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ew, %bb.eu, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_lEEEJSA_lEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit
  %i.bdt = load ptr, ptr %8, align 8, !tbaa !696  ; 3 uses
  %i.bdu = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bdv = load ptr, ptr %i.bdu, align 8, !tbaa !707 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bdt, %i.bdv
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bdz, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i ], [ %i.bdt, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %i.bdw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.bdx = load i8, ptr %i.bdw, align 8, !tbaa !699, !range !235, !noundef !236
  %i.bdy = trunc nuw i8 %i.bdx to i1
  store i8 0, ptr %i.bdw, align 8, !tbaa !699
  br i1 %i.bdy, label %bb.fb, label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

bb.fb:                                            ; preds = %.lr.ph.i.i.i
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %.05.i.i.i) #33
  br label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i: ; preds = %bb.fb, %.lr.ph.i.i.i
  %i.bdz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i102 = icmp eq ptr %i.bdz, %i.bdv
  br i1 %.not.i.i.i102, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !740

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !696
  br label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit
  %i.bea = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bdt, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bea, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit, label %bb.fc

bb.fc:                                            ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i
  %i.beb = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bec = load ptr, ptr %i.beb, align 8, !tbaa !741
  %i.bed = ptrtoint ptr %i.bec to i64
  %i.bee = ptrtoint ptr %i.bea to i64
  %i.bef = sub i64 %i.bed, %i.bee
  call void @_ZdlPvm(ptr noundef nonnull %i.bea, i64 noundef %i.bef) #35
  br label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit

_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  ret void

.body:                                            ; preds = %bb.cc, %common.resume.i
  %.pn.pn.pn = phi { ptr, i32 } [ %common.resume.op.i, %common.resume.i ], [ %i.ajd, %bb.cc ]
  call void @_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_lEEEJSA_lEEEE27supportsFlatNoNullsFastPathEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_lEEEJSA_lEEEE34ensureStringEncodingSetAtAllInputsEv(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_lEEEJSA_lEEEE36propagateStringEncodingFromAllInputsEv(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_lEEEJSA_lEEEE16getCanonicalNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress noreturn uwtable
define internal void @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS0_4exec10VectorExecEEENS0_15IntervalDayTimeENS0_15ConstantCheckerIJlS9_EEEJlS9_EE7getNameB5cxx11Ev(ptr dead_on_unwind noalias nofree readnone sret(%"class.std::__cxx11::basic_string") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.34)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #33
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZSt11make_sharedIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_116MultiplyFunctionINS1_4exec10VectorExecEEENS1_15IntervalDayTimeENS1_15ConstantCheckerIJlSA_EEEJlSA_EEEJRbRKSt6vectorINS7_17SignatureVariableESaISH_EEEESt10shared_ptrIT_EDpOT0_(i8 %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.facebook::velox::exec::FunctionSignatureBuilder", align 8 ; 16 uses
  %2 = alloca %"class.std::shared_ptr.15", align 16 ; 7 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"struct.facebook::velox::core::TypeAnalysis.1121", align 1 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"struct.facebook::velox::core::TypeAnalysis.2585", align 1 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::vector", align 16     ; 13 uses
  %11 = alloca %"struct.facebook::velox::core::TypeAnalysisResults", align 8 ; 31 uses
  %12 = alloca %"struct.facebook::velox::core::TypeAnalysis.1121", align 1 ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::shared_ptr.18", align 16 ; 7 uses
  %15 = alloca %"class.std::vector.21", align 8   ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"struct.facebook::velox::core::SimpleFunctionMetadata<facebook::velox::functions::(anonymous namespace)::MultiplyFunction<facebook::velox::exec::VectorExec>, facebook::velox::IntervalDayTime, facebook::velox::ConstantChecker<long, facebook::velox::IntervalDayTime>, long, facebook::velox::IntervalDayTime>::SignatureTypesAnalysisResults", align 16 ; 31 uses
  store ptr null, ptr @_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEENS0_15IntervalDayTimeENS0_15ConstantCheckerIJlSA_EEEJlSA_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISL_EEE8instance, align 16, !tbaa !3421
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #34, !noalias !3424 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !35
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_116MultiplyFunctionINS1_4exec10VectorExecEEENS1_15IntervalDayTimeENS1_15ConstantCheckerIJlSA_EEEJlSA_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS0_4exec10VectorExecEEENS0_15IntervalDayTimeENS0_15ConstantCheckerIJlS9_EEEJlS9_EEE, i64 16), ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %.0.val, ptr %i.e, align 8, !tbaa !3427
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3429)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33, !noalias !3429
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !3429
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33, !noalias !3429
  store i8 0, ptr %11, align 8, !tbaa !150, !noalias !3429
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 1
  store i8 0, ptr %i.i, align 1, !tbaa !152, !noalias !3429
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 2
  store i8 0, ptr %i.j, align 2, !tbaa !153, !noalias !3429
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !154, !noalias !3429
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.l)
          to label %bb.b unwind label %bb.at, !noalias !3429

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 392 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !noalias !3429
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 416 ; 10 uses
  store i32 0, ptr %i.n, align 8, !tbaa !155, !noalias !3429
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 424 ; 5 uses
  store ptr null, ptr %i.o, align 8, !tbaa !160, !noalias !3429
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 432 ; 5 uses
  store ptr %i.n, ptr %i.p, align 8, !tbaa !161, !noalias !3429
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 440 ; 4 uses
  store ptr %i.n, ptr %i.q, align 8, !tbaa !162, !noalias !3429
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 448 ; 6 uses
  store i64 0, ptr %i.r, align 8, !tbaa !163, !noalias !3429
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33, !noalias !3429
  invoke void @_ZN8facebook5velox4core12TypeAnalysisINS0_15IntervalDayTimeEE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %bb.c unwind label %bb.au

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33, !noalias !3429
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33, !noalias !3429
  call void @llvm.experimental.noalias.scope.decl(metadata !3432)
  call void @llvm.experimental.noalias.scope.decl(metadata !3435)
  call void @llvm.experimental.noalias.scope.decl(metadata !3438)
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 12 uses
  store ptr %i.s, ptr %13, align 8, !tbaa !173, !alias.scope !3441, !noalias !3429
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i64 0, ptr %i.t, align 8, !tbaa !16, !alias.scope !3441, !noalias !3429
  store i8 0, ptr %i.s, align 8, !tbaa !28, !alias.scope !3441, !noalias !3429
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !3442 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !noalias !3442 ; 2 uses
  %i.y = icmp ugt ptr %i.v, %i.x
  %.08.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.y, ptr %i.v, ptr %i.x ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !180, !noalias !3442 ; 2 uses
  %i.ab = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef %i.aa, i64 noundef %i.ad)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %13, align 8, !tbaa !7, !alias.scope !3441, !noalias !3429 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.s
  br i1 %i.ah, label %.body.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.i.sink.split

bb.f:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e

_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33, !noalias !3429
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 400 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24, !noalias !3429 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.m, align 8, !tbaa !27, !noalias !3429
  store <2 x ptr> %i.am, ptr %14, align 16, !tbaa !27, !noalias !3429
  %.not.i.i.i25.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i25.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !3429
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
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33, !noalias !3429
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false), !noalias !3429
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33, !noalias !3429
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.as, ptr %7, align 8, !tbaa !173, !noalias !3429
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !16, !noalias !3429
  store i8 0, ptr %i.as, align 8, !tbaa !28, !noalias !3429
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i unwind label %bb.j

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.av = load ptr, ptr %7, align 8, !tbaa !7, !noalias !3429 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.as
  br i1 %i.aw, label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i
  %i.ax = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !3429
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #35
  br label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %7, align 8, !tbaa !7, !noalias !3429 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.as
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !3429
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !3429
  br label %.body29.i.i.i.i.i.i.i

_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !3429
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33, !noalias !3429
  invoke void @_ZN8facebook5velox4core12TypeAnalysisIlE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.av

.noexc.i.i.i.i.i.i.i:                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33, !noalias !3429
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33, !noalias !3429
  call void @llvm.experimental.noalias.scope.decl(metadata !3443)
  call void @llvm.experimental.noalias.scope.decl(metadata !3446)
  call void @llvm.experimental.noalias.scope.decl(metadata !3449)
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  store ptr %i.be, ptr %9, align 8, !tbaa !173, !alias.scope !3452, !noalias !3429
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 0, ptr %i.bf, align 8, !tbaa !16, !alias.scope !3452, !noalias !3429
  store i8 0, ptr %i.be, align 8, !tbaa !28, !alias.scope !3452, !noalias !3429
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !3453 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  %i.bh = load ptr, ptr %i.w, align 8, !noalias !3453 ; 2 uses
  %i.bi = icmp ugt ptr %i.bg, %i.bh
  %.08.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bi, ptr %i.bg, ptr %i.bh ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i26.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i26.i.i.i.i.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !180, !noalias !3453 ; 2 uses
  %i.bl = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.bk, i64 noundef %i.bn)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %9, align 8, !tbaa !7, !alias.scope !3452, !noalias !3429 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.be
  br i1 %i.br, label %.body29.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.bs = load i64, ptr %i.be, align 8, !tbaa !28, !alias.scope !3452, !noalias !3429
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #35
  br label %.body29.i.i.i.i.i.i.i

bb.m:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.bu)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l
end_hunk_11
begin_hunk_12_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJlSA_EEEJlSA_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EERKSJ_IKNS0_4TypeEERNS1_7EvalCtxERSL_:bb.a

bb.et:                                            ; preds = %bb.er
  %i.bcq = load ptr, ptr %i.bbx, align 8, !tbaa !720, !noalias !3664
  %i.bcr = shl nsw i64 %i.bcc, 2
  %i.bcs = getelementptr inbounds i8, ptr %i.bcq, i64 %i.bcr
  %i.bct = load i32, ptr %i.bcs, align 4, !tbaa !3, !noalias !3664
  br label %_ZN8facebook5velox6StatusD2Ev.exit23.i76.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit23.i76.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.et, %bb.es, %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i74.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i15.i77.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bct, %bb.et ], [ %i.bcp, %bb.es ], [ %i.bcb, %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit.i74.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bcu = sext i32 %.0.i.i.i15.i77.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bcv = getelementptr inbounds [8 x i8], ptr %i.bbs, i64 %i.bcu
  %i.bcw = load i64, ptr %i.bcv, align 8, !tbaa !209, !noalias !3664
  %i.bcx = mul nsw i64 %i.bcw, %i.bcm
  %i.bcy = getelementptr inbounds [8 x i8], ptr %.sink.i.i, i64 %i.bcc
  store i64 %i.bcx, ptr %i.bcy, align 8, !tbaa !209
  %i.bcz = add nsw i64 %.034.i73.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.bda = and i64 %i.bcz, %.034.i73.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i78.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bda, 0
  br i1 %.not10.i78.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJlSA_EEEJlSA_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit, label %bb.en, !llvm.loop !3626

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJlSA_EEEJlSA_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit23.i76.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit23.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit17.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i72.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i.i.i.i.i.i.i.i.i.i43.i.i, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i47.i.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i47.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i70.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit21.i70.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit21.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit15.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit15.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit24.i73.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit18.i.i.i.i.i.i.i.i, %middle.block425, %vec.epilog.middle.block441, %middle.block506, %vec.epilog.middle.block523, %middle.block588, %vec.epilog.middle.block605, %middle.block652, %vec.epilog.middle.block668, %bb.z, %bb.aa, %bb.ac, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, %bb.ag, %bb.ao, %bb.ap, %bb.ar, %._crit_edge.i.i.i.i.i.i.i.i.i26.i.i, %bb.av, %bb.bf, %bb.bg, %bb.bi, %._crit_edge.i.i.i.i.i.i.i.i.i.i43.i, %bb.bm, %bb.bu, %bb.bv, %bb.bx, %._crit_edge.i.i.i.i.i.i.i.i.i29.i.i, %bb.cb, %bb.cy, %bb.dg, %bb.di, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i63, %bb.em
  br i1 %.136121, label %bb.eu, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

bb.eu:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJlSA_EEEJlSA_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit
  %i.bdb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bdc = load <2 x ptr>, ptr %.134123, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.134123, i8 0, i64 16, i1 false)
  %i.bdd = load ptr, ptr %i.bdb, align 8, !tbaa !24 ; 8 uses
  store <2 x ptr> %i.bdc, ptr %5, align 8, !tbaa !27
  %.not.i.i.i.i100 = icmp eq ptr %i.bdd, null
  br i1 %.not.i.i.i.i100, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bdd, i64 8 ; 4 uses
  %i.bdf = load atomic i64, ptr %i.bde acquire, align 8 ; 2 uses
  %i.bdg = icmp eq i64 %i.bdf, 4294967297
  %i.bdh = trunc i64 %i.bdf to i32                ; 2 uses
  br i1 %i.bdg, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  store i32 0, ptr %i.bde, align 8, !tbaa !33
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.bdd, i64 12
  store i32 0, ptr %i.bdi, align 4, !tbaa !35
  %i.bdj = load ptr, ptr %i.bdd, align 8, !tbaa !36
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.bdj, i64 16
  %i.bdl = load ptr, ptr %i.bdk, align 8
  call void %i.bdl(ptr noundef nonnull align 8 dereferenceable(16) %i.bdd) #33, !inline_history !739
  %i.bdm = load ptr, ptr %i.bdd, align 8, !tbaa !36
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.bdm, i64 24
  %i.bdo = load ptr, ptr %i.bdn, align 8
  call void %i.bdo(ptr noundef nonnull align 8 dereferenceable(16) %i.bdd) #33, !inline_history !739
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

bb.ex:                                            ; preds = %bb.ev
  %i.bdp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i101 = icmp eq i8 %i.bdp, 0
  br i1 %.not.i.i.i.i.i101, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.bdq = add nsw i32 %i.bdh, -1
  store i32 %i.bdq, ptr %i.bde, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ez:                                            ; preds = %bb.ex
  %i.bdr = atomicrmw volatile add ptr %i.bde, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ez, %bb.ey
  %.0.i.i.i.i.i.i = phi i32 [ %i.bdh, %bb.ey ], [ %i.bdr, %bb.ez ]
  %i.bds = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bds, label %bb.fa, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, !prof !39

bb.fa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bdd) #33
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit: ; preds = %bb.fa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ew, %bb.eu, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJlSA_EEEJlSA_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit
  %i.bdt = load ptr, ptr %8, align 8, !tbaa !696  ; 3 uses
  %i.bdu = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bdv = load ptr, ptr %i.bdu, align 8, !tbaa !707 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bdt, %i.bdv
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bdz, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i ], [ %i.bdt, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %i.bdw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.bdx = load i8, ptr %i.bdw, align 8, !tbaa !699, !range !235, !noundef !236
  %i.bdy = trunc nuw i8 %i.bdx to i1
  store i8 0, ptr %i.bdw, align 8, !tbaa !699
  br i1 %i.bdy, label %bb.fb, label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

bb.fb:                                            ; preds = %.lr.ph.i.i.i
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %.05.i.i.i) #33
  br label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i: ; preds = %bb.fb, %.lr.ph.i.i.i
  %i.bdz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i102 = icmp eq ptr %i.bdz, %i.bdv
  br i1 %.not.i.i.i102, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !740

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !696
  br label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit
  %i.bea = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bdt, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bea, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit, label %bb.fc

bb.fc:                                            ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i
  %i.beb = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bec = load ptr, ptr %i.beb, align 8, !tbaa !741
  %i.bed = ptrtoint ptr %i.bec to i64
  %i.bee = ptrtoint ptr %i.bea to i64
  %i.bef = sub i64 %i.bed, %i.bee
  call void @_ZdlPvm(ptr noundef nonnull %i.bea, i64 noundef %i.bef) #35
  br label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit

_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  ret void

.body:                                            ; preds = %bb.cc, %common.resume.i
  %.pn.pn.pn = phi { ptr, i32 } [ %common.resume.op.i, %common.resume.i ], [ %i.ajd, %bb.cc ]
  call void @_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJlSA_EEEJlSA_EEEE27supportsFlatNoNullsFastPathEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJlSA_EEEJlSA_EEEE34ensureStringEncodingSetAtAllInputsEv(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJlSA_EEEJlSA_EEEE36propagateStringEncodingFromAllInputsEv(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJlSA_EEEJlSA_EEEE16getCanonicalNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress noreturn uwtable
define internal void @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS0_4exec10VectorExecEEENS0_15IntervalDayTimeENS0_15ConstantCheckerIJS9_dEEEJS9_dEE7getNameB5cxx11Ev(ptr dead_on_unwind noalias nofree readnone sret(%"class.std::__cxx11::basic_string") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.34)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #33
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZSt11make_sharedIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_4exec10VectorExecEEENS1_15IntervalDayTimeENS1_15ConstantCheckerIJSA_dEEEJSA_dEEEJRbRKSt6vectorINS7_17SignatureVariableESaISH_EEEESt10shared_ptrIT_EDpOT0_(i8 %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.facebook::velox::exec::FunctionSignatureBuilder", align 8 ; 16 uses
  %2 = alloca %"class.std::shared_ptr.15", align 16 ; 7 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"struct.facebook::velox::core::TypeAnalysis", align 1 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"struct.facebook::velox::core::TypeAnalysis.1121", align 1 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::vector", align 16     ; 13 uses
  %11 = alloca %"struct.facebook::velox::core::TypeAnalysisResults", align 8 ; 31 uses
  %12 = alloca %"struct.facebook::velox::core::TypeAnalysis.1121", align 1 ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::shared_ptr.18", align 16 ; 7 uses
  %15 = alloca %"class.std::vector.21", align 8   ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"struct.facebook::velox::core::SimpleFunctionMetadata<facebook::velox::functions::(anonymous namespace)::IntervalMultiplyFunction<facebook::velox::exec::VectorExec>, facebook::velox::IntervalDayTime, facebook::velox::ConstantChecker<facebook::velox::IntervalDayTime, double>, facebook::velox::IntervalDayTime, double>::SignatureTypesAnalysisResults", align 16 ; 31 uses
  store ptr null, ptr @_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_10VectorExecEEENS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_dEEEJSA_dEEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISL_EEE8instance, align 16, !tbaa !3667
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #34, !noalias !3670 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !35
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_4exec10VectorExecEEENS1_15IntervalDayTimeENS1_15ConstantCheckerIJSA_dEEEJSA_dEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS0_4exec10VectorExecEEENS0_15IntervalDayTimeENS0_15ConstantCheckerIJS9_dEEEJS9_dEEE, i64 16), ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %.0.val, ptr %i.e, align 8, !tbaa !3673
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3675)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33, !noalias !3675
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !3675
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33, !noalias !3675
  store i8 0, ptr %11, align 8, !tbaa !150, !noalias !3675
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 1
  store i8 0, ptr %i.i, align 1, !tbaa !152, !noalias !3675
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 2
  store i8 0, ptr %i.j, align 2, !tbaa !153, !noalias !3675
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !154, !noalias !3675
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.l)
          to label %bb.b unwind label %bb.at, !noalias !3675

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 392 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !noalias !3675
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 416 ; 10 uses
  store i32 0, ptr %i.n, align 8, !tbaa !155, !noalias !3675
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 424 ; 5 uses
  store ptr null, ptr %i.o, align 8, !tbaa !160, !noalias !3675
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 432 ; 5 uses
  store ptr %i.n, ptr %i.p, align 8, !tbaa !161, !noalias !3675
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 440 ; 4 uses
  store ptr %i.n, ptr %i.q, align 8, !tbaa !162, !noalias !3675
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 448 ; 6 uses
  store i64 0, ptr %i.r, align 8, !tbaa !163, !noalias !3675
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33, !noalias !3675
  invoke void @_ZN8facebook5velox4core12TypeAnalysisINS0_15IntervalDayTimeEE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %bb.c unwind label %bb.au

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33, !noalias !3675
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33, !noalias !3675
  call void @llvm.experimental.noalias.scope.decl(metadata !3678)
  call void @llvm.experimental.noalias.scope.decl(metadata !3681)
  call void @llvm.experimental.noalias.scope.decl(metadata !3684)
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 12 uses
  store ptr %i.s, ptr %13, align 8, !tbaa !173, !alias.scope !3687, !noalias !3675
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i64 0, ptr %i.t, align 8, !tbaa !16, !alias.scope !3687, !noalias !3675
  store i8 0, ptr %i.s, align 8, !tbaa !28, !alias.scope !3687, !noalias !3675
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !3688 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !noalias !3688 ; 2 uses
  %i.y = icmp ugt ptr %i.v, %i.x
  %.08.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.y, ptr %i.v, ptr %i.x ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !180, !noalias !3688 ; 2 uses
  %i.ab = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef %i.aa, i64 noundef %i.ad)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %13, align 8, !tbaa !7, !alias.scope !3687, !noalias !3675 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.s
  br i1 %i.ah, label %.body.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.i.sink.split

bb.f:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e

_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33, !noalias !3675
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 400 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24, !noalias !3675 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.m, align 8, !tbaa !27, !noalias !3675
  store <2 x ptr> %i.am, ptr %14, align 16, !tbaa !27, !noalias !3675
  %.not.i.i.i25.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i25.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !3675
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
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33, !noalias !3675
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false), !noalias !3675
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33, !noalias !3675
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.as, ptr %7, align 8, !tbaa !173, !noalias !3675
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !16, !noalias !3675
  store i8 0, ptr %i.as, align 8, !tbaa !28, !noalias !3675
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i unwind label %bb.j

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.av = load ptr, ptr %7, align 8, !tbaa !7, !noalias !3675 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.as
  br i1 %i.aw, label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i
  %i.ax = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !3675
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #35
  br label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %7, align 8, !tbaa !7, !noalias !3675 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.as
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !3675
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !3675
  br label %.body29.i.i.i.i.i.i.i

_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !3675
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33, !noalias !3675
  invoke void @_ZN8facebook5velox4core12TypeAnalysisINS0_15IntervalDayTimeEE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.av

.noexc.i.i.i.i.i.i.i:                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33, !noalias !3675
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33, !noalias !3675
  call void @llvm.experimental.noalias.scope.decl(metadata !3689)
  call void @llvm.experimental.noalias.scope.decl(metadata !3692)
  call void @llvm.experimental.noalias.scope.decl(metadata !3695)
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  store ptr %i.be, ptr %9, align 8, !tbaa !173, !alias.scope !3698, !noalias !3675
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 0, ptr %i.bf, align 8, !tbaa !16, !alias.scope !3698, !noalias !3675
  store i8 0, ptr %i.be, align 8, !tbaa !28, !alias.scope !3698, !noalias !3675
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !3699 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  %i.bh = load ptr, ptr %i.w, align 8, !noalias !3699 ; 2 uses
  %i.bi = icmp ugt ptr %i.bg, %i.bh
  %.08.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bi, ptr %i.bg, ptr %i.bh ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i26.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i26.i.i.i.i.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !180, !noalias !3699 ; 2 uses
  %i.bl = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.bk, i64 noundef %i.bn)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %9, align 8, !tbaa !7, !alias.scope !3698, !noalias !3675 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.be
  br i1 %i.br, label %.body29.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.bs = load i64, ptr %i.be, align 8, !tbaa !28, !alias.scope !3698, !noalias !3675
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #35
  br label %.body29.i.i.i.i.i.i.i

bb.m:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.bu)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l
end_hunk_12
begin_hunk_13_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_dEEEJSA_dEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EERKSJ_IKNS0_4TypeEERNS1_7EvalCtxERSL_:bb.a
  %i.bdn = and i1 %i.bdm, %or.cond.i.i.not.i89.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.bdn, label %bb.gy, label %bb.gz, !prof !285

bb.gy:                                            ; preds = %.noexc14.i85.i.i.i.i.i.i.i.i.i.i.i
  %i.bdo = fptosi double %i.bdi to i64
  br label %_ZN8facebook5velox6StatusD2Ev.exit25.i90.i.i.i.i.i.i.i.i.i.i.i

bb.gz:                                            ; preds = %.noexc14.i85.i.i.i.i.i.i.i.i.i.i.i
  %i.bdp = fcmp ogt double %i.bdi, 0.000000e+00
  %i.bdq = select i1 %i.bdp, i64 9223372036854775807, i64 -9223372036854775808
  br label %_ZN8facebook5velox6StatusD2Ev.exit25.i90.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit25.i90.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.gz, %bb.gy
  %storemerge.i.i.i91.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bdq, %bb.gz ], [ %i.bdo, %bb.gy ]
  %i.bdr = getelementptr inbounds [8 x i8], ptr %.sink.i.i, i64 %i.bcm
  store i64 %storemerge.i.i.i91.i.i.i.i.i.i.i.i.i.i.i, ptr %i.bdr, align 8, !tbaa !209
  %i.bds = add nsw i64 %.037.i82.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.bdt = and i64 %i.bds, %.037.i82.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i92.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bdt, 0
  br i1 %.not10.i92.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_dEEEJSA_dEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit, label %bb.gr, !llvm.loop !3861

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_dEEEJSA_dEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit25.i90.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit25.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit19.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i74.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit21.i74.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit21.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit15.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit22.i72.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit22.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit16.i.i.i.i.i.i.i.i, %.noexc17.i76.i.i.i.i.i.i.i.i.i.i.i, %.noexc17.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc10.i.i.i.i.i.i.i.i, %middle.block387, %middle.block422, %middle.block458, %middle.block528, %vec.epilog.middle.block544, %bb.v, %bb.w, %bb.y, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, %bb.ac, %bb.ak, %bb.an, %bb.ap, %._crit_edge.i.i.i.i.i.i.i.i.i27.i.i, %bb.be, %bb.br, %bb.bu, %bb.bw, %._crit_edge.i.i.i.i.i.i.i.i.i.i37.i, %bb.cl, %bb.cw, %bb.cz, %bb.db, %._crit_edge.i.i.i.i.i.i.i.i.i30.i.i, %bb.dq, %bb.eq, %bb.fa, %bb.fc, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i65, %bb.gq
  br i1 %.136129, label %bb.ha, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

bb.ha:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_dEEEJSA_dEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit
  %i.bdu = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bdv = load <2 x ptr>, ptr %.134131, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.134131, i8 0, i64 16, i1 false)
  %i.bdw = load ptr, ptr %i.bdu, align 8, !tbaa !24 ; 8 uses
  store <2 x ptr> %i.bdv, ptr %5, align 8, !tbaa !27
  %.not.i.i.i.i113 = icmp eq ptr %i.bdw, null
  br i1 %.not.i.i.i.i113, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.bdw, i64 8 ; 4 uses
  %i.bdy = load atomic i64, ptr %i.bdx acquire, align 8 ; 2 uses
  %i.bdz = icmp eq i64 %i.bdy, 4294967297
  %i.bea = trunc i64 %i.bdy to i32                ; 2 uses
  br i1 %i.bdz, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  store i32 0, ptr %i.bdx, align 8, !tbaa !33
  %i.beb = getelementptr inbounds nuw i8, ptr %i.bdw, i64 12
  store i32 0, ptr %i.beb, align 4, !tbaa !35
  %i.bec = load ptr, ptr %i.bdw, align 8, !tbaa !36
  %i.bed = getelementptr inbounds nuw i8, ptr %i.bec, i64 16
  %i.bee = load ptr, ptr %i.bed, align 8
  call void %i.bee(ptr noundef nonnull align 8 dereferenceable(16) %i.bdw) #33, !inline_history !739
  %i.bef = load ptr, ptr %i.bdw, align 8, !tbaa !36
  %i.beg = getelementptr inbounds nuw i8, ptr %i.bef, i64 24
  %i.beh = load ptr, ptr %i.beg, align 8
  call void %i.beh(ptr noundef nonnull align 8 dereferenceable(16) %i.bdw) #33, !inline_history !739
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

bb.hd:                                            ; preds = %bb.hb
  %i.bei = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i = icmp eq i8 %i.bei, 0
  br i1 %.not.i.i.i.i.i, label %bb.hf, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.bej = add nsw i32 %i.bea, -1
  store i32 %i.bej, ptr %i.bdx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.hf:                                            ; preds = %bb.hd
  %i.bek = atomicrmw volatile add ptr %i.bdx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.hf, %bb.he
  %.0.i.i.i.i.i.i = phi i32 [ %i.bea, %bb.he ], [ %i.bek, %bb.hf ]
  %i.bel = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bel, label %bb.hg, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, !prof !39

bb.hg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bdw) #33
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit: ; preds = %bb.hg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.hc, %bb.ha, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_dEEEJSA_dEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit
  %i.bem = load ptr, ptr %8, align 8, !tbaa !696  ; 3 uses
  %i.ben = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.beo = load ptr, ptr %i.ben, align 8, !tbaa !707 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bem, %i.beo
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bes, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i ], [ %i.bem, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %i.bep = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.beq = load i8, ptr %i.bep, align 8, !tbaa !699, !range !235, !noundef !236
  %i.ber = trunc nuw i8 %i.beq to i1
  store i8 0, ptr %i.bep, align 8, !tbaa !699
  br i1 %i.ber, label %bb.hh, label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

bb.hh:                                            ; preds = %.lr.ph.i.i.i
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %.05.i.i.i) #33
  br label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i: ; preds = %bb.hh, %.lr.ph.i.i.i
  %i.bes = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i114 = icmp eq ptr %i.bes, %i.beo
  br i1 %.not.i.i.i114, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !740

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !696
  br label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit
  %i.bet = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bem, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bet, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit, label %bb.hi

bb.hi:                                            ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i
  %i.beu = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bev = load ptr, ptr %i.beu, align 8, !tbaa !741
  %i.bew = ptrtoint ptr %i.bev to i64
  %i.bex = ptrtoint ptr %i.bet to i64
  %i.bey = sub i64 %i.bew, %i.bex
  call void @_ZdlPvm(ptr noundef nonnull %i.bet, i64 noundef %i.bey) #35
  br label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit

_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, %bb.hi
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  ret void

.body:                                            ; preds = %bb.du, %common.resume.i
  %.pn.pn.pn = phi { ptr, i32 } [ %common.resume.op.i, %common.resume.i ], [ %i.ami, %bb.du ]
  call void @_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_dEEEJSA_dEEEE27supportsFlatNoNullsFastPathEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_dEEEJSA_dEEEE34ensureStringEncodingSetAtAllInputsEv(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_dEEEJSA_dEEEE36propagateStringEncodingFromAllInputsEv(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_dEEEJSA_dEEEE16getCanonicalNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress noreturn uwtable
define internal void @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS0_4exec10VectorExecEEENS0_15IntervalDayTimeENS0_15ConstantCheckerIJdS9_EEEJdS9_EE7getNameB5cxx11Ev(ptr dead_on_unwind noalias nofree readnone sret(%"class.std::__cxx11::basic_string") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.34)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #33
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZSt11make_sharedIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_4exec10VectorExecEEENS1_15IntervalDayTimeENS1_15ConstantCheckerIJdSA_EEEJdSA_EEEJRbRKSt6vectorINS7_17SignatureVariableESaISH_EEEESt10shared_ptrIT_EDpOT0_(i8 %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.facebook::velox::exec::FunctionSignatureBuilder", align 8 ; 16 uses
  %2 = alloca %"class.std::shared_ptr.15", align 16 ; 7 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"struct.facebook::velox::core::TypeAnalysis.1121", align 1 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"struct.facebook::velox::core::TypeAnalysis", align 1 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::vector", align 16     ; 13 uses
  %11 = alloca %"struct.facebook::velox::core::TypeAnalysisResults", align 8 ; 31 uses
  %12 = alloca %"struct.facebook::velox::core::TypeAnalysis.1121", align 1 ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::shared_ptr.18", align 16 ; 7 uses
  %15 = alloca %"class.std::vector.21", align 8   ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"struct.facebook::velox::core::SimpleFunctionMetadata<facebook::velox::functions::(anonymous namespace)::IntervalMultiplyFunction<facebook::velox::exec::VectorExec>, facebook::velox::IntervalDayTime, facebook::velox::ConstantChecker<double, facebook::velox::IntervalDayTime>, double, facebook::velox::IntervalDayTime>::SignatureTypesAnalysisResults", align 16 ; 31 uses
  store ptr null, ptr @_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_10VectorExecEEENS0_15IntervalDayTimeENS0_15ConstantCheckerIJdSA_EEEJdSA_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISL_EEE8instance, align 16, !tbaa !3877
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #34, !noalias !3880 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !35
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_4exec10VectorExecEEENS1_15IntervalDayTimeENS1_15ConstantCheckerIJdSA_EEEJdSA_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS0_4exec10VectorExecEEENS0_15IntervalDayTimeENS0_15ConstantCheckerIJdS9_EEEJdS9_EEE, i64 16), ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %.0.val, ptr %i.e, align 8, !tbaa !3883
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3885)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33, !noalias !3885
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !3885
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33, !noalias !3885
  store i8 0, ptr %11, align 8, !tbaa !150, !noalias !3885
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 1
  store i8 0, ptr %i.i, align 1, !tbaa !152, !noalias !3885
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 2
  store i8 0, ptr %i.j, align 2, !tbaa !153, !noalias !3885
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !154, !noalias !3885
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.l)
          to label %bb.b unwind label %bb.at, !noalias !3885

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 392 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !noalias !3885
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 416 ; 10 uses
  store i32 0, ptr %i.n, align 8, !tbaa !155, !noalias !3885
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 424 ; 5 uses
  store ptr null, ptr %i.o, align 8, !tbaa !160, !noalias !3885
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 432 ; 5 uses
  store ptr %i.n, ptr %i.p, align 8, !tbaa !161, !noalias !3885
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 440 ; 4 uses
  store ptr %i.n, ptr %i.q, align 8, !tbaa !162, !noalias !3885
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 448 ; 6 uses
  store i64 0, ptr %i.r, align 8, !tbaa !163, !noalias !3885
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33, !noalias !3885
  invoke void @_ZN8facebook5velox4core12TypeAnalysisINS0_15IntervalDayTimeEE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %bb.c unwind label %bb.au

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33, !noalias !3885
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33, !noalias !3885
  call void @llvm.experimental.noalias.scope.decl(metadata !3888)
  call void @llvm.experimental.noalias.scope.decl(metadata !3891)
  call void @llvm.experimental.noalias.scope.decl(metadata !3894)
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 12 uses
  store ptr %i.s, ptr %13, align 8, !tbaa !173, !alias.scope !3897, !noalias !3885
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i64 0, ptr %i.t, align 8, !tbaa !16, !alias.scope !3897, !noalias !3885
  store i8 0, ptr %i.s, align 8, !tbaa !28, !alias.scope !3897, !noalias !3885
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !3898 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !noalias !3898 ; 2 uses
  %i.y = icmp ugt ptr %i.v, %i.x
  %.08.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.y, ptr %i.v, ptr %i.x ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !180, !noalias !3898 ; 2 uses
  %i.ab = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef %i.aa, i64 noundef %i.ad)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %13, align 8, !tbaa !7, !alias.scope !3897, !noalias !3885 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.s
  br i1 %i.ah, label %.body.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.i.sink.split

bb.f:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e

_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33, !noalias !3885
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 400 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24, !noalias !3885 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.m, align 8, !tbaa !27, !noalias !3885
  store <2 x ptr> %i.am, ptr %14, align 16, !tbaa !27, !noalias !3885
  %.not.i.i.i25.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i25.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !3885
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
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33, !noalias !3885
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false), !noalias !3885
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33, !noalias !3885
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.as, ptr %7, align 8, !tbaa !173, !noalias !3885
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !16, !noalias !3885
  store i8 0, ptr %i.as, align 8, !tbaa !28, !noalias !3885
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i unwind label %bb.j

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.av = load ptr, ptr %7, align 8, !tbaa !7, !noalias !3885 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.as
  br i1 %i.aw, label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i
  %i.ax = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !3885
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #35
  br label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %7, align 8, !tbaa !7, !noalias !3885 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.as
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !3885
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !3885
  br label %.body29.i.i.i.i.i.i.i

_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !3885
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33, !noalias !3885
  invoke void @_ZN8facebook5velox4core12TypeAnalysisIdE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.av

.noexc.i.i.i.i.i.i.i:                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33, !noalias !3885
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33, !noalias !3885
  call void @llvm.experimental.noalias.scope.decl(metadata !3899)
  call void @llvm.experimental.noalias.scope.decl(metadata !3902)
  call void @llvm.experimental.noalias.scope.decl(metadata !3905)
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  store ptr %i.be, ptr %9, align 8, !tbaa !173, !alias.scope !3908, !noalias !3885
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 0, ptr %i.bf, align 8, !tbaa !16, !alias.scope !3908, !noalias !3885
  store i8 0, ptr %i.be, align 8, !tbaa !28, !alias.scope !3908, !noalias !3885
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !3909 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  %i.bh = load ptr, ptr %i.w, align 8, !noalias !3909 ; 2 uses
  %i.bi = icmp ugt ptr %i.bg, %i.bh
  %.08.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bi, ptr %i.bg, ptr %i.bh ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i26.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i26.i.i.i.i.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !180, !noalias !3909 ; 2 uses
  %i.bl = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.bk, i64 noundef %i.bn)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %9, align 8, !tbaa !7, !alias.scope !3908, !noalias !3885 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.be
  br i1 %i.br, label %.body29.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.bs = load i64, ptr %i.be, align 8, !tbaa !28, !alias.scope !3908, !noalias !3885
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #35
  br label %.body29.i.i.i.i.i.i.i

bb.m:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.bu)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l
end_hunk_13
begin_hunk_14_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJdSA_EEEJdSA_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EERKSJ_IKNS0_4TypeEERNS1_7EvalCtxERSL_:bb.a
  %i.bdz = and i1 %i.bdy, %or.cond.i.i.not.i89.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.bdz, label %bb.gy, label %bb.gz, !prof !285

bb.gy:                                            ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i85.i.i.i.i.i.i.i.i.i.i.i
  %i.bea = fptosi double %i.bdu to i64
  br label %_ZN8facebook5velox6StatusD2Ev.exit25.i90.i.i.i.i.i.i.i.i.i.i.i

bb.gz:                                            ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_15IntervalDayTimeEEixEm.exit.i85.i.i.i.i.i.i.i.i.i.i.i
  %i.beb = fcmp ogt double %i.bdu, 0.000000e+00
  %i.bec = select i1 %i.beb, i64 9223372036854775807, i64 -9223372036854775808
  br label %_ZN8facebook5velox6StatusD2Ev.exit25.i90.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit25.i90.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.gz, %bb.gy
  %storemerge.i.i.i91.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bec, %bb.gz ], [ %i.bea, %bb.gy ]
  %i.bed = getelementptr inbounds [8 x i8], ptr %.sink.i.i, i64 %i.bcy
  store i64 %storemerge.i.i.i91.i.i.i.i.i.i.i.i.i.i.i, ptr %i.bed, align 8, !tbaa !209
  %i.bee = add nsw i64 %.037.i82.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.bef = and i64 %i.bee, %.037.i82.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i92.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bef, 0
  br i1 %.not10.i92.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJdSA_EEEJdSA_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit, label %bb.gr, !llvm.loop !4074

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJdSA_EEEJdSA_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit25.i90.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit25.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit19.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i74.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit21.i72.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit21.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit15.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit22.i74.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit22.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit16.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit26.i77.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit26.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i.i.i.i.i.i.us.i.i, %middle.block392, %middle.block423, %middle.block463, %middle.block533, %vec.epilog.middle.block549, %middle.block564, %vec.epilog.middle.block580, %bb.v, %bb.w, %bb.y, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, %bb.ac, %bb.ak, %bb.an, %bb.ap, %._crit_edge.i.i.i.i.i.i.i.i.i27.i.i, %bb.be, %bb.br, %bb.bu, %bb.bw, %._crit_edge.i.i.i.i.i.i.i.i.i.i49.i, %bb.cl, %bb.cw, %bb.cz, %bb.db, %._crit_edge.i.i.i.i.i.i.i.i.i27.i24.i, %bb.dq, %bb.eq, %bb.fa, %bb.fc, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i65, %bb.gq
  br i1 %.136131, label %bb.ha, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

bb.ha:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJdSA_EEEJdSA_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit
  %i.beg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.beh = load <2 x ptr>, ptr %.134133, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.134133, i8 0, i64 16, i1 false)
  %i.bei = load ptr, ptr %i.beg, align 8, !tbaa !24 ; 8 uses
  store <2 x ptr> %i.beh, ptr %5, align 8, !tbaa !27
  %.not.i.i.i.i115 = icmp eq ptr %i.bei, null
  br i1 %.not.i.i.i.i115, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.bej = getelementptr inbounds nuw i8, ptr %i.bei, i64 8 ; 4 uses
  %i.bek = load atomic i64, ptr %i.bej acquire, align 8 ; 2 uses
  %i.bel = icmp eq i64 %i.bek, 4294967297
  %i.bem = trunc i64 %i.bek to i32                ; 2 uses
  br i1 %i.bel, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  store i32 0, ptr %i.bej, align 8, !tbaa !33
  %i.ben = getelementptr inbounds nuw i8, ptr %i.bei, i64 12
  store i32 0, ptr %i.ben, align 4, !tbaa !35
  %i.beo = load ptr, ptr %i.bei, align 8, !tbaa !36
  %i.bep = getelementptr inbounds nuw i8, ptr %i.beo, i64 16
  %i.beq = load ptr, ptr %i.bep, align 8
  call void %i.beq(ptr noundef nonnull align 8 dereferenceable(16) %i.bei) #33, !inline_history !739
  %i.ber = load ptr, ptr %i.bei, align 8, !tbaa !36
  %i.bes = getelementptr inbounds nuw i8, ptr %i.ber, i64 24
  %i.bet = load ptr, ptr %i.bes, align 8
  call void %i.bet(ptr noundef nonnull align 8 dereferenceable(16) %i.bei) #33, !inline_history !739
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

bb.hd:                                            ; preds = %bb.hb
  %i.beu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i116 = icmp eq i8 %i.beu, 0
  br i1 %.not.i.i.i.i.i116, label %bb.hf, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.bev = add nsw i32 %i.bem, -1
  store i32 %i.bev, ptr %i.bej, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.hf:                                            ; preds = %bb.hd
  %i.bew = atomicrmw volatile add ptr %i.bej, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.hf, %bb.he
  %.0.i.i.i.i.i.i = phi i32 [ %i.bem, %bb.he ], [ %i.bew, %bb.hf ]
  %i.bex = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bex, label %bb.hg, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, !prof !39

bb.hg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bei) #33
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit: ; preds = %bb.hg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.hc, %bb.ha, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJdSA_EEEJdSA_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit
  %i.bey = load ptr, ptr %8, align 8, !tbaa !696  ; 3 uses
  %i.bez = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bfa = load ptr, ptr %i.bez, align 8, !tbaa !707 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bey, %i.bfa
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bfe, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i ], [ %i.bey, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %i.bfb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.bfc = load i8, ptr %i.bfb, align 8, !tbaa !699, !range !235, !noundef !236
  %i.bfd = trunc nuw i8 %i.bfc to i1
  store i8 0, ptr %i.bfb, align 8, !tbaa !699
  br i1 %i.bfd, label %bb.hh, label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

bb.hh:                                            ; preds = %.lr.ph.i.i.i
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %.05.i.i.i) #33
  br label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i: ; preds = %bb.hh, %.lr.ph.i.i.i
  %i.bfe = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bfe, %i.bfa
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !740

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !696
  br label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit
  %i.bff = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bey, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bff, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit, label %bb.hi

bb.hi:                                            ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bfg = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bfh = load ptr, ptr %i.bfg, align 8, !tbaa !741
  %i.bfi = ptrtoint ptr %i.bfh to i64
  %i.bfj = ptrtoint ptr %i.bff to i64
  %i.bfk = sub i64 %i.bfi, %i.bfj
  call void @_ZdlPvm(ptr noundef nonnull %i.bff, i64 noundef %i.bfk) #35
  br label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit

_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, %bb.hi
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  ret void

.body:                                            ; preds = %bb.du, %common.resume.i
  %.pn.pn.pn = phi { ptr, i32 } [ %common.resume.op.i, %common.resume.i ], [ %i.amu, %bb.du ]
  call void @_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJdSA_EEEJdSA_EEEE27supportsFlatNoNullsFastPathEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJdSA_EEEJdSA_EEEE34ensureStringEncodingSetAtAllInputsEv(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJdSA_EEEJdSA_EEEE36propagateStringEncodingFromAllInputsEv(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJdSA_EEEJdSA_EEEE16getCanonicalNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress noreturn uwtable
define internal void @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS0_4exec10VectorExecEEENS0_17IntervalYearMonthENS0_15ConstantCheckerIJS9_iEEEJS9_iEE7getNameB5cxx11Ev(ptr dead_on_unwind noalias nofree readnone sret(%"class.std::__cxx11::basic_string") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.34)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #33
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZSt11make_sharedIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_116MultiplyFunctionINS1_4exec10VectorExecEEENS1_17IntervalYearMonthENS1_15ConstantCheckerIJSA_iEEEJSA_iEEEJRbRKSt6vectorINS7_17SignatureVariableESaISH_EEEESt10shared_ptrIT_EDpOT0_(i8 %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.facebook::velox::exec::FunctionSignatureBuilder", align 8 ; 16 uses
  %2 = alloca %"class.std::shared_ptr.15", align 16 ; 7 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"struct.facebook::velox::core::TypeAnalysis.3307", align 1 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"struct.facebook::velox::core::TypeAnalysis.1317", align 1 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::vector", align 16     ; 13 uses
  %11 = alloca %"struct.facebook::velox::core::TypeAnalysisResults", align 8 ; 31 uses
  %12 = alloca %"struct.facebook::velox::core::TypeAnalysis.1317", align 1 ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::shared_ptr.18", align 16 ; 7 uses
  %15 = alloca %"class.std::vector.21", align 8   ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"struct.facebook::velox::core::SimpleFunctionMetadata<facebook::velox::functions::(anonymous namespace)::MultiplyFunction<facebook::velox::exec::VectorExec>, facebook::velox::IntervalYearMonth, facebook::velox::ConstantChecker<facebook::velox::IntervalYearMonth, int>, facebook::velox::IntervalYearMonth, int>::SignatureTypesAnalysisResults", align 16 ; 31 uses
  store ptr null, ptr @_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEENS0_17IntervalYearMonthENS0_15ConstantCheckerIJSA_iEEEJSA_iEEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISL_EEE8instance, align 16, !tbaa !4090
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #34, !noalias !4093 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !35
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_116MultiplyFunctionINS1_4exec10VectorExecEEENS1_17IntervalYearMonthENS1_15ConstantCheckerIJSA_iEEEJSA_iEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS0_4exec10VectorExecEEENS0_17IntervalYearMonthENS0_15ConstantCheckerIJS9_iEEEJS9_iEEE, i64 16), ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %.0.val, ptr %i.e, align 8, !tbaa !4096
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4098)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33, !noalias !4098
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !4098
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33, !noalias !4098
  store i8 0, ptr %11, align 8, !tbaa !150, !noalias !4098
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 1
  store i8 0, ptr %i.i, align 1, !tbaa !152, !noalias !4098
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 2
  store i8 0, ptr %i.j, align 2, !tbaa !153, !noalias !4098
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !154, !noalias !4098
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.l)
          to label %bb.b unwind label %bb.at, !noalias !4098

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 392 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !noalias !4098
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 416 ; 10 uses
  store i32 0, ptr %i.n, align 8, !tbaa !155, !noalias !4098
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 424 ; 5 uses
  store ptr null, ptr %i.o, align 8, !tbaa !160, !noalias !4098
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 432 ; 5 uses
  store ptr %i.n, ptr %i.p, align 8, !tbaa !161, !noalias !4098
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 440 ; 4 uses
  store ptr %i.n, ptr %i.q, align 8, !tbaa !162, !noalias !4098
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 448 ; 6 uses
  store i64 0, ptr %i.r, align 8, !tbaa !163, !noalias !4098
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33, !noalias !4098
  invoke void @_ZN8facebook5velox4core12TypeAnalysisINS0_17IntervalYearMonthEE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %bb.c unwind label %bb.au

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33, !noalias !4098
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33, !noalias !4098
  call void @llvm.experimental.noalias.scope.decl(metadata !4101)
  call void @llvm.experimental.noalias.scope.decl(metadata !4104)
  call void @llvm.experimental.noalias.scope.decl(metadata !4107)
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 12 uses
  store ptr %i.s, ptr %13, align 8, !tbaa !173, !alias.scope !4110, !noalias !4098
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i64 0, ptr %i.t, align 8, !tbaa !16, !alias.scope !4110, !noalias !4098
  store i8 0, ptr %i.s, align 8, !tbaa !28, !alias.scope !4110, !noalias !4098
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !4111 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !noalias !4111 ; 2 uses
  %i.y = icmp ugt ptr %i.v, %i.x
  %.08.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.y, ptr %i.v, ptr %i.x ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !180, !noalias !4111 ; 2 uses
  %i.ab = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef %i.aa, i64 noundef %i.ad)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %13, align 8, !tbaa !7, !alias.scope !4110, !noalias !4098 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.s
  br i1 %i.ah, label %.body.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.i.sink.split

bb.f:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e

_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33, !noalias !4098
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 400 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24, !noalias !4098 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.m, align 8, !tbaa !27, !noalias !4098
  store <2 x ptr> %i.am, ptr %14, align 16, !tbaa !27, !noalias !4098
  %.not.i.i.i25.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i25.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !4098
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
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33, !noalias !4098
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false), !noalias !4098
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33, !noalias !4098
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.as, ptr %7, align 8, !tbaa !173, !noalias !4098
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !16, !noalias !4098
  store i8 0, ptr %i.as, align 8, !tbaa !28, !noalias !4098
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i unwind label %bb.j

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.av = load ptr, ptr %7, align 8, !tbaa !7, !noalias !4098 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.as
  br i1 %i.aw, label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i
  %i.ax = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !4098
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #35
  br label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %7, align 8, !tbaa !7, !noalias !4098 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.as
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !4098
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !4098
  br label %.body29.i.i.i.i.i.i.i

_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !4098
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33, !noalias !4098
  invoke void @_ZN8facebook5velox4core12TypeAnalysisINS0_17IntervalYearMonthEE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.av

.noexc.i.i.i.i.i.i.i:                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33, !noalias !4098
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33, !noalias !4098
  call void @llvm.experimental.noalias.scope.decl(metadata !4112)
  call void @llvm.experimental.noalias.scope.decl(metadata !4115)
  call void @llvm.experimental.noalias.scope.decl(metadata !4118)
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  store ptr %i.be, ptr %9, align 8, !tbaa !173, !alias.scope !4121, !noalias !4098
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 0, ptr %i.bf, align 8, !tbaa !16, !alias.scope !4121, !noalias !4098
  store i8 0, ptr %i.be, align 8, !tbaa !28, !alias.scope !4121, !noalias !4098
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !4122 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  %i.bh = load ptr, ptr %i.w, align 8, !noalias !4122 ; 2 uses
  %i.bi = icmp ugt ptr %i.bg, %i.bh
  %.08.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bi, ptr %i.bg, ptr %i.bh ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i26.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i26.i.i.i.i.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !180, !noalias !4122 ; 2 uses
  %i.bl = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.bk, i64 noundef %i.bn)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %9, align 8, !tbaa !7, !alias.scope !4121, !noalias !4098 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.be
  br i1 %i.br, label %.body29.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.bs = load i64, ptr %i.be, align 8, !tbaa !28, !alias.scope !4121, !noalias !4098
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #35
  br label %.body29.i.i.i.i.i.i.i

bb.m:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.bu)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l
end_hunk_14
begin_hunk_15_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJSA_iEEEJSA_iEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EERKSJ_IKNS0_4TypeEERNS1_7EvalCtxERSL_:bb.a

bb.et:                                            ; preds = %bb.er
  %i.bbk = load ptr, ptr %i.bar, align 8, !tbaa !720, !noalias !4324
  %i.bbl = shl nsw i64 %i.baw, 2
  %i.bbm = getelementptr inbounds i8, ptr %i.bbk, i64 %i.bbl
  %i.bbn = load i32, ptr %i.bbm, align 4, !tbaa !3, !noalias !4324
  br label %_ZN8facebook5velox6StatusD2Ev.exit23.i76.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit23.i76.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.et, %bb.es, %_ZNK8facebook5velox4exec12VectorReaderINS0_17IntervalYearMonthEEixEm.exit.i74.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i15.i77.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bbn, %bb.et ], [ %i.bbj, %bb.es ], [ %i.bav, %_ZNK8facebook5velox4exec12VectorReaderINS0_17IntervalYearMonthEEixEm.exit.i74.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bbo = sext i32 %.0.i.i.i15.i77.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bbp = getelementptr inbounds [4 x i8], ptr %i.bam, i64 %i.bbo
  %i.bbq = load i32, ptr %i.bbp, align 4, !tbaa !3, !noalias !4324
  %i.bbr = mul nsw i32 %i.bbq, %i.bbg
  %i.bbs = getelementptr inbounds [4 x i8], ptr %.sink.i.i, i64 %i.baw
  store i32 %i.bbr, ptr %i.bbs, align 4, !tbaa !3
  %i.bbt = add nsw i64 %.034.i73.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.bbu = and i64 %i.bbt, %.034.i73.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i78.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bbu, 0
  br i1 %.not10.i78.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJSA_iEEEJSA_iEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit, label %bb.en, !llvm.loop !4296

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJSA_iEEEJSA_iEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit23.i76.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit23.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit17.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i72.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i.i.i.i.i.i.i.i.i.i43.i.i, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i47.i.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i47.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i70.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit21.i70.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit21.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit15.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit15.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit25.i73.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit25.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit19.i.i.i.i.i.i.i.i, %middle.block407, %vec.epilog.middle.block422, %middle.block482, %vec.epilog.middle.block498, %middle.block560, %vec.epilog.middle.block576, %middle.block620, %vec.epilog.middle.block635, %bb.z, %bb.aa, %bb.ac, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, %bb.ag, %bb.ao, %bb.ap, %bb.ar, %._crit_edge.i.i.i.i.i.i.i.i.i26.i.i, %bb.av, %bb.bf, %bb.bg, %bb.bi, %._crit_edge.i.i.i.i.i.i.i.i.i.i43.i, %bb.bm, %bb.bu, %bb.bv, %bb.bx, %._crit_edge.i.i.i.i.i.i.i.i.i29.i.i, %bb.cb, %bb.cy, %bb.dg, %bb.di, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i63, %bb.em
  br i1 %.136121, label %bb.eu, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

bb.eu:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJSA_iEEEJSA_iEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit
  %i.bbv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bbw = load <2 x ptr>, ptr %.134123, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.134123, i8 0, i64 16, i1 false)
  %i.bbx = load ptr, ptr %i.bbv, align 8, !tbaa !24 ; 8 uses
  store <2 x ptr> %i.bbw, ptr %5, align 8, !tbaa !27
  %.not.i.i.i.i100 = icmp eq ptr %i.bbx, null
  br i1 %.not.i.i.i.i100, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.bby = getelementptr inbounds nuw i8, ptr %i.bbx, i64 8 ; 4 uses
  %i.bbz = load atomic i64, ptr %i.bby acquire, align 8 ; 2 uses
  %i.bca = icmp eq i64 %i.bbz, 4294967297
  %i.bcb = trunc i64 %i.bbz to i32                ; 2 uses
  br i1 %i.bca, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  store i32 0, ptr %i.bby, align 8, !tbaa !33
  %i.bcc = getelementptr inbounds nuw i8, ptr %i.bbx, i64 12
  store i32 0, ptr %i.bcc, align 4, !tbaa !35
  %i.bcd = load ptr, ptr %i.bbx, align 8, !tbaa !36
  %i.bce = getelementptr inbounds nuw i8, ptr %i.bcd, i64 16
  %i.bcf = load ptr, ptr %i.bce, align 8
  call void %i.bcf(ptr noundef nonnull align 8 dereferenceable(16) %i.bbx) #33, !inline_history !739
  %i.bcg = load ptr, ptr %i.bbx, align 8, !tbaa !36
  %i.bch = getelementptr inbounds nuw i8, ptr %i.bcg, i64 24
  %i.bci = load ptr, ptr %i.bch, align 8
  call void %i.bci(ptr noundef nonnull align 8 dereferenceable(16) %i.bbx) #33, !inline_history !739
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

bb.ex:                                            ; preds = %bb.ev
  %i.bcj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i101 = icmp eq i8 %i.bcj, 0
  br i1 %.not.i.i.i.i.i101, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.bck = add nsw i32 %i.bcb, -1
  store i32 %i.bck, ptr %i.bby, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ez:                                            ; preds = %bb.ex
  %i.bcl = atomicrmw volatile add ptr %i.bby, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ez, %bb.ey
  %.0.i.i.i.i.i.i = phi i32 [ %i.bcb, %bb.ey ], [ %i.bcl, %bb.ez ]
  %i.bcm = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bcm, label %bb.fa, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, !prof !39

bb.fa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bbx) #33
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit: ; preds = %bb.fa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ew, %bb.eu, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJSA_iEEEJSA_iEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit
  %i.bcn = load ptr, ptr %8, align 8, !tbaa !696  ; 3 uses
  %i.bco = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bcp = load ptr, ptr %i.bco, align 8, !tbaa !707 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bcn, %i.bcp
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bct, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i ], [ %i.bcn, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %i.bcq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.bcr = load i8, ptr %i.bcq, align 8, !tbaa !699, !range !235, !noundef !236
  %i.bcs = trunc nuw i8 %i.bcr to i1
  store i8 0, ptr %i.bcq, align 8, !tbaa !699
  br i1 %i.bcs, label %bb.fb, label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

bb.fb:                                            ; preds = %.lr.ph.i.i.i
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %.05.i.i.i) #33
  br label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i: ; preds = %bb.fb, %.lr.ph.i.i.i
  %i.bct = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i102 = icmp eq ptr %i.bct, %i.bcp
  br i1 %.not.i.i.i102, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !740

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !696
  br label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit
  %i.bcu = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bcn, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bcu, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit, label %bb.fc

bb.fc:                                            ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bcv = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bcw = load ptr, ptr %i.bcv, align 8, !tbaa !741
  %i.bcx = ptrtoint ptr %i.bcw to i64
  %i.bcy = ptrtoint ptr %i.bcu to i64
  %i.bcz = sub i64 %i.bcx, %i.bcy
  call void @_ZdlPvm(ptr noundef nonnull %i.bcu, i64 noundef %i.bcz) #35
  br label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit

_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  ret void

.body:                                            ; preds = %bb.cc, %common.resume.i
  %.pn.pn.pn = phi { ptr, i32 } [ %common.resume.op.i, %common.resume.i ], [ %i.ajl, %bb.cc ]
  call void @_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJSA_iEEEJSA_iEEEE27supportsFlatNoNullsFastPathEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJSA_iEEEJSA_iEEEE34ensureStringEncodingSetAtAllInputsEv(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJSA_iEEEJSA_iEEEE36propagateStringEncodingFromAllInputsEv(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJSA_iEEEJSA_iEEEE16getCanonicalNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress noreturn uwtable
define internal void @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS0_4exec10VectorExecEEENS0_17IntervalYearMonthENS0_15ConstantCheckerIJiS9_EEEJiS9_EE7getNameB5cxx11Ev(ptr dead_on_unwind noalias nofree readnone sret(%"class.std::__cxx11::basic_string") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.34)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #33
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZSt11make_sharedIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_116MultiplyFunctionINS1_4exec10VectorExecEEENS1_17IntervalYearMonthENS1_15ConstantCheckerIJiSA_EEEJiSA_EEEJRbRKSt6vectorINS7_17SignatureVariableESaISH_EEEESt10shared_ptrIT_EDpOT0_(i8 %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.facebook::velox::exec::FunctionSignatureBuilder", align 8 ; 16 uses
  %2 = alloca %"class.std::shared_ptr.15", align 16 ; 7 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"struct.facebook::velox::core::TypeAnalysis.1317", align 1 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"struct.facebook::velox::core::TypeAnalysis.3307", align 1 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::vector", align 16     ; 13 uses
  %11 = alloca %"struct.facebook::velox::core::TypeAnalysisResults", align 8 ; 31 uses
  %12 = alloca %"struct.facebook::velox::core::TypeAnalysis.1317", align 1 ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::shared_ptr.18", align 16 ; 7 uses
  %15 = alloca %"class.std::vector.21", align 8   ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"struct.facebook::velox::core::SimpleFunctionMetadata<facebook::velox::functions::(anonymous namespace)::MultiplyFunction<facebook::velox::exec::VectorExec>, facebook::velox::IntervalYearMonth, facebook::velox::ConstantChecker<int, facebook::velox::IntervalYearMonth>, int, facebook::velox::IntervalYearMonth>::SignatureTypesAnalysisResults", align 16 ; 31 uses
  store ptr null, ptr @_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEENS0_17IntervalYearMonthENS0_15ConstantCheckerIJiSA_EEEJiSA_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISL_EEE8instance, align 16, !tbaa !4327
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #34, !noalias !4330 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !35
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_116MultiplyFunctionINS1_4exec10VectorExecEEENS1_17IntervalYearMonthENS1_15ConstantCheckerIJiSA_EEEJiSA_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS0_4exec10VectorExecEEENS0_17IntervalYearMonthENS0_15ConstantCheckerIJiS9_EEEJiS9_EEE, i64 16), ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %.0.val, ptr %i.e, align 8, !tbaa !4333
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4335)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33, !noalias !4335
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !4335
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33, !noalias !4335
  store i8 0, ptr %11, align 8, !tbaa !150, !noalias !4335
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 1
  store i8 0, ptr %i.i, align 1, !tbaa !152, !noalias !4335
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 2
  store i8 0, ptr %i.j, align 2, !tbaa !153, !noalias !4335
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !154, !noalias !4335
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.l)
          to label %bb.b unwind label %bb.at, !noalias !4335

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 392 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !noalias !4335
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 416 ; 10 uses
  store i32 0, ptr %i.n, align 8, !tbaa !155, !noalias !4335
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 424 ; 5 uses
  store ptr null, ptr %i.o, align 8, !tbaa !160, !noalias !4335
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 432 ; 5 uses
  store ptr %i.n, ptr %i.p, align 8, !tbaa !161, !noalias !4335
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 440 ; 4 uses
  store ptr %i.n, ptr %i.q, align 8, !tbaa !162, !noalias !4335
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 448 ; 6 uses
  store i64 0, ptr %i.r, align 8, !tbaa !163, !noalias !4335
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33, !noalias !4335
  invoke void @_ZN8facebook5velox4core12TypeAnalysisINS0_17IntervalYearMonthEE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %bb.c unwind label %bb.au

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33, !noalias !4335
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33, !noalias !4335
  call void @llvm.experimental.noalias.scope.decl(metadata !4338)
  call void @llvm.experimental.noalias.scope.decl(metadata !4341)
  call void @llvm.experimental.noalias.scope.decl(metadata !4344)
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 12 uses
  store ptr %i.s, ptr %13, align 8, !tbaa !173, !alias.scope !4347, !noalias !4335
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i64 0, ptr %i.t, align 8, !tbaa !16, !alias.scope !4347, !noalias !4335
  store i8 0, ptr %i.s, align 8, !tbaa !28, !alias.scope !4347, !noalias !4335
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !4348 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !noalias !4348 ; 2 uses
  %i.y = icmp ugt ptr %i.v, %i.x
  %.08.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.y, ptr %i.v, ptr %i.x ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !180, !noalias !4348 ; 2 uses
  %i.ab = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef %i.aa, i64 noundef %i.ad)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %13, align 8, !tbaa !7, !alias.scope !4347, !noalias !4335 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.s
  br i1 %i.ah, label %.body.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.i.sink.split

bb.f:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e

_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33, !noalias !4335
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 400 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24, !noalias !4335 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.m, align 8, !tbaa !27, !noalias !4335
  store <2 x ptr> %i.am, ptr %14, align 16, !tbaa !27, !noalias !4335
  %.not.i.i.i25.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i25.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !4335
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
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33, !noalias !4335
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false), !noalias !4335
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33, !noalias !4335
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.as, ptr %7, align 8, !tbaa !173, !noalias !4335
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !16, !noalias !4335
  store i8 0, ptr %i.as, align 8, !tbaa !28, !noalias !4335
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i unwind label %bb.j

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.av = load ptr, ptr %7, align 8, !tbaa !7, !noalias !4335 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.as
  br i1 %i.aw, label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i
  %i.ax = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !4335
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #35
  br label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %7, align 8, !tbaa !7, !noalias !4335 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.as
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !4335
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !4335
  br label %.body29.i.i.i.i.i.i.i

_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !4335
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33, !noalias !4335
  invoke void @_ZN8facebook5velox4core12TypeAnalysisIiE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.av

.noexc.i.i.i.i.i.i.i:                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33, !noalias !4335
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33, !noalias !4335
  call void @llvm.experimental.noalias.scope.decl(metadata !4349)
  call void @llvm.experimental.noalias.scope.decl(metadata !4352)
  call void @llvm.experimental.noalias.scope.decl(metadata !4355)
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  store ptr %i.be, ptr %9, align 8, !tbaa !173, !alias.scope !4358, !noalias !4335
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 0, ptr %i.bf, align 8, !tbaa !16, !alias.scope !4358, !noalias !4335
  store i8 0, ptr %i.be, align 8, !tbaa !28, !alias.scope !4358, !noalias !4335
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !4359 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  %i.bh = load ptr, ptr %i.w, align 8, !noalias !4359 ; 2 uses
  %i.bi = icmp ugt ptr %i.bg, %i.bh
  %.08.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bi, ptr %i.bg, ptr %i.bh ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i26.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i26.i.i.i.i.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !180, !noalias !4359 ; 2 uses
  %i.bl = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.bk, i64 noundef %i.bn)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %9, align 8, !tbaa !7, !alias.scope !4358, !noalias !4335 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.be
  br i1 %i.br, label %.body29.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.bs = load i64, ptr %i.be, align 8, !tbaa !28, !alias.scope !4358, !noalias !4335
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #35
  br label %.body29.i.i.i.i.i.i.i

bb.m:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.bu)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l
end_hunk_15
begin_hunk_16_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJiSA_EEEJiSA_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EERKSJ_IKNS0_4TypeEERNS1_7EvalCtxERSL_:bb.a

bb.et:                                            ; preds = %bb.er
  %i.bbk = load ptr, ptr %i.bar, align 8, !tbaa !720, !noalias !4561
  %i.bbl = shl nsw i64 %i.baw, 2
  %i.bbm = getelementptr inbounds i8, ptr %i.bbk, i64 %i.bbl
  %i.bbn = load i32, ptr %i.bbm, align 4, !tbaa !3, !noalias !4561
  br label %_ZN8facebook5velox6StatusD2Ev.exit23.i76.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit23.i76.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.et, %bb.es, %_ZNK8facebook5velox4exec12VectorReaderIiEixEm.exit.i74.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i15.i77.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bbn, %bb.et ], [ %i.bbj, %bb.es ], [ %i.bav, %_ZNK8facebook5velox4exec12VectorReaderIiEixEm.exit.i74.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bbo = sext i32 %.0.i.i.i15.i77.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bbp = getelementptr inbounds [4 x i8], ptr %i.bam, i64 %i.bbo
  %i.bbq = load i32, ptr %i.bbp, align 4, !tbaa !3, !noalias !4561
  %i.bbr = mul nsw i32 %i.bbq, %i.bbg
  %i.bbs = getelementptr inbounds [4 x i8], ptr %.sink.i.i, i64 %i.baw
  store i32 %i.bbr, ptr %i.bbs, align 4, !tbaa !3
  %i.bbt = add nsw i64 %.034.i73.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.bbu = and i64 %i.bbt, %.034.i73.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i78.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bbu, 0
  br i1 %.not10.i78.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJiSA_EEEJiSA_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit, label %bb.en, !llvm.loop !4533

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJiSA_EEEJiSA_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit23.i76.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit23.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit17.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i72.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i.i.i.i.i.i.i.i.i.i43.i.i, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i47.i.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i47.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i70.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit21.i70.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit21.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit15.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit15.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit24.i73.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit18.i.i.i.i.i.i.i.i, %middle.block407, %vec.epilog.middle.block422, %middle.block482, %vec.epilog.middle.block498, %middle.block560, %vec.epilog.middle.block576, %middle.block620, %vec.epilog.middle.block635, %bb.z, %bb.aa, %bb.ac, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, %bb.ag, %bb.ao, %bb.ap, %bb.ar, %._crit_edge.i.i.i.i.i.i.i.i.i26.i.i, %bb.av, %bb.bf, %bb.bg, %bb.bi, %._crit_edge.i.i.i.i.i.i.i.i.i.i43.i, %bb.bm, %bb.bu, %bb.bv, %bb.bx, %._crit_edge.i.i.i.i.i.i.i.i.i29.i.i, %bb.cb, %bb.cy, %bb.dg, %bb.di, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i63, %bb.em
  br i1 %.136121, label %bb.eu, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

bb.eu:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJiSA_EEEJiSA_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit
  %i.bbv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bbw = load <2 x ptr>, ptr %.134123, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.134123, i8 0, i64 16, i1 false)
  %i.bbx = load ptr, ptr %i.bbv, align 8, !tbaa !24 ; 8 uses
  store <2 x ptr> %i.bbw, ptr %5, align 8, !tbaa !27
  %.not.i.i.i.i100 = icmp eq ptr %i.bbx, null
  br i1 %.not.i.i.i.i100, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.bby = getelementptr inbounds nuw i8, ptr %i.bbx, i64 8 ; 4 uses
  %i.bbz = load atomic i64, ptr %i.bby acquire, align 8 ; 2 uses
  %i.bca = icmp eq i64 %i.bbz, 4294967297
  %i.bcb = trunc i64 %i.bbz to i32                ; 2 uses
  br i1 %i.bca, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  store i32 0, ptr %i.bby, align 8, !tbaa !33
  %i.bcc = getelementptr inbounds nuw i8, ptr %i.bbx, i64 12
  store i32 0, ptr %i.bcc, align 4, !tbaa !35
  %i.bcd = load ptr, ptr %i.bbx, align 8, !tbaa !36
  %i.bce = getelementptr inbounds nuw i8, ptr %i.bcd, i64 16
  %i.bcf = load ptr, ptr %i.bce, align 8
  call void %i.bcf(ptr noundef nonnull align 8 dereferenceable(16) %i.bbx) #33, !inline_history !739
  %i.bcg = load ptr, ptr %i.bbx, align 8, !tbaa !36
  %i.bch = getelementptr inbounds nuw i8, ptr %i.bcg, i64 24
  %i.bci = load ptr, ptr %i.bch, align 8
  call void %i.bci(ptr noundef nonnull align 8 dereferenceable(16) %i.bbx) #33, !inline_history !739
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

bb.ex:                                            ; preds = %bb.ev
  %i.bcj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i101 = icmp eq i8 %i.bcj, 0
  br i1 %.not.i.i.i.i.i101, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.bck = add nsw i32 %i.bcb, -1
  store i32 %i.bck, ptr %i.bby, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ez:                                            ; preds = %bb.ex
  %i.bcl = atomicrmw volatile add ptr %i.bby, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ez, %bb.ey
  %.0.i.i.i.i.i.i = phi i32 [ %i.bcb, %bb.ey ], [ %i.bcl, %bb.ez ]
  %i.bcm = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bcm, label %bb.fa, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, !prof !39

bb.fa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bbx) #33
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit: ; preds = %bb.fa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ew, %bb.eu, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJiSA_EEEJiSA_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit
  %i.bcn = load ptr, ptr %8, align 8, !tbaa !696  ; 3 uses
  %i.bco = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bcp = load ptr, ptr %i.bco, align 8, !tbaa !707 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bcn, %i.bcp
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bct, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i ], [ %i.bcn, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %i.bcq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.bcr = load i8, ptr %i.bcq, align 8, !tbaa !699, !range !235, !noundef !236
  %i.bcs = trunc nuw i8 %i.bcr to i1
  store i8 0, ptr %i.bcq, align 8, !tbaa !699
  br i1 %i.bcs, label %bb.fb, label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

bb.fb:                                            ; preds = %.lr.ph.i.i.i
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %.05.i.i.i) #33
  br label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i: ; preds = %bb.fb, %.lr.ph.i.i.i
  %i.bct = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i102 = icmp eq ptr %i.bct, %i.bcp
  br i1 %.not.i.i.i102, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !740

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !696
  br label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit
  %i.bcu = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bcn, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bcu, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit, label %bb.fc

bb.fc:                                            ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bcv = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bcw = load ptr, ptr %i.bcv, align 8, !tbaa !741
  %i.bcx = ptrtoint ptr %i.bcw to i64
  %i.bcy = ptrtoint ptr %i.bcu to i64
  %i.bcz = sub i64 %i.bcx, %i.bcy
  call void @_ZdlPvm(ptr noundef nonnull %i.bcu, i64 noundef %i.bcz) #35
  br label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit

_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  ret void

.body:                                            ; preds = %bb.cc, %common.resume.i
  %.pn.pn.pn = phi { ptr, i32 } [ %common.resume.op.i, %common.resume.i ], [ %i.ajl, %bb.cc ]
  call void @_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJiSA_EEEJiSA_EEEE27supportsFlatNoNullsFastPathEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJiSA_EEEJiSA_EEEE34ensureStringEncodingSetAtAllInputsEv(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJiSA_EEEJiSA_EEEE36propagateStringEncodingFromAllInputsEv(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_116MultiplyFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJiSA_EEEJiSA_EEEE16getCanonicalNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress noreturn uwtable
define internal void @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS0_4exec10VectorExecEEENS0_17IntervalYearMonthENS0_15ConstantCheckerIJS9_dEEEJS9_dEE7getNameB5cxx11Ev(ptr dead_on_unwind noalias nofree readnone sret(%"class.std::__cxx11::basic_string") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.34)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #33
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZSt11make_sharedIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_4exec10VectorExecEEENS1_17IntervalYearMonthENS1_15ConstantCheckerIJSA_dEEEJSA_dEEEJRbRKSt6vectorINS7_17SignatureVariableESaISH_EEEESt10shared_ptrIT_EDpOT0_(i8 %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.facebook::velox::exec::FunctionSignatureBuilder", align 8 ; 16 uses
  %2 = alloca %"class.std::shared_ptr.15", align 16 ; 7 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"struct.facebook::velox::core::TypeAnalysis", align 1 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"struct.facebook::velox::core::TypeAnalysis.1317", align 1 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::vector", align 16     ; 13 uses
  %11 = alloca %"struct.facebook::velox::core::TypeAnalysisResults", align 8 ; 31 uses
  %12 = alloca %"struct.facebook::velox::core::TypeAnalysis.1317", align 1 ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::shared_ptr.18", align 16 ; 7 uses
  %15 = alloca %"class.std::vector.21", align 8   ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"struct.facebook::velox::core::SimpleFunctionMetadata<facebook::velox::functions::(anonymous namespace)::IntervalMultiplyFunction<facebook::velox::exec::VectorExec>, facebook::velox::IntervalYearMonth, facebook::velox::ConstantChecker<facebook::velox::IntervalYearMonth, double>, facebook::velox::IntervalYearMonth, double>::SignatureTypesAnalysisResults", align 16 ; 31 uses
  store ptr null, ptr @_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_10VectorExecEEENS0_17IntervalYearMonthENS0_15ConstantCheckerIJSA_dEEEJSA_dEEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISL_EEE8instance, align 16, !tbaa !4564
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #34, !noalias !4567 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !35
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_4exec10VectorExecEEENS1_17IntervalYearMonthENS1_15ConstantCheckerIJSA_dEEEJSA_dEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS0_4exec10VectorExecEEENS0_17IntervalYearMonthENS0_15ConstantCheckerIJS9_dEEEJS9_dEEE, i64 16), ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %.0.val, ptr %i.e, align 8, !tbaa !4570
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4572)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33, !noalias !4572
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !4572
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33, !noalias !4572
  store i8 0, ptr %11, align 8, !tbaa !150, !noalias !4572
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 1
  store i8 0, ptr %i.i, align 1, !tbaa !152, !noalias !4572
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 2
  store i8 0, ptr %i.j, align 2, !tbaa !153, !noalias !4572
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !154, !noalias !4572
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.l)
          to label %bb.b unwind label %bb.at, !noalias !4572

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 392 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !noalias !4572
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 416 ; 10 uses
  store i32 0, ptr %i.n, align 8, !tbaa !155, !noalias !4572
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 424 ; 5 uses
  store ptr null, ptr %i.o, align 8, !tbaa !160, !noalias !4572
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 432 ; 5 uses
  store ptr %i.n, ptr %i.p, align 8, !tbaa !161, !noalias !4572
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 440 ; 4 uses
  store ptr %i.n, ptr %i.q, align 8, !tbaa !162, !noalias !4572
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 448 ; 6 uses
  store i64 0, ptr %i.r, align 8, !tbaa !163, !noalias !4572
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33, !noalias !4572
  invoke void @_ZN8facebook5velox4core12TypeAnalysisINS0_17IntervalYearMonthEE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %bb.c unwind label %bb.au

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33, !noalias !4572
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33, !noalias !4572
  call void @llvm.experimental.noalias.scope.decl(metadata !4575)
  call void @llvm.experimental.noalias.scope.decl(metadata !4578)
  call void @llvm.experimental.noalias.scope.decl(metadata !4581)
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 12 uses
  store ptr %i.s, ptr %13, align 8, !tbaa !173, !alias.scope !4584, !noalias !4572
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i64 0, ptr %i.t, align 8, !tbaa !16, !alias.scope !4584, !noalias !4572
  store i8 0, ptr %i.s, align 8, !tbaa !28, !alias.scope !4584, !noalias !4572
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !4585 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !noalias !4585 ; 2 uses
  %i.y = icmp ugt ptr %i.v, %i.x
  %.08.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.y, ptr %i.v, ptr %i.x ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !180, !noalias !4585 ; 2 uses
  %i.ab = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef %i.aa, i64 noundef %i.ad)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %13, align 8, !tbaa !7, !alias.scope !4584, !noalias !4572 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.s
  br i1 %i.ah, label %.body.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.i.sink.split

bb.f:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e

_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33, !noalias !4572
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 400 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24, !noalias !4572 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.m, align 8, !tbaa !27, !noalias !4572
  store <2 x ptr> %i.am, ptr %14, align 16, !tbaa !27, !noalias !4572
  %.not.i.i.i25.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i25.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !4572
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
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33, !noalias !4572
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false), !noalias !4572
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33, !noalias !4572
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.as, ptr %7, align 8, !tbaa !173, !noalias !4572
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !16, !noalias !4572
  store i8 0, ptr %i.as, align 8, !tbaa !28, !noalias !4572
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i unwind label %bb.j

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.av = load ptr, ptr %7, align 8, !tbaa !7, !noalias !4572 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.as
  br i1 %i.aw, label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i
  %i.ax = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !4572
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #35
  br label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %7, align 8, !tbaa !7, !noalias !4572 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.as
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !4572
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !4572
  br label %.body29.i.i.i.i.i.i.i

_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !4572
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33, !noalias !4572
  invoke void @_ZN8facebook5velox4core12TypeAnalysisINS0_17IntervalYearMonthEE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.av

.noexc.i.i.i.i.i.i.i:                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33, !noalias !4572
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33, !noalias !4572
  call void @llvm.experimental.noalias.scope.decl(metadata !4586)
  call void @llvm.experimental.noalias.scope.decl(metadata !4589)
  call void @llvm.experimental.noalias.scope.decl(metadata !4592)
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  store ptr %i.be, ptr %9, align 8, !tbaa !173, !alias.scope !4595, !noalias !4572
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 0, ptr %i.bf, align 8, !tbaa !16, !alias.scope !4595, !noalias !4572
  store i8 0, ptr %i.be, align 8, !tbaa !28, !alias.scope !4595, !noalias !4572
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !4596 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  %i.bh = load ptr, ptr %i.w, align 8, !noalias !4596 ; 2 uses
  %i.bi = icmp ugt ptr %i.bg, %i.bh
  %.08.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bi, ptr %i.bg, ptr %i.bh ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i26.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i26.i.i.i.i.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !180, !noalias !4596 ; 2 uses
  %i.bl = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.bk, i64 noundef %i.bn)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %9, align 8, !tbaa !7, !alias.scope !4595, !noalias !4572 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.be
  br i1 %i.br, label %.body29.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.bs = load i64, ptr %i.be, align 8, !tbaa !28, !alias.scope !4595, !noalias !4572
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #35
  br label %.body29.i.i.i.i.i.i.i

bb.m:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.bu)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l
end_hunk_16
begin_hunk_17_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJSA_dEEEJSA_dEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EERKSJ_IKNS0_4TypeEERNS1_7EvalCtxERSL_:bb.a
  %i.bdn = and i1 %i.bdm, %or.cond.i.i.not.i89.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.bdn, label %bb.gy, label %bb.gz, !prof !285

bb.gy:                                            ; preds = %.noexc14.i85.i.i.i.i.i.i.i.i.i.i.i
  %i.bdo = fptosi double %i.bdi to i32
  br label %_ZN8facebook5velox6StatusD2Ev.exit25.i90.i.i.i.i.i.i.i.i.i.i.i

bb.gz:                                            ; preds = %.noexc14.i85.i.i.i.i.i.i.i.i.i.i.i
  %i.bdp = fcmp ogt double %i.bdi, 0.000000e+00
  %i.bdq = select i1 %i.bdp, i32 2147483647, i32 -2147483648
  br label %_ZN8facebook5velox6StatusD2Ev.exit25.i90.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit25.i90.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.gz, %bb.gy
  %storemerge.i.i.i91.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bdq, %bb.gz ], [ %i.bdo, %bb.gy ]
  %i.bdr = getelementptr inbounds [4 x i8], ptr %.sink.i.i, i64 %i.bcm
  store i32 %storemerge.i.i.i91.i.i.i.i.i.i.i.i.i.i.i, ptr %i.bdr, align 4, !tbaa !3
  %i.bds = add nsw i64 %.037.i82.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.bdt = and i64 %i.bds, %.037.i82.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i92.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bdt, 0
  br i1 %.not10.i92.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJSA_dEEEJSA_dEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit, label %bb.gr, !llvm.loop !4758

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJSA_dEEEJSA_dEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit25.i90.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit25.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit19.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i74.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit21.i74.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit21.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit15.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit22.i72.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit22.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit16.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit26.i77.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit26.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i.i.i.i.i.i.i.i, %middle.block388, %middle.block423, %middle.block459, %middle.block529, %vec.epilog.middle.block545, %bb.v, %bb.w, %bb.y, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, %bb.ac, %bb.ak, %bb.an, %bb.ap, %._crit_edge.i.i.i.i.i.i.i.i.i27.i.i, %bb.be, %bb.br, %bb.bu, %bb.bw, %._crit_edge.i.i.i.i.i.i.i.i.i.i37.i, %bb.cl, %bb.cw, %bb.cz, %bb.db, %._crit_edge.i.i.i.i.i.i.i.i.i30.i.i, %bb.dq, %bb.eq, %bb.fa, %bb.fc, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i65, %bb.gq
  br i1 %.136130, label %bb.ha, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

bb.ha:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJSA_dEEEJSA_dEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit
  %i.bdu = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bdv = load <2 x ptr>, ptr %.134132, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.134132, i8 0, i64 16, i1 false)
  %i.bdw = load ptr, ptr %i.bdu, align 8, !tbaa !24 ; 8 uses
  store <2 x ptr> %i.bdv, ptr %5, align 8, !tbaa !27
  %.not.i.i.i.i114 = icmp eq ptr %i.bdw, null
  br i1 %.not.i.i.i.i114, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.bdw, i64 8 ; 4 uses
  %i.bdy = load atomic i64, ptr %i.bdx acquire, align 8 ; 2 uses
  %i.bdz = icmp eq i64 %i.bdy, 4294967297
  %i.bea = trunc i64 %i.bdy to i32                ; 2 uses
  br i1 %i.bdz, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  store i32 0, ptr %i.bdx, align 8, !tbaa !33
  %i.beb = getelementptr inbounds nuw i8, ptr %i.bdw, i64 12
  store i32 0, ptr %i.beb, align 4, !tbaa !35
  %i.bec = load ptr, ptr %i.bdw, align 8, !tbaa !36
  %i.bed = getelementptr inbounds nuw i8, ptr %i.bec, i64 16
  %i.bee = load ptr, ptr %i.bed, align 8
  call void %i.bee(ptr noundef nonnull align 8 dereferenceable(16) %i.bdw) #33, !inline_history !739
  %i.bef = load ptr, ptr %i.bdw, align 8, !tbaa !36
  %i.beg = getelementptr inbounds nuw i8, ptr %i.bef, i64 24
  %i.beh = load ptr, ptr %i.beg, align 8
  call void %i.beh(ptr noundef nonnull align 8 dereferenceable(16) %i.bdw) #33, !inline_history !739
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

bb.hd:                                            ; preds = %bb.hb
  %i.bei = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i = icmp eq i8 %i.bei, 0
  br i1 %.not.i.i.i.i.i, label %bb.hf, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.bej = add nsw i32 %i.bea, -1
  store i32 %i.bej, ptr %i.bdx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.hf:                                            ; preds = %bb.hd
  %i.bek = atomicrmw volatile add ptr %i.bdx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.hf, %bb.he
  %.0.i.i.i.i.i.i = phi i32 [ %i.bea, %bb.he ], [ %i.bek, %bb.hf ]
  %i.bel = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bel, label %bb.hg, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, !prof !39

bb.hg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bdw) #33
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit: ; preds = %bb.hg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.hc, %bb.ha, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJSA_dEEEJSA_dEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit
  %i.bem = load ptr, ptr %8, align 8, !tbaa !696  ; 3 uses
  %i.ben = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.beo = load ptr, ptr %i.ben, align 8, !tbaa !707 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bem, %i.beo
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bes, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i ], [ %i.bem, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %i.bep = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.beq = load i8, ptr %i.bep, align 8, !tbaa !699, !range !235, !noundef !236
  %i.ber = trunc nuw i8 %i.beq to i1
  store i8 0, ptr %i.bep, align 8, !tbaa !699
  br i1 %i.ber, label %bb.hh, label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

bb.hh:                                            ; preds = %.lr.ph.i.i.i
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %.05.i.i.i) #33
  br label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i: ; preds = %bb.hh, %.lr.ph.i.i.i
  %i.bes = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i115 = icmp eq ptr %i.bes, %i.beo
  br i1 %.not.i.i.i115, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !740

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !696
  br label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit
  %i.bet = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bem, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bet, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit, label %bb.hi

bb.hi:                                            ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i
  %i.beu = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bev = load ptr, ptr %i.beu, align 8, !tbaa !741
  %i.bew = ptrtoint ptr %i.bev to i64
  %i.bex = ptrtoint ptr %i.bet to i64
  %i.bey = sub i64 %i.bew, %i.bex
  call void @_ZdlPvm(ptr noundef nonnull %i.bet, i64 noundef %i.bey) #35
  br label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit

_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, %bb.hi
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  ret void

.body:                                            ; preds = %bb.du, %common.resume.i
  %.pn.pn.pn = phi { ptr, i32 } [ %common.resume.op.i, %common.resume.i ], [ %i.ami, %bb.du ]
  call void @_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJSA_dEEEJSA_dEEEE27supportsFlatNoNullsFastPathEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJSA_dEEEJSA_dEEEE34ensureStringEncodingSetAtAllInputsEv(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJSA_dEEEJSA_dEEEE36propagateStringEncodingFromAllInputsEv(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJSA_dEEEJSA_dEEEE16getCanonicalNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress noreturn uwtable
define internal void @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS0_4exec10VectorExecEEENS0_17IntervalYearMonthENS0_15ConstantCheckerIJdS9_EEEJdS9_EE7getNameB5cxx11Ev(ptr dead_on_unwind noalias nofree readnone sret(%"class.std::__cxx11::basic_string") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.34)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #33
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZSt11make_sharedIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_4exec10VectorExecEEENS1_17IntervalYearMonthENS1_15ConstantCheckerIJdSA_EEEJdSA_EEEJRbRKSt6vectorINS7_17SignatureVariableESaISH_EEEESt10shared_ptrIT_EDpOT0_(i8 %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.facebook::velox::exec::FunctionSignatureBuilder", align 8 ; 16 uses
  %2 = alloca %"class.std::shared_ptr.15", align 16 ; 7 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"struct.facebook::velox::core::TypeAnalysis.1317", align 1 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"struct.facebook::velox::core::TypeAnalysis", align 1 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::vector", align 16     ; 13 uses
  %11 = alloca %"struct.facebook::velox::core::TypeAnalysisResults", align 8 ; 31 uses
  %12 = alloca %"struct.facebook::velox::core::TypeAnalysis.1317", align 1 ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::shared_ptr.18", align 16 ; 7 uses
  %15 = alloca %"class.std::vector.21", align 8   ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"struct.facebook::velox::core::SimpleFunctionMetadata<facebook::velox::functions::(anonymous namespace)::IntervalMultiplyFunction<facebook::velox::exec::VectorExec>, facebook::velox::IntervalYearMonth, facebook::velox::ConstantChecker<double, facebook::velox::IntervalYearMonth>, double, facebook::velox::IntervalYearMonth>::SignatureTypesAnalysisResults", align 16 ; 31 uses
  store ptr null, ptr @_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_10VectorExecEEENS0_17IntervalYearMonthENS0_15ConstantCheckerIJdSA_EEEJdSA_EEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISL_EEE8instance, align 16, !tbaa !4774
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #34, !noalias !4777 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !35
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_4exec10VectorExecEEENS1_17IntervalYearMonthENS1_15ConstantCheckerIJdSA_EEEJdSA_EEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS0_4exec10VectorExecEEENS0_17IntervalYearMonthENS0_15ConstantCheckerIJdS9_EEEJdS9_EEE, i64 16), ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %.0.val, ptr %i.e, align 8, !tbaa !4780
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4782)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33, !noalias !4782
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !4782
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33, !noalias !4782
  store i8 0, ptr %11, align 8, !tbaa !150, !noalias !4782
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 1
  store i8 0, ptr %i.i, align 1, !tbaa !152, !noalias !4782
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 2
  store i8 0, ptr %i.j, align 2, !tbaa !153, !noalias !4782
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !154, !noalias !4782
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.l)
          to label %bb.b unwind label %bb.at, !noalias !4782

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 392 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !noalias !4782
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 416 ; 10 uses
  store i32 0, ptr %i.n, align 8, !tbaa !155, !noalias !4782
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 424 ; 5 uses
  store ptr null, ptr %i.o, align 8, !tbaa !160, !noalias !4782
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 432 ; 5 uses
  store ptr %i.n, ptr %i.p, align 8, !tbaa !161, !noalias !4782
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 440 ; 4 uses
  store ptr %i.n, ptr %i.q, align 8, !tbaa !162, !noalias !4782
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 448 ; 6 uses
  store i64 0, ptr %i.r, align 8, !tbaa !163, !noalias !4782
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33, !noalias !4782
  invoke void @_ZN8facebook5velox4core12TypeAnalysisINS0_17IntervalYearMonthEE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %bb.c unwind label %bb.au

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33, !noalias !4782
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33, !noalias !4782
  call void @llvm.experimental.noalias.scope.decl(metadata !4785)
  call void @llvm.experimental.noalias.scope.decl(metadata !4788)
  call void @llvm.experimental.noalias.scope.decl(metadata !4791)
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 12 uses
  store ptr %i.s, ptr %13, align 8, !tbaa !173, !alias.scope !4794, !noalias !4782
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i64 0, ptr %i.t, align 8, !tbaa !16, !alias.scope !4794, !noalias !4782
  store i8 0, ptr %i.s, align 8, !tbaa !28, !alias.scope !4794, !noalias !4782
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !4795 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !noalias !4795 ; 2 uses
  %i.y = icmp ugt ptr %i.v, %i.x
  %.08.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.y, ptr %i.v, ptr %i.x ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !180, !noalias !4795 ; 2 uses
  %i.ab = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef %i.aa, i64 noundef %i.ad)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %13, align 8, !tbaa !7, !alias.scope !4794, !noalias !4782 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.s
  br i1 %i.ah, label %.body.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.i.sink.split

bb.f:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e

_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33, !noalias !4782
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 400 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24, !noalias !4782 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.m, align 8, !tbaa !27, !noalias !4782
  store <2 x ptr> %i.am, ptr %14, align 16, !tbaa !27, !noalias !4782
  %.not.i.i.i25.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i25.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !4782
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
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33, !noalias !4782
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false), !noalias !4782
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33, !noalias !4782
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.as, ptr %7, align 8, !tbaa !173, !noalias !4782
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !16, !noalias !4782
  store i8 0, ptr %i.as, align 8, !tbaa !28, !noalias !4782
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i unwind label %bb.j

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.av = load ptr, ptr %7, align 8, !tbaa !7, !noalias !4782 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.as
  br i1 %i.aw, label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i
  %i.ax = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !4782
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #35
  br label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %7, align 8, !tbaa !7, !noalias !4782 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.as
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !4782
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !4782
  br label %.body29.i.i.i.i.i.i.i

_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !4782
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33, !noalias !4782
  invoke void @_ZN8facebook5velox4core12TypeAnalysisIdE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.av

.noexc.i.i.i.i.i.i.i:                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33, !noalias !4782
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33, !noalias !4782
  call void @llvm.experimental.noalias.scope.decl(metadata !4796)
  call void @llvm.experimental.noalias.scope.decl(metadata !4799)
  call void @llvm.experimental.noalias.scope.decl(metadata !4802)
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  store ptr %i.be, ptr %9, align 8, !tbaa !173, !alias.scope !4805, !noalias !4782
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 0, ptr %i.bf, align 8, !tbaa !16, !alias.scope !4805, !noalias !4782
  store i8 0, ptr %i.be, align 8, !tbaa !28, !alias.scope !4805, !noalias !4782
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !4806 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  %i.bh = load ptr, ptr %i.w, align 8, !noalias !4806 ; 2 uses
  %i.bi = icmp ugt ptr %i.bg, %i.bh
  %.08.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bi, ptr %i.bg, ptr %i.bh ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i26.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i26.i.i.i.i.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !180, !noalias !4806 ; 2 uses
  %i.bl = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.bk, i64 noundef %i.bn)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %9, align 8, !tbaa !7, !alias.scope !4805, !noalias !4782 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.be
  br i1 %i.br, label %.body29.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.bs = load i64, ptr %i.be, align 8, !tbaa !28, !alias.scope !4805, !noalias !4782
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #35
  br label %.body29.i.i.i.i.i.i.i

bb.m:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.bu)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l
end_hunk_17
begin_hunk_18_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJdSA_EEEJdSA_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EERKSJ_IKNS0_4TypeEERNS1_7EvalCtxERSL_:bb.a
  %i.bdz = and i1 %i.bdy, %or.cond.i.i.not.i89.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.bdz, label %bb.gy, label %bb.gz, !prof !285

bb.gy:                                            ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_17IntervalYearMonthEEixEm.exit.i85.i.i.i.i.i.i.i.i.i.i.i
  %i.bea = fptosi double %i.bdu to i32
  br label %_ZN8facebook5velox6StatusD2Ev.exit25.i90.i.i.i.i.i.i.i.i.i.i.i

bb.gz:                                            ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_17IntervalYearMonthEEixEm.exit.i85.i.i.i.i.i.i.i.i.i.i.i
  %i.beb = fcmp ogt double %i.bdu, 0.000000e+00
  %i.bec = select i1 %i.beb, i32 2147483647, i32 -2147483648
  br label %_ZN8facebook5velox6StatusD2Ev.exit25.i90.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit25.i90.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.gz, %bb.gy
  %storemerge.i.i.i91.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bec, %bb.gz ], [ %i.bea, %bb.gy ]
  %i.bed = getelementptr inbounds [4 x i8], ptr %.sink.i.i, i64 %i.bcy
  store i32 %storemerge.i.i.i91.i.i.i.i.i.i.i.i.i.i.i, ptr %i.bed, align 4, !tbaa !3
  %i.bee = add nsw i64 %.037.i82.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.bef = and i64 %i.bee, %.037.i82.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i92.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bef, 0
  br i1 %.not10.i92.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJdSA_EEEJdSA_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit, label %bb.gr, !llvm.loop !4971

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJdSA_EEEJdSA_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit25.i90.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit25.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit19.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i74.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit21.i72.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit21.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit15.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit22.i74.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit22.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit16.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit26.i77.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit26.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i.i.i.i.i.i.us.i.i, %middle.block392, %middle.block423, %middle.block463, %middle.block533, %vec.epilog.middle.block549, %middle.block564, %vec.epilog.middle.block580, %bb.v, %bb.w, %bb.y, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, %bb.ac, %bb.ak, %bb.an, %bb.ap, %._crit_edge.i.i.i.i.i.i.i.i.i27.i.i, %bb.be, %bb.br, %bb.bu, %bb.bw, %._crit_edge.i.i.i.i.i.i.i.i.i.i49.i, %bb.cl, %bb.cw, %bb.cz, %bb.db, %._crit_edge.i.i.i.i.i.i.i.i.i27.i24.i, %bb.dq, %bb.eq, %bb.fa, %bb.fc, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i65, %bb.gq
  br i1 %.136131, label %bb.ha, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

bb.ha:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJdSA_EEEJdSA_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit
  %i.beg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.beh = load <2 x ptr>, ptr %.134133, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.134133, i8 0, i64 16, i1 false)
  %i.bei = load ptr, ptr %i.beg, align 8, !tbaa !24 ; 8 uses
  store <2 x ptr> %i.beh, ptr %5, align 8, !tbaa !27
  %.not.i.i.i.i115 = icmp eq ptr %i.bei, null
  br i1 %.not.i.i.i.i115, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.bej = getelementptr inbounds nuw i8, ptr %i.bei, i64 8 ; 4 uses
  %i.bek = load atomic i64, ptr %i.bej acquire, align 8 ; 2 uses
  %i.bel = icmp eq i64 %i.bek, 4294967297
  %i.bem = trunc i64 %i.bek to i32                ; 2 uses
  br i1 %i.bel, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  store i32 0, ptr %i.bej, align 8, !tbaa !33
  %i.ben = getelementptr inbounds nuw i8, ptr %i.bei, i64 12
  store i32 0, ptr %i.ben, align 4, !tbaa !35
  %i.beo = load ptr, ptr %i.bei, align 8, !tbaa !36
  %i.bep = getelementptr inbounds nuw i8, ptr %i.beo, i64 16
  %i.beq = load ptr, ptr %i.bep, align 8
  call void %i.beq(ptr noundef nonnull align 8 dereferenceable(16) %i.bei) #33, !inline_history !739
  %i.ber = load ptr, ptr %i.bei, align 8, !tbaa !36
  %i.bes = getelementptr inbounds nuw i8, ptr %i.ber, i64 24
  %i.bet = load ptr, ptr %i.bes, align 8
  call void %i.bet(ptr noundef nonnull align 8 dereferenceable(16) %i.bei) #33, !inline_history !739
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

bb.hd:                                            ; preds = %bb.hb
  %i.beu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i116 = icmp eq i8 %i.beu, 0
  br i1 %.not.i.i.i.i.i116, label %bb.hf, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.bev = add nsw i32 %i.bem, -1
  store i32 %i.bev, ptr %i.bej, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.hf:                                            ; preds = %bb.hd
  %i.bew = atomicrmw volatile add ptr %i.bej, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.hf, %bb.he
  %.0.i.i.i.i.i.i = phi i32 [ %i.bem, %bb.he ], [ %i.bew, %bb.hf ]
  %i.bex = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bex, label %bb.hg, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, !prof !39

bb.hg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bei) #33
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit: ; preds = %bb.hg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.hc, %bb.ha, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJdSA_EEEJdSA_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit
  %i.bey = load ptr, ptr %8, align 8, !tbaa !696  ; 3 uses
  %i.bez = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bfa = load ptr, ptr %i.bez, align 8, !tbaa !707 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bey, %i.bfa
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bfe, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i ], [ %i.bey, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %i.bfb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.bfc = load i8, ptr %i.bfb, align 8, !tbaa !699, !range !235, !noundef !236
  %i.bfd = trunc nuw i8 %i.bfc to i1
  store i8 0, ptr %i.bfb, align 8, !tbaa !699
  br i1 %i.bfd, label %bb.hh, label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

bb.hh:                                            ; preds = %.lr.ph.i.i.i
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %.05.i.i.i) #33
  br label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i: ; preds = %bb.hh, %.lr.ph.i.i.i
  %i.bfe = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bfe, %i.bfa
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !740

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !696
  br label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit
  %i.bff = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bey, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bff, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit, label %bb.hi

bb.hi:                                            ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bfg = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bfh = load ptr, ptr %i.bfg, align 8, !tbaa !741
  %i.bfi = ptrtoint ptr %i.bfh to i64
  %i.bfj = ptrtoint ptr %i.bff to i64
  %i.bfk = sub i64 %i.bfi, %i.bfj
  call void @_ZdlPvm(ptr noundef nonnull %i.bff, i64 noundef %i.bfk) #35
  br label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit

_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, %bb.hi
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  ret void

.body:                                            ; preds = %bb.du, %common.resume.i
  %.pn.pn.pn = phi { ptr, i32 } [ %common.resume.op.i, %common.resume.i ], [ %i.amu, %bb.du ]
  call void @_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJdSA_EEEJdSA_EEEE27supportsFlatNoNullsFastPathEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJdSA_EEEJdSA_EEEE34ensureStringEncodingSetAtAllInputsEv(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJdSA_EEEJdSA_EEEE36propagateStringEncodingFromAllInputsEv(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_124IntervalMultiplyFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJdSA_EEEJdSA_EEEE16getCanonicalNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress noreturn uwtable
define internal void @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_114DivideFunctionINS0_4exec10VectorExecEEEdNS0_15ConstantCheckerIJddEEEJddEE7getNameB5cxx11Ev(ptr dead_on_unwind noalias nofree readnone sret(%"class.std::__cxx11::basic_string") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.34)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #33
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZSt11make_sharedIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_114DivideFunctionINS1_4exec10VectorExecEEEdNS1_15ConstantCheckerIJddEEEJddEEEJRbRKSt6vectorINS7_17SignatureVariableESaISG_EEEESt10shared_ptrIT_EDpOT0_(i8 %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.facebook::velox::exec::FunctionSignatureBuilder", align 8 ; 16 uses
  %2 = alloca %"class.std::shared_ptr.15", align 16 ; 7 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"struct.facebook::velox::core::TypeAnalysis", align 1 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"struct.facebook::velox::core::TypeAnalysis", align 1 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::vector", align 16     ; 13 uses
  %11 = alloca %"struct.facebook::velox::core::TypeAnalysisResults", align 8 ; 31 uses
  %12 = alloca %"struct.facebook::velox::core::TypeAnalysis", align 1 ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::shared_ptr.18", align 16 ; 7 uses
  %15 = alloca %"class.std::vector.21", align 8   ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"struct.facebook::velox::core::SimpleFunctionMetadata<facebook::velox::functions::(anonymous namespace)::DivideFunction<facebook::velox::exec::VectorExec>, double, facebook::velox::ConstantChecker<double, double>, double, double>::SignatureTypesAnalysisResults", align 16 ; 31 uses
  store ptr null, ptr @_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_114DivideFunctionINS1_10VectorExecEEEdNS0_15ConstantCheckerIJddEEEJddEEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISK_EEE8instance, align 16, !tbaa !4987
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #34, !noalias !4990 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !35
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_114DivideFunctionINS1_4exec10VectorExecEEEdNS1_15ConstantCheckerIJddEEEJddEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_114DivideFunctionINS0_4exec10VectorExecEEEdNS0_15ConstantCheckerIJddEEEJddEEE, i64 16), ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %.0.val, ptr %i.e, align 8, !tbaa !4993
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4995)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33, !noalias !4995
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !4995
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33, !noalias !4995
  store i8 0, ptr %11, align 8, !tbaa !150, !noalias !4995
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 1
  store i8 0, ptr %i.i, align 1, !tbaa !152, !noalias !4995
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 2
  store i8 0, ptr %i.j, align 2, !tbaa !153, !noalias !4995
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !154, !noalias !4995
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.l)
          to label %bb.b unwind label %bb.at, !noalias !4995

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 392 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !noalias !4995
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 416 ; 10 uses
  store i32 0, ptr %i.n, align 8, !tbaa !155, !noalias !4995
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 424 ; 5 uses
  store ptr null, ptr %i.o, align 8, !tbaa !160, !noalias !4995
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 432 ; 5 uses
  store ptr %i.n, ptr %i.p, align 8, !tbaa !161, !noalias !4995
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 440 ; 4 uses
  store ptr %i.n, ptr %i.q, align 8, !tbaa !162, !noalias !4995
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 448 ; 6 uses
  store i64 0, ptr %i.r, align 8, !tbaa !163, !noalias !4995
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33, !noalias !4995
  invoke void @_ZN8facebook5velox4core12TypeAnalysisIdE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %bb.c unwind label %bb.au

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33, !noalias !4995
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33, !noalias !4995
  call void @llvm.experimental.noalias.scope.decl(metadata !4998)
  call void @llvm.experimental.noalias.scope.decl(metadata !5001)
  call void @llvm.experimental.noalias.scope.decl(metadata !5004)
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 12 uses
  store ptr %i.s, ptr %13, align 8, !tbaa !173, !alias.scope !5007, !noalias !4995
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i64 0, ptr %i.t, align 8, !tbaa !16, !alias.scope !5007, !noalias !4995
  store i8 0, ptr %i.s, align 8, !tbaa !28, !alias.scope !5007, !noalias !4995
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !5008 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !noalias !5008 ; 2 uses
  %i.y = icmp ugt ptr %i.v, %i.x
  %.08.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.y, ptr %i.v, ptr %i.x ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !180, !noalias !5008 ; 2 uses
  %i.ab = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef %i.aa, i64 noundef %i.ad)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %13, align 8, !tbaa !7, !alias.scope !5007, !noalias !4995 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.s
  br i1 %i.ah, label %.body.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.i.sink.split

bb.f:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e

_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33, !noalias !4995
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 400 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24, !noalias !4995 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.m, align 8, !tbaa !27, !noalias !4995
  store <2 x ptr> %i.am, ptr %14, align 16, !tbaa !27, !noalias !4995
  %.not.i.i.i25.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i25.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !4995
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
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33, !noalias !4995
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false), !noalias !4995
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33, !noalias !4995
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.as, ptr %7, align 8, !tbaa !173, !noalias !4995
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !16, !noalias !4995
  store i8 0, ptr %i.as, align 8, !tbaa !28, !noalias !4995
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i unwind label %bb.j

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.av = load ptr, ptr %7, align 8, !tbaa !7, !noalias !4995 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.as
  br i1 %i.aw, label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i
  %i.ax = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !4995
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #35
  br label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %7, align 8, !tbaa !7, !noalias !4995 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.as
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !4995
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !4995
  br label %.body29.i.i.i.i.i.i.i

_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !4995
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33, !noalias !4995
  invoke void @_ZN8facebook5velox4core12TypeAnalysisIdE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.av

.noexc.i.i.i.i.i.i.i:                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33, !noalias !4995
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33, !noalias !4995
  call void @llvm.experimental.noalias.scope.decl(metadata !5009)
  call void @llvm.experimental.noalias.scope.decl(metadata !5012)
  call void @llvm.experimental.noalias.scope.decl(metadata !5015)
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  store ptr %i.be, ptr %9, align 8, !tbaa !173, !alias.scope !5018, !noalias !4995
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 0, ptr %i.bf, align 8, !tbaa !16, !alias.scope !5018, !noalias !4995
  store i8 0, ptr %i.be, align 8, !tbaa !28, !alias.scope !5018, !noalias !4995
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !5019 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  %i.bh = load ptr, ptr %i.w, align 8, !noalias !5019 ; 2 uses
  %i.bi = icmp ugt ptr %i.bg, %i.bh
  %.08.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bi, ptr %i.bg, ptr %i.bh ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i26.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i26.i.i.i.i.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !180, !noalias !5019 ; 2 uses
  %i.bl = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.bk, i64 noundef %i.bn)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %9, align 8, !tbaa !7, !alias.scope !5018, !noalias !4995 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.be
  br i1 %i.br, label %.body29.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.bs = load i64, ptr %i.be, align 8, !tbaa !28, !alias.scope !5018, !noalias !4995
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #35
  br label %.body29.i.i.i.i.i.i.i

bb.m:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.bu)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l
end_hunk_18
begin_hunk_19_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a

bb.et:                                            ; preds = %bb.er
  %i.ayt = load ptr, ptr %i.aya, align 8, !tbaa !720
  %i.ayu = shl nsw i64 %i.ayf, 2
  %i.ayv = getelementptr inbounds i8, ptr %i.ayt, i64 %i.ayu
  %i.ayw = load i32, ptr %i.ayv, align 4, !tbaa !3
  br label %_ZN8facebook5velox6StatusD2Ev.exit26.i75.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit26.i75.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.et, %bb.es, %.noexc12.i73.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i17.i76.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ayw, %bb.et ], [ %i.ays, %bb.es ], [ %i.aye, %.noexc12.i73.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ayx = sext i32 %.0.i.i.i17.i76.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ayy = getelementptr inbounds [8 x i8], ptr %i.axv, i64 %i.ayx
  %i.ayz = load double, ptr %i.ayy, align 8, !tbaa !561
  %i.aza = fdiv double %i.ayp, %i.ayz
  %i.azb = getelementptr inbounds [8 x i8], ptr %.sink.i.i, i64 %i.ayf
  store double %i.aza, ptr %i.azb, align 8, !tbaa !561
  %i.azc = add nsw i64 %.036.i72.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.azd = and i64 %i.azc, %.036.i72.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i77.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.azd, 0
  br i1 %.not10.i77.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit, label %bb.en, !llvm.loop !5175

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit26.i75.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit26.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i72.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i.i.i.i.i.i.i.i.i.i43.i.i, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i47.i.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i47.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i70.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit21.i70.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit21.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit15.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit15.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit24.i73.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit18.i.i.i.i.i.i.i.i, %middle.block403, %middle.block441, %middle.block479, %middle.block517, %vec.epilog.middle.block533, %bb.z, %bb.aa, %bb.ac, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, %bb.ag, %bb.ao, %bb.ap, %bb.ar, %._crit_edge.i.i.i.i.i.i.i.i.i26.i.i, %bb.av, %bb.bf, %bb.bg, %bb.bi, %._crit_edge.i.i.i.i.i.i.i.i.i.i43.i, %bb.bm, %bb.bu, %bb.bv, %bb.bx, %._crit_edge.i.i.i.i.i.i.i.i.i29.i.i, %bb.cb, %bb.cy, %bb.dg, %bb.di, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i63, %bb.em
  br i1 %.136124, label %bb.eu, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

bb.eu:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit
  %i.aze = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.azf = load <2 x ptr>, ptr %.134126, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.134126, i8 0, i64 16, i1 false)
  %i.azg = load ptr, ptr %i.aze, align 8, !tbaa !24 ; 8 uses
  store <2 x ptr> %i.azf, ptr %5, align 8, !tbaa !27
  %.not.i.i.i.i103 = icmp eq ptr %i.azg, null
  br i1 %.not.i.i.i.i103, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.azh = getelementptr inbounds nuw i8, ptr %i.azg, i64 8 ; 4 uses
  %i.azi = load atomic i64, ptr %i.azh acquire, align 8 ; 2 uses
  %i.azj = icmp eq i64 %i.azi, 4294967297
  %i.azk = trunc i64 %i.azi to i32                ; 2 uses
  br i1 %i.azj, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  store i32 0, ptr %i.azh, align 8, !tbaa !33
  %i.azl = getelementptr inbounds nuw i8, ptr %i.azg, i64 12
  store i32 0, ptr %i.azl, align 4, !tbaa !35
  %i.azm = load ptr, ptr %i.azg, align 8, !tbaa !36
  %i.azn = getelementptr inbounds nuw i8, ptr %i.azm, i64 16
  %i.azo = load ptr, ptr %i.azn, align 8
  call void %i.azo(ptr noundef nonnull align 8 dereferenceable(16) %i.azg) #33, !inline_history !739
  %i.azp = load ptr, ptr %i.azg, align 8, !tbaa !36
  %i.azq = getelementptr inbounds nuw i8, ptr %i.azp, i64 24
  %i.azr = load ptr, ptr %i.azq, align 8
  call void %i.azr(ptr noundef nonnull align 8 dereferenceable(16) %i.azg) #33, !inline_history !739
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

bb.ex:                                            ; preds = %bb.ev
  %i.azs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i104 = icmp eq i8 %i.azs, 0
  br i1 %.not.i.i.i.i.i104, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.azt = add nsw i32 %i.azk, -1
  store i32 %i.azt, ptr %i.azh, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ez:                                            ; preds = %bb.ex
  %i.azu = atomicrmw volatile add ptr %i.azh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ez, %bb.ey
  %.0.i.i.i.i.i.i = phi i32 [ %i.azk, %bb.ey ], [ %i.azu, %bb.ez ]
  %i.azv = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.azv, label %bb.fa, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, !prof !39

bb.fa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.azg) #33
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit: ; preds = %bb.fa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ew, %bb.eu, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit
  %i.azw = load ptr, ptr %8, align 8, !tbaa !696  ; 3 uses
  %i.azx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.azy = load ptr, ptr %i.azx, align 8, !tbaa !707 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.azw, %i.azy
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bac, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i ], [ %i.azw, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %i.azz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.baa = load i8, ptr %i.azz, align 8, !tbaa !699, !range !235, !noundef !236
  %i.bab = trunc nuw i8 %i.baa to i1
  store i8 0, ptr %i.azz, align 8, !tbaa !699
  br i1 %i.bab, label %bb.fb, label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

bb.fb:                                            ; preds = %.lr.ph.i.i.i
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %.05.i.i.i) #33
  br label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i: ; preds = %bb.fb, %.lr.ph.i.i.i
  %i.bac = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i105 = icmp eq ptr %i.bac, %i.azy
  br i1 %.not.i.i.i105, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !740

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !696
  br label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit
  %i.bad = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.azw, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bad, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit, label %bb.fc

bb.fc:                                            ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bae = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.baf = load ptr, ptr %i.bae, align 8, !tbaa !741
  %i.bag = ptrtoint ptr %i.baf to i64
  %i.bah = ptrtoint ptr %i.bad to i64
  %i.bai = sub i64 %i.bag, %i.bah
  call void @_ZdlPvm(ptr noundef nonnull %i.bad, i64 noundef %i.bai) #35
  br label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit

_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  ret void

.body:                                            ; preds = %bb.cc, %common.resume.i
  %.pn.pn.pn = phi { ptr, i32 } [ %common.resume.op.i, %common.resume.i ], [ %i.aga, %bb.cc ]
  call void @_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE27supportsFlatNoNullsFastPathEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE34ensureStringEncodingSetAtAllInputsEv(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE36propagateStringEncodingFromAllInputsEv(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE16getCanonicalNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress noreturn uwtable
define internal void @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_114DivideFunctionINS0_4exec10VectorExecEEEfNS0_15ConstantCheckerIJffEEEJffEE7getNameB5cxx11Ev(ptr dead_on_unwind noalias nofree readnone sret(%"class.std::__cxx11::basic_string") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.34)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #33
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZSt11make_sharedIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_114DivideFunctionINS1_4exec10VectorExecEEEfNS1_15ConstantCheckerIJffEEEJffEEEJRbRKSt6vectorINS7_17SignatureVariableESaISG_EEEESt10shared_ptrIT_EDpOT0_(i8 %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.facebook::velox::exec::FunctionSignatureBuilder", align 8 ; 16 uses
  %2 = alloca %"class.std::shared_ptr.15", align 16 ; 7 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"struct.facebook::velox::core::TypeAnalysis.925", align 1 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"struct.facebook::velox::core::TypeAnalysis.925", align 1 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::vector", align 16     ; 13 uses
  %11 = alloca %"struct.facebook::velox::core::TypeAnalysisResults", align 8 ; 31 uses
  %12 = alloca %"struct.facebook::velox::core::TypeAnalysis.925", align 1 ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::shared_ptr.18", align 16 ; 7 uses
  %15 = alloca %"class.std::vector.21", align 8   ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"struct.facebook::velox::core::SimpleFunctionMetadata<facebook::velox::functions::(anonymous namespace)::DivideFunction<facebook::velox::exec::VectorExec>, float, facebook::velox::ConstantChecker<float, float>, float, float>::SignatureTypesAnalysisResults", align 16 ; 31 uses
  store ptr null, ptr @_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_114DivideFunctionINS1_10VectorExecEEEfNS0_15ConstantCheckerIJffEEEJffEEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISK_EEE8instance, align 16, !tbaa !5191
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #34, !noalias !5194 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !35
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_114DivideFunctionINS1_4exec10VectorExecEEEfNS1_15ConstantCheckerIJffEEEJffEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_114DivideFunctionINS0_4exec10VectorExecEEEfNS0_15ConstantCheckerIJffEEEJffEEE, i64 16), ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %.0.val, ptr %i.e, align 8, !tbaa !5197
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5199)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33, !noalias !5199
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !5199
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33, !noalias !5199
  store i8 0, ptr %11, align 8, !tbaa !150, !noalias !5199
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 1
  store i8 0, ptr %i.i, align 1, !tbaa !152, !noalias !5199
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 2
  store i8 0, ptr %i.j, align 2, !tbaa !153, !noalias !5199
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !154, !noalias !5199
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.l)
          to label %bb.b unwind label %bb.at, !noalias !5199

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 392 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !noalias !5199
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 416 ; 10 uses
  store i32 0, ptr %i.n, align 8, !tbaa !155, !noalias !5199
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 424 ; 5 uses
  store ptr null, ptr %i.o, align 8, !tbaa !160, !noalias !5199
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 432 ; 5 uses
  store ptr %i.n, ptr %i.p, align 8, !tbaa !161, !noalias !5199
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 440 ; 4 uses
  store ptr %i.n, ptr %i.q, align 8, !tbaa !162, !noalias !5199
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 448 ; 6 uses
  store i64 0, ptr %i.r, align 8, !tbaa !163, !noalias !5199
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33, !noalias !5199
  invoke void @_ZN8facebook5velox4core12TypeAnalysisIfE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %bb.c unwind label %bb.au

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33, !noalias !5199
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33, !noalias !5199
  call void @llvm.experimental.noalias.scope.decl(metadata !5202)
  call void @llvm.experimental.noalias.scope.decl(metadata !5205)
  call void @llvm.experimental.noalias.scope.decl(metadata !5208)
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 12 uses
  store ptr %i.s, ptr %13, align 8, !tbaa !173, !alias.scope !5211, !noalias !5199
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i64 0, ptr %i.t, align 8, !tbaa !16, !alias.scope !5211, !noalias !5199
  store i8 0, ptr %i.s, align 8, !tbaa !28, !alias.scope !5211, !noalias !5199
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !5212 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !noalias !5212 ; 2 uses
  %i.y = icmp ugt ptr %i.v, %i.x
  %.08.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.y, ptr %i.v, ptr %i.x ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !180, !noalias !5212 ; 2 uses
  %i.ab = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef %i.aa, i64 noundef %i.ad)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %13, align 8, !tbaa !7, !alias.scope !5211, !noalias !5199 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.s
  br i1 %i.ah, label %.body.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.i.sink.split

bb.f:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e

_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33, !noalias !5199
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 400 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24, !noalias !5199 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.m, align 8, !tbaa !27, !noalias !5199
  store <2 x ptr> %i.am, ptr %14, align 16, !tbaa !27, !noalias !5199
  %.not.i.i.i25.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i25.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !5199
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
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33, !noalias !5199
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false), !noalias !5199
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33, !noalias !5199
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.as, ptr %7, align 8, !tbaa !173, !noalias !5199
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !16, !noalias !5199
  store i8 0, ptr %i.as, align 8, !tbaa !28, !noalias !5199
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i unwind label %bb.j

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.av = load ptr, ptr %7, align 8, !tbaa !7, !noalias !5199 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.as
  br i1 %i.aw, label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i
  %i.ax = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !5199
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #35
  br label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %7, align 8, !tbaa !7, !noalias !5199 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.as
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !5199
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !5199
  br label %.body29.i.i.i.i.i.i.i

_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !5199
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33, !noalias !5199
  invoke void @_ZN8facebook5velox4core12TypeAnalysisIfE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.av

.noexc.i.i.i.i.i.i.i:                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33, !noalias !5199
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33, !noalias !5199
  call void @llvm.experimental.noalias.scope.decl(metadata !5213)
  call void @llvm.experimental.noalias.scope.decl(metadata !5216)
  call void @llvm.experimental.noalias.scope.decl(metadata !5219)
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  store ptr %i.be, ptr %9, align 8, !tbaa !173, !alias.scope !5222, !noalias !5199
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 0, ptr %i.bf, align 8, !tbaa !16, !alias.scope !5222, !noalias !5199
  store i8 0, ptr %i.be, align 8, !tbaa !28, !alias.scope !5222, !noalias !5199
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !5223 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  %i.bh = load ptr, ptr %i.w, align 8, !noalias !5223 ; 2 uses
  %i.bi = icmp ugt ptr %i.bg, %i.bh
  %.08.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bi, ptr %i.bg, ptr %i.bh ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i26.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i26.i.i.i.i.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !180, !noalias !5223 ; 2 uses
  %i.bl = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.bk, i64 noundef %i.bn)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %9, align 8, !tbaa !7, !alias.scope !5222, !noalias !5199 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.be
  br i1 %i.br, label %.body29.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.bs = load i64, ptr %i.be, align 8, !tbaa !28, !alias.scope !5222, !noalias !5199
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #35
  br label %.body29.i.i.i.i.i.i.i

bb.m:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.bu)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l
end_hunk_19
begin_hunk_20_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a

bb.et:                                            ; preds = %bb.er
  %i.azw = load ptr, ptr %i.azd, align 8, !tbaa !720, !noalias !5431
  %i.azx = shl nsw i64 %i.azi, 2
  %i.azy = getelementptr inbounds i8, ptr %i.azw, i64 %i.azx
  %i.azz = load i32, ptr %i.azy, align 4, !tbaa !3, !noalias !5431
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i76.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit24.i76.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.et, %bb.es, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i74.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i15.i77.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.azz, %bb.et ], [ %i.azv, %bb.es ], [ %i.azh, %_ZNK8facebook5velox4exec12VectorReaderIfEixEm.exit.i74.i.i.i.i.i.i.i.i.i.i.i ]
  %i.baa = sext i32 %.0.i.i.i15.i77.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bab = getelementptr inbounds [4 x i8], ptr %i.ayy, i64 %i.baa
  %i.bac = load float, ptr %i.bab, align 4, !tbaa !1051, !noalias !5431
  %i.bad = fdiv float %i.azs, %i.bac
  %i.bae = getelementptr inbounds [4 x i8], ptr %.sink.i.i, i64 %i.azi
  store float %i.bad, ptr %i.bae, align 4, !tbaa !1051
  %i.baf = add nsw i64 %.034.i73.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.bag = and i64 %i.baf, %.034.i73.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i78.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bag, 0
  br i1 %.not10.i78.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit, label %bb.en, !llvm.loop !5394

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i76.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i71, %_ZN8facebook5velox6StatusD2Ev.exit18.i.i.i.i.i.i.i.i74, %_ZN8facebook5velox6StatusD2Ev.exit20.i72.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i.i.i.i.i.i.i.i.i.i43.i.i, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i47.i.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i47.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i70.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit21.i70.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit21.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit15.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN8facebook5velox6StatusD2Ev.exit15.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit24.i73.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit18.i.i.i.i.i.i.i.i, %middle.block404, %middle.block446, %vec.epilog.middle.block, %middle.block498, %vec.epilog.middle.block515, %middle.block562, %vec.epilog.middle.block578, %bb.z, %bb.aa, %bb.ac, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, %bb.ag, %bb.ao, %bb.ap, %bb.ar, %._crit_edge.i.i.i.i.i.i.i.i.i26.i.i, %bb.av, %bb.bf, %bb.bg, %bb.bi, %._crit_edge.i.i.i.i.i.i.i.i.i.i43.i, %bb.bm, %bb.bu, %bb.bv, %bb.bx, %._crit_edge.i.i.i.i.i.i.i.i.i29.i.i, %bb.cb, %bb.cy, %bb.dg, %bb.di, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i63, %bb.em
  br i1 %.136125, label %bb.eu, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

bb.eu:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit
  %i.bah = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bai = load <2 x ptr>, ptr %.134127, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.134127, i8 0, i64 16, i1 false)
  %i.baj = load ptr, ptr %i.bah, align 8, !tbaa !24 ; 8 uses
  store <2 x ptr> %i.bai, ptr %5, align 8, !tbaa !27
  %.not.i.i.i.i104 = icmp eq ptr %i.baj, null
  br i1 %.not.i.i.i.i104, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.bak = getelementptr inbounds nuw i8, ptr %i.baj, i64 8 ; 4 uses
  %i.bal = load atomic i64, ptr %i.bak acquire, align 8 ; 2 uses
  %i.bam = icmp eq i64 %i.bal, 4294967297
  %i.ban = trunc i64 %i.bal to i32                ; 2 uses
  br i1 %i.bam, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  store i32 0, ptr %i.bak, align 8, !tbaa !33
  %i.bao = getelementptr inbounds nuw i8, ptr %i.baj, i64 12
  store i32 0, ptr %i.bao, align 4, !tbaa !35
  %i.bap = load ptr, ptr %i.baj, align 8, !tbaa !36
  %i.baq = getelementptr inbounds nuw i8, ptr %i.bap, i64 16
  %i.bar = load ptr, ptr %i.baq, align 8
  call void %i.bar(ptr noundef nonnull align 8 dereferenceable(16) %i.baj) #33, !inline_history !739
  %i.bas = load ptr, ptr %i.baj, align 8, !tbaa !36
  %i.bat = getelementptr inbounds nuw i8, ptr %i.bas, i64 24
  %i.bau = load ptr, ptr %i.bat, align 8
  call void %i.bau(ptr noundef nonnull align 8 dereferenceable(16) %i.baj) #33, !inline_history !739
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

bb.ex:                                            ; preds = %bb.ev
  %i.bav = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i105 = icmp eq i8 %i.bav, 0
  br i1 %.not.i.i.i.i.i105, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.baw = add nsw i32 %i.ban, -1
  store i32 %i.baw, ptr %i.bak, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ez:                                            ; preds = %bb.ex
  %i.bax = atomicrmw volatile add ptr %i.bak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ez, %bb.ey
  %.0.i.i.i.i.i.i = phi i32 [ %i.ban, %bb.ey ], [ %i.bax, %bb.ez ]
  %i.bay = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bay, label %bb.fa, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, !prof !39

bb.fa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.baj) #33
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit: ; preds = %bb.fa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ew, %bb.eu, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit
  %i.baz = load ptr, ptr %8, align 8, !tbaa !696  ; 3 uses
  %i.bba = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bbb = load ptr, ptr %i.bba, align 8, !tbaa !707 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.baz, %i.bbb
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bbf, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i ], [ %i.baz, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %i.bbc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.bbd = load i8, ptr %i.bbc, align 8, !tbaa !699, !range !235, !noundef !236
  %i.bbe = trunc nuw i8 %i.bbd to i1
  store i8 0, ptr %i.bbc, align 8, !tbaa !699
  br i1 %i.bbe, label %bb.fb, label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

bb.fb:                                            ; preds = %.lr.ph.i.i.i
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %.05.i.i.i) #33
  br label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i: ; preds = %bb.fb, %.lr.ph.i.i.i
  %i.bbf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i106 = icmp eq ptr %i.bbf, %i.bbb
  br i1 %.not.i.i.i106, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !740

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !696
  br label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit
  %i.bbg = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.baz, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bbg, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit, label %bb.fc

bb.fc:                                            ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bbh = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bbi = load ptr, ptr %i.bbh, align 8, !tbaa !741
  %i.bbj = ptrtoint ptr %i.bbi to i64
  %i.bbk = ptrtoint ptr %i.bbg to i64
  %i.bbl = sub i64 %i.bbj, %i.bbk
  call void @_ZdlPvm(ptr noundef nonnull %i.bbg, i64 noundef %i.bbl) #35
  br label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit

_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  ret void

.body:                                            ; preds = %bb.cc, %common.resume.i
  %.pn.pn.pn = phi { ptr, i32 } [ %common.resume.op.i, %common.resume.i ], [ %i.ahe, %bb.cc ]
  call void @_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE27supportsFlatNoNullsFastPathEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE34ensureStringEncodingSetAtAllInputsEv(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE36propagateStringEncodingFromAllInputsEv(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_114DivideFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJffEEEJffEEEE16getCanonicalNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress noreturn uwtable
define internal void @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_122IntervalDivideFunctionINS0_4exec10VectorExecEEENS0_15IntervalDayTimeENS0_15ConstantCheckerIJS9_dEEEJS9_dEE7getNameB5cxx11Ev(ptr dead_on_unwind noalias nofree readnone sret(%"class.std::__cxx11::basic_string") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.34)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #33
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZSt11make_sharedIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_122IntervalDivideFunctionINS1_4exec10VectorExecEEENS1_15IntervalDayTimeENS1_15ConstantCheckerIJSA_dEEEJSA_dEEEJRbRKSt6vectorINS7_17SignatureVariableESaISH_EEEESt10shared_ptrIT_EDpOT0_(i8 %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.facebook::velox::exec::FunctionSignatureBuilder", align 8 ; 16 uses
  %2 = alloca %"class.std::shared_ptr.15", align 16 ; 7 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"struct.facebook::velox::core::TypeAnalysis", align 1 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"struct.facebook::velox::core::TypeAnalysis.1121", align 1 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::vector", align 16     ; 13 uses
  %11 = alloca %"struct.facebook::velox::core::TypeAnalysisResults", align 8 ; 31 uses
  %12 = alloca %"struct.facebook::velox::core::TypeAnalysis.1121", align 1 ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::shared_ptr.18", align 16 ; 7 uses
  %15 = alloca %"class.std::vector.21", align 8   ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"struct.facebook::velox::core::SimpleFunctionMetadata<facebook::velox::functions::(anonymous namespace)::IntervalDivideFunction<facebook::velox::exec::VectorExec>, facebook::velox::IntervalDayTime, facebook::velox::ConstantChecker<facebook::velox::IntervalDayTime, double>, facebook::velox::IntervalDayTime, double>::SignatureTypesAnalysisResults", align 16 ; 31 uses
  store ptr null, ptr @_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_122IntervalDivideFunctionINS1_10VectorExecEEENS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_dEEEJSA_dEEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISL_EEE8instance, align 16, !tbaa !5434
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #34, !noalias !5437 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !35
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_122IntervalDivideFunctionINS1_4exec10VectorExecEEENS1_15IntervalDayTimeENS1_15ConstantCheckerIJSA_dEEEJSA_dEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_122IntervalDivideFunctionINS0_4exec10VectorExecEEENS0_15IntervalDayTimeENS0_15ConstantCheckerIJS9_dEEEJS9_dEEE, i64 16), ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %.0.val, ptr %i.e, align 8, !tbaa !5440
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5442)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33, !noalias !5442
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !5442
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33, !noalias !5442
  store i8 0, ptr %11, align 8, !tbaa !150, !noalias !5442
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 1
  store i8 0, ptr %i.i, align 1, !tbaa !152, !noalias !5442
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 2
  store i8 0, ptr %i.j, align 2, !tbaa !153, !noalias !5442
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !154, !noalias !5442
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.l)
          to label %bb.b unwind label %bb.at, !noalias !5442

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 392 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !noalias !5442
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 416 ; 10 uses
  store i32 0, ptr %i.n, align 8, !tbaa !155, !noalias !5442
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 424 ; 5 uses
  store ptr null, ptr %i.o, align 8, !tbaa !160, !noalias !5442
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 432 ; 5 uses
  store ptr %i.n, ptr %i.p, align 8, !tbaa !161, !noalias !5442
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 440 ; 4 uses
  store ptr %i.n, ptr %i.q, align 8, !tbaa !162, !noalias !5442
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 448 ; 6 uses
  store i64 0, ptr %i.r, align 8, !tbaa !163, !noalias !5442
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33, !noalias !5442
  invoke void @_ZN8facebook5velox4core12TypeAnalysisINS0_15IntervalDayTimeEE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %bb.c unwind label %bb.au

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33, !noalias !5442
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33, !noalias !5442
  call void @llvm.experimental.noalias.scope.decl(metadata !5445)
  call void @llvm.experimental.noalias.scope.decl(metadata !5448)
  call void @llvm.experimental.noalias.scope.decl(metadata !5451)
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 12 uses
  store ptr %i.s, ptr %13, align 8, !tbaa !173, !alias.scope !5454, !noalias !5442
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i64 0, ptr %i.t, align 8, !tbaa !16, !alias.scope !5454, !noalias !5442
  store i8 0, ptr %i.s, align 8, !tbaa !28, !alias.scope !5454, !noalias !5442
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !5455 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !noalias !5455 ; 2 uses
  %i.y = icmp ugt ptr %i.v, %i.x
  %.08.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.y, ptr %i.v, ptr %i.x ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !180, !noalias !5455 ; 2 uses
  %i.ab = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef %i.aa, i64 noundef %i.ad)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %13, align 8, !tbaa !7, !alias.scope !5454, !noalias !5442 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.s
  br i1 %i.ah, label %.body.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.i.sink.split

bb.f:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e

_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33, !noalias !5442
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 400 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24, !noalias !5442 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.m, align 8, !tbaa !27, !noalias !5442
  store <2 x ptr> %i.am, ptr %14, align 16, !tbaa !27, !noalias !5442
  %.not.i.i.i25.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i25.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !5442
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
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33, !noalias !5442
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false), !noalias !5442
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33, !noalias !5442
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.as, ptr %7, align 8, !tbaa !173, !noalias !5442
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !16, !noalias !5442
  store i8 0, ptr %i.as, align 8, !tbaa !28, !noalias !5442
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i unwind label %bb.j

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.av = load ptr, ptr %7, align 8, !tbaa !7, !noalias !5442 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.as
  br i1 %i.aw, label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i
  %i.ax = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !5442
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #35
  br label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %7, align 8, !tbaa !7, !noalias !5442 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.as
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !5442
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !5442
  br label %.body29.i.i.i.i.i.i.i

_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !5442
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33, !noalias !5442
  invoke void @_ZN8facebook5velox4core12TypeAnalysisINS0_15IntervalDayTimeEE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.av

.noexc.i.i.i.i.i.i.i:                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33, !noalias !5442
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33, !noalias !5442
  call void @llvm.experimental.noalias.scope.decl(metadata !5456)
  call void @llvm.experimental.noalias.scope.decl(metadata !5459)
  call void @llvm.experimental.noalias.scope.decl(metadata !5462)
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  store ptr %i.be, ptr %9, align 8, !tbaa !173, !alias.scope !5465, !noalias !5442
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 0, ptr %i.bf, align 8, !tbaa !16, !alias.scope !5465, !noalias !5442
  store i8 0, ptr %i.be, align 8, !tbaa !28, !alias.scope !5465, !noalias !5442
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !5466 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  %i.bh = load ptr, ptr %i.w, align 8, !noalias !5466 ; 2 uses
  %i.bi = icmp ugt ptr %i.bg, %i.bh
  %.08.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bi, ptr %i.bg, ptr %i.bh ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i26.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i26.i.i.i.i.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !180, !noalias !5466 ; 2 uses
  %i.bl = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.bk, i64 noundef %i.bn)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %9, align 8, !tbaa !7, !alias.scope !5465, !noalias !5442 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.be
  br i1 %i.br, label %.body29.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.bs = load i64, ptr %i.be, align 8, !tbaa !28, !alias.scope !5465, !noalias !5442
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #35
  br label %.body29.i.i.i.i.i.i.i

bb.m:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.bu)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l
end_hunk_20
begin_hunk_21_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122IntervalDivideFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_dEEEJSA_dEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EERKSJ_IKNS0_4TypeEERNS1_7EvalCtxERSL_:bb.a
  %i.biw = and i1 %i.biv, %or.cond.i.i.not.i85.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.biw, label %bb.hr, label %bb.hs, !prof !285

bb.hr:                                            ; preds = %bb.hq
  %i.bix = fptosi double %i.bir to i64
  br label %_ZN8facebook5velox6StatusD2Ev.exit25.i86.i.i.i.i.i.i.i.i.i.i.i

bb.hs:                                            ; preds = %bb.hq
  %i.biy = fcmp ogt double %i.bir, 0.000000e+00
  %i.biz = select i1 %i.biy, i64 9223372036854775807, i64 -9223372036854775808
  br label %_ZN8facebook5velox6StatusD2Ev.exit25.i86.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit25.i86.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hs, %bb.hr, %.noexc14.i82.i.i.i.i.i.i.i.i.i.i.i
  %storemerge16.i.i.i87.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.noexc14.i82.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bix, %bb.hr ], [ %i.biz, %bb.hs ]
  %i.bja = getelementptr inbounds [8 x i8], ptr %.sink.i.i, i64 %i.bhs
  store i64 %storemerge16.i.i.i87.i.i.i.i.i.i.i.i.i.i.i, ptr %i.bja, align 8, !tbaa !209
  %i.bjb = add nsw i64 %.039.i79.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.bjc = and i64 %i.bjb, %.039.i79.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i88.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bjc, 0
  br i1 %.not10.i88.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122IntervalDivideFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_dEEEJSA_dEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit, label %bb.hj, !llvm.loop !5630

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122IntervalDivideFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_dEEEJSA_dEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit25.i86.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit25.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit19.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i70.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit21.i70.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit21.i70.us.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit21.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit21.i.us.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit15.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit22.i68.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit22.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit16.i.i.i.i.i.i.i.i, %.preheader.i62.split.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit25.i73.us.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.split.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit25.i.us.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.split.i.i.i.i.i.i.i, %middle.block441, %middle.block478, %middle.block516, %middle.block586, %vec.epilog.middle.block602, %bb.v, %bb.w, %bb.y, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, %bb.ac, %bb.ak, %bb.ao, %bb.aq, %._crit_edge.i.i.i.i.i.i.i.i.i27.i.i, %bb.bi, %bb.bw, %bb.ca, %bb.cc, %._crit_edge.i.i.i.i.i.i.i.i.i.i36.i, %bb.cs, %bb.dd, %bb.dh, %bb.dj, %._crit_edge.i.i.i.i.i.i.i.i.i28.i.i, %bb.ec, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122IntervalDivideFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_dEEEJSA_dEEEE31unpackSpecializeForAllEncodingsILi1EJNS1_20ConstantVectorReaderISA_EEEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISN_EEDpRT0_.exit.sink.split.i, %bb.fd, %bb.fo, %bb.fq, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i66, %bb.hi
  br i1 %.136126, label %bb.ht, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

bb.ht:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122IntervalDivideFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_dEEEJSA_dEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit
  %i.bjd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bje = load <2 x ptr>, ptr %.134128, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.134128, i8 0, i64 16, i1 false)
  %i.bjf = load ptr, ptr %i.bjd, align 8, !tbaa !24 ; 8 uses
  store <2 x ptr> %i.bje, ptr %5, align 8, !tbaa !27
  %.not.i.i.i.i110 = icmp eq ptr %i.bjf, null
  br i1 %.not.i.i.i.i110, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.bjg = getelementptr inbounds nuw i8, ptr %i.bjf, i64 8 ; 4 uses
  %i.bjh = load atomic i64, ptr %i.bjg acquire, align 8 ; 2 uses
  %i.bji = icmp eq i64 %i.bjh, 4294967297
  %i.bjj = trunc i64 %i.bjh to i32                ; 2 uses
  br i1 %i.bji, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %bb.hu
  store i32 0, ptr %i.bjg, align 8, !tbaa !33
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bjf, i64 12
  store i32 0, ptr %i.bjk, align 4, !tbaa !35
  %i.bjl = load ptr, ptr %i.bjf, align 8, !tbaa !36
  %i.bjm = getelementptr inbounds nuw i8, ptr %i.bjl, i64 16
  %i.bjn = load ptr, ptr %i.bjm, align 8
  call void %i.bjn(ptr noundef nonnull align 8 dereferenceable(16) %i.bjf) #33, !inline_history !739
  %i.bjo = load ptr, ptr %i.bjf, align 8, !tbaa !36
  %i.bjp = getelementptr inbounds nuw i8, ptr %i.bjo, i64 24
  %i.bjq = load ptr, ptr %i.bjp, align 8
  call void %i.bjq(ptr noundef nonnull align 8 dereferenceable(16) %i.bjf) #33, !inline_history !739
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

bb.hw:                                            ; preds = %bb.hu
  %i.bjr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i = icmp eq i8 %i.bjr, 0
  br i1 %.not.i.i.i.i.i, label %bb.hy, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.bjs = add nsw i32 %i.bjj, -1
  store i32 %i.bjs, ptr %i.bjg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.hy:                                            ; preds = %bb.hw
  %i.bjt = atomicrmw volatile add ptr %i.bjg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.hy, %bb.hx
  %.0.i.i.i.i.i.i = phi i32 [ %i.bjj, %bb.hx ], [ %i.bjt, %bb.hy ]
  %i.bju = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bju, label %bb.hz, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, !prof !39

bb.hz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bjf) #33
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit: ; preds = %bb.hz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.hv, %bb.ht, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122IntervalDivideFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_dEEEJSA_dEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit
  %i.bjv = load ptr, ptr %8, align 8, !tbaa !696  ; 3 uses
  %i.bjw = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bjx = load ptr, ptr %i.bjw, align 8, !tbaa !707 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bjv, %i.bjx
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bkb, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i ], [ %i.bjv, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %i.bjy = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.bjz = load i8, ptr %i.bjy, align 8, !tbaa !699, !range !235, !noundef !236
  %i.bka = trunc nuw i8 %i.bjz to i1
  store i8 0, ptr %i.bjy, align 8, !tbaa !699
  br i1 %i.bka, label %bb.ia, label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

bb.ia:                                            ; preds = %.lr.ph.i.i.i
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %.05.i.i.i) #33
  br label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i: ; preds = %bb.ia, %.lr.ph.i.i.i
  %i.bkb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i111 = icmp eq ptr %i.bkb, %i.bjx
  br i1 %.not.i.i.i111, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !740

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !696
  br label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit
  %i.bkc = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bjv, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bkc, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit, label %bb.ib

bb.ib:                                            ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bkd = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bke = load ptr, ptr %i.bkd, align 8, !tbaa !741
  %i.bkf = ptrtoint ptr %i.bke to i64
  %i.bkg = ptrtoint ptr %i.bkc to i64
  %i.bkh = sub i64 %i.bkf, %i.bkg
  call void @_ZdlPvm(ptr noundef nonnull %i.bkc, i64 noundef %i.bkh) #35
  br label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit

_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, %bb.ib
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  ret void

.body:                                            ; preds = %bb.eh, %common.resume.i
  %.pn.pn.pn = phi { ptr, i32 } [ %common.resume.op.i, %common.resume.i ], [ %i.aqz, %bb.eh ]
  call void @_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122IntervalDivideFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_dEEEJSA_dEEEE27supportsFlatNoNullsFastPathEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122IntervalDivideFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_dEEEJSA_dEEEE34ensureStringEncodingSetAtAllInputsEv(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122IntervalDivideFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_dEEEJSA_dEEEE36propagateStringEncodingFromAllInputsEv(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122IntervalDivideFunctionINS1_10VectorExecEEES8_NS0_15IntervalDayTimeENS0_15ConstantCheckerIJSA_dEEEJSA_dEEEE16getCanonicalNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress noreturn uwtable
define internal void @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_122IntervalDivideFunctionINS0_4exec10VectorExecEEENS0_17IntervalYearMonthENS0_15ConstantCheckerIJS9_dEEEJS9_dEE7getNameB5cxx11Ev(ptr dead_on_unwind noalias nofree readnone sret(%"class.std::__cxx11::basic_string") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.34)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #33
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZSt11make_sharedIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_122IntervalDivideFunctionINS1_4exec10VectorExecEEENS1_17IntervalYearMonthENS1_15ConstantCheckerIJSA_dEEEJSA_dEEEJRbRKSt6vectorINS7_17SignatureVariableESaISH_EEEESt10shared_ptrIT_EDpOT0_(i8 %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.facebook::velox::exec::FunctionSignatureBuilder", align 8 ; 16 uses
  %2 = alloca %"class.std::shared_ptr.15", align 16 ; 7 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"struct.facebook::velox::core::TypeAnalysis", align 1 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"struct.facebook::velox::core::TypeAnalysis.1317", align 1 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::vector", align 16     ; 13 uses
  %11 = alloca %"struct.facebook::velox::core::TypeAnalysisResults", align 8 ; 31 uses
  %12 = alloca %"struct.facebook::velox::core::TypeAnalysis.1317", align 1 ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::shared_ptr.18", align 16 ; 7 uses
  %15 = alloca %"class.std::vector.21", align 8   ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"struct.facebook::velox::core::SimpleFunctionMetadata<facebook::velox::functions::(anonymous namespace)::IntervalDivideFunction<facebook::velox::exec::VectorExec>, facebook::velox::IntervalYearMonth, facebook::velox::ConstantChecker<facebook::velox::IntervalYearMonth, double>, facebook::velox::IntervalYearMonth, double>::SignatureTypesAnalysisResults", align 16 ; 31 uses
  store ptr null, ptr @_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_122IntervalDivideFunctionINS1_10VectorExecEEENS0_17IntervalYearMonthENS0_15ConstantCheckerIJSA_dEEEJSA_dEEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISL_EEE8instance, align 16, !tbaa !5646
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #34, !noalias !5649 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !35
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_122IntervalDivideFunctionINS1_4exec10VectorExecEEENS1_17IntervalYearMonthENS1_15ConstantCheckerIJSA_dEEEJSA_dEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_122IntervalDivideFunctionINS0_4exec10VectorExecEEENS0_17IntervalYearMonthENS0_15ConstantCheckerIJS9_dEEEJS9_dEEE, i64 16), ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %.0.val, ptr %i.e, align 8, !tbaa !5652
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5654)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33, !noalias !5654
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !5654
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33, !noalias !5654
  store i8 0, ptr %11, align 8, !tbaa !150, !noalias !5654
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 1
  store i8 0, ptr %i.i, align 1, !tbaa !152, !noalias !5654
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 2
  store i8 0, ptr %i.j, align 2, !tbaa !153, !noalias !5654
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !154, !noalias !5654
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.l)
          to label %bb.b unwind label %bb.at, !noalias !5654

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 392 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !noalias !5654
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 416 ; 10 uses
  store i32 0, ptr %i.n, align 8, !tbaa !155, !noalias !5654
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 424 ; 5 uses
  store ptr null, ptr %i.o, align 8, !tbaa !160, !noalias !5654
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 432 ; 5 uses
  store ptr %i.n, ptr %i.p, align 8, !tbaa !161, !noalias !5654
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 440 ; 4 uses
  store ptr %i.n, ptr %i.q, align 8, !tbaa !162, !noalias !5654
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 448 ; 6 uses
  store i64 0, ptr %i.r, align 8, !tbaa !163, !noalias !5654
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33, !noalias !5654
  invoke void @_ZN8facebook5velox4core12TypeAnalysisINS0_17IntervalYearMonthEE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %bb.c unwind label %bb.au

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33, !noalias !5654
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33, !noalias !5654
  call void @llvm.experimental.noalias.scope.decl(metadata !5657)
  call void @llvm.experimental.noalias.scope.decl(metadata !5660)
  call void @llvm.experimental.noalias.scope.decl(metadata !5663)
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 12 uses
  store ptr %i.s, ptr %13, align 8, !tbaa !173, !alias.scope !5666, !noalias !5654
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i64 0, ptr %i.t, align 8, !tbaa !16, !alias.scope !5666, !noalias !5654
  store i8 0, ptr %i.s, align 8, !tbaa !28, !alias.scope !5666, !noalias !5654
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !5667 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !noalias !5667 ; 2 uses
  %i.y = icmp ugt ptr %i.v, %i.x
  %.08.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.y, ptr %i.v, ptr %i.x ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !180, !noalias !5667 ; 2 uses
  %i.ab = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef %i.aa, i64 noundef %i.ad)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %13, align 8, !tbaa !7, !alias.scope !5666, !noalias !5654 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.s
  br i1 %i.ah, label %.body.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.i.sink.split

bb.f:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e

_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33, !noalias !5654
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 400 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24, !noalias !5654 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.m, align 8, !tbaa !27, !noalias !5654
  store <2 x ptr> %i.am, ptr %14, align 16, !tbaa !27, !noalias !5654
  %.not.i.i.i25.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i25.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !5654
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
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33, !noalias !5654
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false), !noalias !5654
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33, !noalias !5654
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.as, ptr %7, align 8, !tbaa !173, !noalias !5654
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !16, !noalias !5654
  store i8 0, ptr %i.as, align 8, !tbaa !28, !noalias !5654
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i unwind label %bb.j

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.av = load ptr, ptr %7, align 8, !tbaa !7, !noalias !5654 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.as
  br i1 %i.aw, label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i
  %i.ax = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !5654
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #35
  br label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %7, align 8, !tbaa !7, !noalias !5654 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.as
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !5654
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !5654
  br label %.body29.i.i.i.i.i.i.i

_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !5654
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33, !noalias !5654
  invoke void @_ZN8facebook5velox4core12TypeAnalysisINS0_17IntervalYearMonthEE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.av

.noexc.i.i.i.i.i.i.i:                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33, !noalias !5654
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33, !noalias !5654
  call void @llvm.experimental.noalias.scope.decl(metadata !5668)
  call void @llvm.experimental.noalias.scope.decl(metadata !5671)
  call void @llvm.experimental.noalias.scope.decl(metadata !5674)
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  store ptr %i.be, ptr %9, align 8, !tbaa !173, !alias.scope !5677, !noalias !5654
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 0, ptr %i.bf, align 8, !tbaa !16, !alias.scope !5677, !noalias !5654
  store i8 0, ptr %i.be, align 8, !tbaa !28, !alias.scope !5677, !noalias !5654
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !5678 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  %i.bh = load ptr, ptr %i.w, align 8, !noalias !5678 ; 2 uses
  %i.bi = icmp ugt ptr %i.bg, %i.bh
  %.08.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bi, ptr %i.bg, ptr %i.bh ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i26.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i26.i.i.i.i.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !180, !noalias !5678 ; 2 uses
  %i.bl = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.bk, i64 noundef %i.bn)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %9, align 8, !tbaa !7, !alias.scope !5677, !noalias !5654 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.be
  br i1 %i.br, label %.body29.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.bs = load i64, ptr %i.be, align 8, !tbaa !28, !alias.scope !5677, !noalias !5654
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #35
  br label %.body29.i.i.i.i.i.i.i

bb.m:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.bu)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l
end_hunk_21
begin_hunk_22_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122IntervalDivideFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJSA_dEEEJSA_dEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EERKSJ_IKNS0_4TypeEERNS1_7EvalCtxERSL_:bb.a
  %i.biw = and i1 %i.biv, %or.cond.i.i.not.i85.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.biw, label %bb.hr, label %bb.hs, !prof !285

bb.hr:                                            ; preds = %bb.hq
  %i.bix = fptosi double %i.bir to i32
  br label %_ZN8facebook5velox6StatusD2Ev.exit25.i86.i.i.i.i.i.i.i.i.i.i.i

bb.hs:                                            ; preds = %bb.hq
  %i.biy = fcmp ogt double %i.bir, 0.000000e+00
  %i.biz = select i1 %i.biy, i32 2147483647, i32 -2147483648
  br label %_ZN8facebook5velox6StatusD2Ev.exit25.i86.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit25.i86.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hs, %bb.hr, %.noexc14.i82.i.i.i.i.i.i.i.i.i.i.i
  %storemerge16.i.i.i87.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ 0, %.noexc14.i82.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bix, %bb.hr ], [ %i.biz, %bb.hs ]
  %i.bja = getelementptr inbounds [4 x i8], ptr %.sink.i.i, i64 %i.bhs
  store i32 %storemerge16.i.i.i87.i.i.i.i.i.i.i.i.i.i.i, ptr %i.bja, align 4, !tbaa !3
  %i.bjb = add nsw i64 %.039.i79.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.bjc = and i64 %i.bjb, %.039.i79.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i88.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bjc, 0
  br i1 %.not10.i88.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122IntervalDivideFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJSA_dEEEJSA_dEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit, label %bb.hj, !llvm.loop !5840

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122IntervalDivideFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJSA_dEEEJSA_dEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit25.i86.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit25.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit19.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i70.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit14.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit21.i70.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit21.i70.us.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit21.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit21.i.us.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit15.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit22.i68.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit22.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit16.i.i.i.i.i.i.i.i, %.preheader.i62.split.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit25.i73.us.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.split.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit25.i.us.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.split.i.i.i.i.i.i.i, %middle.block441, %middle.block478, %middle.block516, %middle.block586, %vec.epilog.middle.block602, %bb.v, %bb.w, %bb.y, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, %bb.ac, %bb.ak, %bb.ao, %bb.aq, %._crit_edge.i.i.i.i.i.i.i.i.i27.i.i, %bb.bi, %bb.bw, %bb.ca, %bb.cc, %._crit_edge.i.i.i.i.i.i.i.i.i.i36.i, %bb.cs, %bb.dd, %bb.dh, %bb.dj, %._crit_edge.i.i.i.i.i.i.i.i.i28.i.i, %bb.ec, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122IntervalDivideFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJSA_dEEEJSA_dEEEE31unpackSpecializeForAllEncodingsILi1EJNS1_20ConstantVectorReaderISA_EEEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISN_EEDpRT0_.exit.sink.split.i, %bb.fd, %bb.fo, %bb.fq, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i66, %bb.hi
  br i1 %.136126, label %bb.ht, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

bb.ht:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122IntervalDivideFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJSA_dEEEJSA_dEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit
  %i.bjd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bje = load <2 x ptr>, ptr %.134128, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.134128, i8 0, i64 16, i1 false)
  %i.bjf = load ptr, ptr %i.bjd, align 8, !tbaa !24 ; 8 uses
  store <2 x ptr> %i.bje, ptr %5, align 8, !tbaa !27
  %.not.i.i.i.i110 = icmp eq ptr %i.bjf, null
  br i1 %.not.i.i.i.i110, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.bjg = getelementptr inbounds nuw i8, ptr %i.bjf, i64 8 ; 4 uses
  %i.bjh = load atomic i64, ptr %i.bjg acquire, align 8 ; 2 uses
  %i.bji = icmp eq i64 %i.bjh, 4294967297
  %i.bjj = trunc i64 %i.bjh to i32                ; 2 uses
  br i1 %i.bji, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %bb.hu
  store i32 0, ptr %i.bjg, align 8, !tbaa !33
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bjf, i64 12
  store i32 0, ptr %i.bjk, align 4, !tbaa !35
  %i.bjl = load ptr, ptr %i.bjf, align 8, !tbaa !36
  %i.bjm = getelementptr inbounds nuw i8, ptr %i.bjl, i64 16
  %i.bjn = load ptr, ptr %i.bjm, align 8
  call void %i.bjn(ptr noundef nonnull align 8 dereferenceable(16) %i.bjf) #33, !inline_history !739
  %i.bjo = load ptr, ptr %i.bjf, align 8, !tbaa !36
  %i.bjp = getelementptr inbounds nuw i8, ptr %i.bjo, i64 24
  %i.bjq = load ptr, ptr %i.bjp, align 8
  call void %i.bjq(ptr noundef nonnull align 8 dereferenceable(16) %i.bjf) #33, !inline_history !739
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

bb.hw:                                            ; preds = %bb.hu
  %i.bjr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i = icmp eq i8 %i.bjr, 0
  br i1 %.not.i.i.i.i.i, label %bb.hy, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.bjs = add nsw i32 %i.bjj, -1
  store i32 %i.bjs, ptr %i.bjg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.hy:                                            ; preds = %bb.hw
  %i.bjt = atomicrmw volatile add ptr %i.bjg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.hy, %bb.hx
  %.0.i.i.i.i.i.i = phi i32 [ %i.bjj, %bb.hx ], [ %i.bjt, %bb.hy ]
  %i.bju = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bju, label %bb.hz, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, !prof !39

bb.hz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bjf) #33
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit: ; preds = %bb.hz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.hv, %bb.ht, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122IntervalDivideFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJSA_dEEEJSA_dEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSE_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISL_EEDpRT0_.exit
  %i.bjv = load ptr, ptr %8, align 8, !tbaa !696  ; 3 uses
  %i.bjw = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bjx = load ptr, ptr %i.bjw, align 8, !tbaa !707 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bjv, %i.bjx
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bkb, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i ], [ %i.bjv, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %i.bjy = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.bjz = load i8, ptr %i.bjy, align 8, !tbaa !699, !range !235, !noundef !236
  %i.bka = trunc nuw i8 %i.bjz to i1
  store i8 0, ptr %i.bjy, align 8, !tbaa !699
  br i1 %i.bka, label %bb.ia, label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

bb.ia:                                            ; preds = %.lr.ph.i.i.i
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %.05.i.i.i) #33
  br label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i: ; preds = %bb.ia, %.lr.ph.i.i.i
  %i.bkb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i111 = icmp eq ptr %i.bkb, %i.bjx
  br i1 %.not.i.i.i111, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !740

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !696
  br label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit
  %i.bkc = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bjv, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bkc, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit, label %bb.ib

bb.ib:                                            ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bkd = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bke = load ptr, ptr %i.bkd, align 8, !tbaa !741
  %i.bkf = ptrtoint ptr %i.bke to i64
  %i.bkg = ptrtoint ptr %i.bkc to i64
  %i.bkh = sub i64 %i.bkf, %i.bkg
  call void @_ZdlPvm(ptr noundef nonnull %i.bkc, i64 noundef %i.bkh) #35
  br label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit

_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, %bb.ib
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  ret void

.body:                                            ; preds = %bb.eh, %common.resume.i
  %.pn.pn.pn = phi { ptr, i32 } [ %common.resume.op.i, %common.resume.i ], [ %i.aqz, %bb.eh ]
  call void @_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122IntervalDivideFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJSA_dEEEJSA_dEEEE27supportsFlatNoNullsFastPathEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122IntervalDivideFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJSA_dEEEJSA_dEEEE34ensureStringEncodingSetAtAllInputsEv(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122IntervalDivideFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJSA_dEEEJSA_dEEEE36propagateStringEncodingFromAllInputsEv(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122IntervalDivideFunctionINS1_10VectorExecEEES8_NS0_17IntervalYearMonthENS0_15ConstantCheckerIJSA_dEEEJSA_dEEEE16getCanonicalNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress noreturn uwtable
define internal void @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_115ModulusFunctionINS0_4exec10VectorExecEEEdNS0_15ConstantCheckerIJddEEEJddEE7getNameB5cxx11Ev(ptr dead_on_unwind noalias nofree readnone sret(%"class.std::__cxx11::basic_string") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.34)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #33
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZSt11make_sharedIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_115ModulusFunctionINS1_4exec10VectorExecEEEdNS1_15ConstantCheckerIJddEEEJddEEEJRbRKSt6vectorINS7_17SignatureVariableESaISG_EEEESt10shared_ptrIT_EDpOT0_(i8 %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.facebook::velox::exec::FunctionSignatureBuilder", align 8 ; 16 uses
  %2 = alloca %"class.std::shared_ptr.15", align 16 ; 7 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"struct.facebook::velox::core::TypeAnalysis", align 1 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"struct.facebook::velox::core::TypeAnalysis", align 1 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::vector", align 16     ; 13 uses
  %11 = alloca %"struct.facebook::velox::core::TypeAnalysisResults", align 8 ; 31 uses
  %12 = alloca %"struct.facebook::velox::core::TypeAnalysis", align 1 ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::shared_ptr.18", align 16 ; 7 uses
  %15 = alloca %"class.std::vector.21", align 8   ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"struct.facebook::velox::core::SimpleFunctionMetadata<facebook::velox::functions::(anonymous namespace)::ModulusFunction<facebook::velox::exec::VectorExec>, double, facebook::velox::ConstantChecker<double, double>, double, double>::SignatureTypesAnalysisResults", align 16 ; 31 uses
  store ptr null, ptr @_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_115ModulusFunctionINS1_10VectorExecEEEdNS0_15ConstantCheckerIJddEEEJddEEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISK_EEE8instance, align 16, !tbaa !5856
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #34, !noalias !5859 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !35
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_115ModulusFunctionINS1_4exec10VectorExecEEEdNS1_15ConstantCheckerIJddEEEJddEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_115ModulusFunctionINS0_4exec10VectorExecEEEdNS0_15ConstantCheckerIJddEEEJddEEE, i64 16), ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %.0.val, ptr %i.e, align 8, !tbaa !5862
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5864)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33, !noalias !5864
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !5864
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33, !noalias !5864
  store i8 0, ptr %11, align 8, !tbaa !150, !noalias !5864
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 1
  store i8 0, ptr %i.i, align 1, !tbaa !152, !noalias !5864
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 2
  store i8 0, ptr %i.j, align 2, !tbaa !153, !noalias !5864
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !154, !noalias !5864
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.l)
          to label %bb.b unwind label %bb.at, !noalias !5864

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 392 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !noalias !5864
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 416 ; 10 uses
  store i32 0, ptr %i.n, align 8, !tbaa !155, !noalias !5864
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 424 ; 5 uses
  store ptr null, ptr %i.o, align 8, !tbaa !160, !noalias !5864
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 432 ; 5 uses
  store ptr %i.n, ptr %i.p, align 8, !tbaa !161, !noalias !5864
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 440 ; 4 uses
  store ptr %i.n, ptr %i.q, align 8, !tbaa !162, !noalias !5864
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 448 ; 6 uses
  store i64 0, ptr %i.r, align 8, !tbaa !163, !noalias !5864
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33, !noalias !5864
  invoke void @_ZN8facebook5velox4core12TypeAnalysisIdE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %bb.c unwind label %bb.au

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33, !noalias !5864
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33, !noalias !5864
  call void @llvm.experimental.noalias.scope.decl(metadata !5867)
  call void @llvm.experimental.noalias.scope.decl(metadata !5870)
  call void @llvm.experimental.noalias.scope.decl(metadata !5873)
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 12 uses
  store ptr %i.s, ptr %13, align 8, !tbaa !173, !alias.scope !5876, !noalias !5864
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i64 0, ptr %i.t, align 8, !tbaa !16, !alias.scope !5876, !noalias !5864
  store i8 0, ptr %i.s, align 8, !tbaa !28, !alias.scope !5876, !noalias !5864
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !5877 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !noalias !5877 ; 2 uses
  %i.y = icmp ugt ptr %i.v, %i.x
  %.08.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.y, ptr %i.v, ptr %i.x ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !180, !noalias !5877 ; 2 uses
  %i.ab = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef %i.aa, i64 noundef %i.ad)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %13, align 8, !tbaa !7, !alias.scope !5876, !noalias !5864 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.s
  br i1 %i.ah, label %.body.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.i.sink.split

bb.f:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e

_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33, !noalias !5864
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 400 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24, !noalias !5864 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.m, align 8, !tbaa !27, !noalias !5864
  store <2 x ptr> %i.am, ptr %14, align 16, !tbaa !27, !noalias !5864
  %.not.i.i.i25.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i25.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !5864
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
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33, !noalias !5864
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false), !noalias !5864
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33, !noalias !5864
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.as, ptr %7, align 8, !tbaa !173, !noalias !5864
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !16, !noalias !5864
  store i8 0, ptr %i.as, align 8, !tbaa !28, !noalias !5864
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i unwind label %bb.j

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.av = load ptr, ptr %7, align 8, !tbaa !7, !noalias !5864 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.as
  br i1 %i.aw, label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i
  %i.ax = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !5864
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #35
  br label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %7, align 8, !tbaa !7, !noalias !5864 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.as
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !5864
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !5864
  br label %.body29.i.i.i.i.i.i.i

_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !5864
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33, !noalias !5864
  invoke void @_ZN8facebook5velox4core12TypeAnalysisIdE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.av

.noexc.i.i.i.i.i.i.i:                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33, !noalias !5864
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33, !noalias !5864
  call void @llvm.experimental.noalias.scope.decl(metadata !5878)
  call void @llvm.experimental.noalias.scope.decl(metadata !5881)
  call void @llvm.experimental.noalias.scope.decl(metadata !5884)
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  store ptr %i.be, ptr %9, align 8, !tbaa !173, !alias.scope !5887, !noalias !5864
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 0, ptr %i.bf, align 8, !tbaa !16, !alias.scope !5887, !noalias !5864
  store i8 0, ptr %i.be, align 8, !tbaa !28, !alias.scope !5887, !noalias !5864
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !5888 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  %i.bh = load ptr, ptr %i.w, align 8, !noalias !5888 ; 2 uses
  %i.bi = icmp ugt ptr %i.bg, %i.bh
  %.08.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bi, ptr %i.bg, ptr %i.bh ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i26.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i26.i.i.i.i.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !180, !noalias !5888 ; 2 uses
  %i.bl = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.bk, i64 noundef %i.bn)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %9, align 8, !tbaa !7, !alias.scope !5887, !noalias !5864 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.be
  br i1 %i.br, label %.body29.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.bs = load i64, ptr %i.be, align 8, !tbaa !28, !alias.scope !5887, !noalias !5864
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #35
  br label %.body29.i.i.i.i.i.i.i

bb.m:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.bu)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l
end_hunk_22
begin_hunk_23_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_115ModulusFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  %i.arf = getelementptr inbounds [8 x i8], ptr %i.aqc, i64 %i.are
  %i.arg = load double, ptr %i.arf, align 8, !tbaa !561 ; 2 uses
  %i.arh = fcmp oeq double %i.arg, 0.000000e+00
  br i1 %i.arh, label %_ZN8facebook5velox6StatusD2Ev.exit26.i81.i.i.i.i.i.i.i.i.i.i.i, label %bb.gl

bb.gl:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_115ModulusFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE14doApplyNotNullILm1EKNS1_12VectorReaderIdEEJdETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRdRbRT0_DpRKT1_.exit.i79.i.i.i.i.i.i.i.i.i.i.i
  %i.ari = call double @fmod(double noundef %i.aqw, double noundef %i.arg) #33, !tbaa !3, !noalias !6133
  br label %_ZN8facebook5velox6StatusD2Ev.exit26.i81.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit26.i81.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.gl, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_115ModulusFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE14doApplyNotNullILm1EKNS1_12VectorReaderIdEEJdETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRdRbRT0_DpRKT1_.exit.i79.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i82.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.ari, %bb.gl ], [ +qnan, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_115ModulusFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE14doApplyNotNullILm1EKNS1_12VectorReaderIdEEJdETnNSt9enable_ifIXneT_L_ZNSC_8num_argsEEEiE4typeELi0EEENS0_6StatusEmRdRbRT0_DpRKT1_.exit.i79.i.i.i.i.i.i.i.i.i.i.i ]
  %i.arj = getelementptr inbounds [8 x i8], ptr %.sink.i.i, i64 %i.aqm
  store double %.0.i.i82.i.i.i.i.i.i.i.i.i.i.i, ptr %i.arj, align 8, !tbaa !561
  %i.ark = add nsw i64 %.036.i76.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.arl = and i64 %i.ark, %.036.i76.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i83.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.arl, 0
  br i1 %.not10.i83.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_115ModulusFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit, label %bb.ge, !llvm.loop !6114

_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_115ModulusFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit26.i81.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit26.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit21.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i59.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i.i.i.i.i.i.i.i.i.i43.i.i, %_ZN8facebook5velox6StatusD2Ev.exit15.i.i.i.i.i.i48.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i57.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit15.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit15.i.i.i.i.i.i.us.i.i, %_ZN8facebook5velox6StatusD2Ev.exit21.i59.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit21.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit16.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit25.i62.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit25.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i.i.i.i.i.i.i.i, %_ZN8facebook5velox6StatusD2Ev.exit20.i.i.i.i.i.i.us.i.i, %middle.block396, %vec.epilog.middle.block409, %middle.block477, %vec.epilog.middle.block492, %middle.block504, %vec.epilog.middle.block517, %bb.z, %bb.aa, %bb.ac, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, %bb.ak, %bb.au, %bb.ax, %bb.az, %._crit_edge.i.i.i.i.i.i.i.i.i27.i.i, %bb.bl, %bb.bx, %bb.by, %bb.ca, %._crit_edge.i.i.i.i.i.i.i.i.i.i50.i, %bb.ci, %bb.cs, %bb.cv, %bb.cx, %._crit_edge.i.i.i.i.i.i.i.i.i26.i.i, %bb.dj, %bb.ei, %bb.er, %bb.et, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i63, %bb.gd
  br i1 %.136124, label %bb.gm, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

bb.gm:                                            ; preds = %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_115ModulusFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit
  %i.arm = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.arn = load <2 x ptr>, ptr %.134126, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.134126, i8 0, i64 16, i1 false)
  %i.aro = load ptr, ptr %i.arm, align 8, !tbaa !24 ; 8 uses
  store <2 x ptr> %i.arn, ptr %5, align 8, !tbaa !27
  %.not.i.i.i.i103 = icmp eq ptr %i.aro, null
  br i1 %.not.i.i.i.i103, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.arp = getelementptr inbounds nuw i8, ptr %i.aro, i64 8 ; 4 uses
  %i.arq = load atomic i64, ptr %i.arp acquire, align 8 ; 2 uses
  %i.arr = icmp eq i64 %i.arq, 4294967297
  %i.ars = trunc i64 %i.arq to i32                ; 2 uses
  br i1 %i.arr, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  store i32 0, ptr %i.arp, align 8, !tbaa !33
  %i.art = getelementptr inbounds nuw i8, ptr %i.aro, i64 12
  store i32 0, ptr %i.art, align 4, !tbaa !35
  %i.aru = load ptr, ptr %i.aro, align 8, !tbaa !36
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aru, i64 16
  %i.arw = load ptr, ptr %i.arv, align 8
  call void %i.arw(ptr noundef nonnull align 8 dereferenceable(16) %i.aro) #33, !inline_history !739
  %i.arx = load ptr, ptr %i.aro, align 8, !tbaa !36
  %i.ary = getelementptr inbounds nuw i8, ptr %i.arx, i64 24
  %i.arz = load ptr, ptr %i.ary, align 8
  call void %i.arz(ptr noundef nonnull align 8 dereferenceable(16) %i.aro) #33, !inline_history !739
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

bb.gp:                                            ; preds = %bb.gn
  %i.asa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i104 = icmp eq i8 %i.asa, 0
  br i1 %.not.i.i.i.i.i104, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.asb = add nsw i32 %i.ars, -1
  store i32 %i.asb, ptr %i.arp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.gr:                                            ; preds = %bb.gp
  %i.asc = atomicrmw volatile add ptr %i.arp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.gr, %bb.gq
  %.0.i.i.i.i.i.i = phi i32 [ %i.ars, %bb.gq ], [ %i.asc, %bb.gr ]
  %i.asd = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.asd, label %bb.gs, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, !prof !39

bb.gs:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aro) #33
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit: ; preds = %bb.gs, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.go, %bb.gm, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_115ModulusFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit
  %i.ase = load ptr, ptr %8, align 8, !tbaa !696  ; 3 uses
  %i.asf = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.asg = load ptr, ptr %i.asf, align 8, !tbaa !707 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ase, %i.asg
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ask, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i ], [ %i.ase, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %i.ash = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.asi = load i8, ptr %i.ash, align 8, !tbaa !699, !range !235, !noundef !236
  %i.asj = trunc nuw i8 %i.asi to i1
  store i8 0, ptr %i.ash, align 8, !tbaa !699
  br i1 %i.asj, label %bb.gt, label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

bb.gt:                                            ; preds = %.lr.ph.i.i.i
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %.05.i.i.i) #33
  br label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i: ; preds = %bb.gt, %.lr.ph.i.i.i
  %i.ask = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i105 = icmp eq ptr %i.ask, %i.asg
  br i1 %.not.i.i.i105, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !740

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !696
  br label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit
  %i.asl = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ase, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.asl, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit, label %bb.gu

bb.gu:                                            ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i
  %i.asm = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.asn = load ptr, ptr %i.asm, align 8, !tbaa !741
  %i.aso = ptrtoint ptr %i.asn to i64
  %i.asp = ptrtoint ptr %i.asl to i64
  %i.asq = sub i64 %i.aso, %i.asp
  call void @_ZdlPvm(ptr noundef nonnull %i.asl, i64 noundef %i.asq) #35
  br label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit

_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, %bb.gu
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  ret void

.body:                                            ; preds = %bb.dm, %common.resume.i
  %.pn.pn.pn = phi { ptr, i32 } [ %common.resume.op.i, %common.resume.i ], [ %i.abw, %bb.dm ]
  call void @_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_115ModulusFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE27supportsFlatNoNullsFastPathEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_115ModulusFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE34ensureStringEncodingSetAtAllInputsEv(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_115ModulusFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE36propagateStringEncodingFromAllInputsEv(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_115ModulusFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJddEEEJddEEEE16getCanonicalNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #30

; Function Attrs: mustprogress noreturn uwtable
define internal void @_ZNK8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_115ModulusFunctionINS0_4exec10VectorExecEEEfNS0_15ConstantCheckerIJffEEEJffEE7getNameB5cxx11Ev(ptr dead_on_unwind noalias nofree readnone sret(%"class.std::__cxx11::basic_string") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.34)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #33
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZSt11make_sharedIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_115ModulusFunctionINS1_4exec10VectorExecEEEfNS1_15ConstantCheckerIJffEEEJffEEEJRbRKSt6vectorINS7_17SignatureVariableESaISG_EEEESt10shared_ptrIT_EDpOT0_(i8 %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.facebook::velox::exec::FunctionSignatureBuilder", align 8 ; 16 uses
  %2 = alloca %"class.std::shared_ptr.15", align 16 ; 7 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"struct.facebook::velox::core::TypeAnalysis.925", align 1 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"struct.facebook::velox::core::TypeAnalysis.925", align 1 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::vector", align 16     ; 13 uses
  %11 = alloca %"struct.facebook::velox::core::TypeAnalysisResults", align 8 ; 31 uses
  %12 = alloca %"struct.facebook::velox::core::TypeAnalysis.925", align 1 ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::shared_ptr.18", align 16 ; 7 uses
  %15 = alloca %"class.std::vector.21", align 8   ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"struct.facebook::velox::core::SimpleFunctionMetadata<facebook::velox::functions::(anonymous namespace)::ModulusFunction<facebook::velox::exec::VectorExec>, float, facebook::velox::ConstantChecker<float, float>, float, float>::SignatureTypesAnalysisResults", align 16 ; 31 uses
  store ptr null, ptr @_ZZN8facebook5velox4exec20singletonUdfMetadataINS0_4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_115ModulusFunctionINS1_10VectorExecEEEfNS0_15ConstantCheckerIJffEEEJffEEEEERKSt10shared_ptrIKT_EbRKSt6vectorINS1_17SignatureVariableESaISK_EEE8instance, align 16, !tbaa !6138
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #34, !noalias !6141 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !35
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12_GLOBAL__N_115ModulusFunctionINS1_4exec10VectorExecEEEfNS1_15ConstantCheckerIJffEEEJffEEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12_GLOBAL__N_115ModulusFunctionINS0_4exec10VectorExecEEEfNS0_15ConstantCheckerIJffEEEJffEEE, i64 16), ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %.0.val, ptr %i.e, align 8, !tbaa !6144
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6146)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33, !noalias !6146
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !6146
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33, !noalias !6146
  store i8 0, ptr %11, align 8, !tbaa !150, !noalias !6146
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 1
  store i8 0, ptr %i.i, align 1, !tbaa !152, !noalias !6146
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 2
  store i8 0, ptr %i.j, align 2, !tbaa !153, !noalias !6146
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !154, !noalias !6146
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.l)
          to label %bb.b unwind label %bb.at, !noalias !6146

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 392 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !noalias !6146
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 416 ; 10 uses
  store i32 0, ptr %i.n, align 8, !tbaa !155, !noalias !6146
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 424 ; 5 uses
  store ptr null, ptr %i.o, align 8, !tbaa !160, !noalias !6146
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 432 ; 5 uses
  store ptr %i.n, ptr %i.p, align 8, !tbaa !161, !noalias !6146
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 440 ; 4 uses
  store ptr %i.n, ptr %i.q, align 8, !tbaa !162, !noalias !6146
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 448 ; 6 uses
  store i64 0, ptr %i.r, align 8, !tbaa !163, !noalias !6146
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33, !noalias !6146
  invoke void @_ZN8facebook5velox4core12TypeAnalysisIfE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %bb.c unwind label %bb.au

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33, !noalias !6146
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33, !noalias !6146
  call void @llvm.experimental.noalias.scope.decl(metadata !6149)
  call void @llvm.experimental.noalias.scope.decl(metadata !6152)
  call void @llvm.experimental.noalias.scope.decl(metadata !6155)
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 12 uses
  store ptr %i.s, ptr %13, align 8, !tbaa !173, !alias.scope !6158, !noalias !6146
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i64 0, ptr %i.t, align 8, !tbaa !16, !alias.scope !6158, !noalias !6146
  store i8 0, ptr %i.s, align 8, !tbaa !28, !alias.scope !6158, !noalias !6146
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !6159 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !noalias !6159 ; 2 uses
  %i.y = icmp ugt ptr %i.v, %i.x
  %.08.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.y, ptr %i.v, ptr %i.x ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !180, !noalias !6159 ; 2 uses
  %i.ab = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef 0, i64 noundef 0, ptr noundef %i.aa, i64 noundef %i.ad)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %13, align 8, !tbaa !7, !alias.scope !6158, !noalias !6146 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.s
  br i1 %i.ah, label %.body.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.i.sink.split

bb.f:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i unwind label %bb.e

_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33, !noalias !6146
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 400 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24, !noalias !6146 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.m, align 8, !tbaa !27, !noalias !6146
  store <2 x ptr> %i.am, ptr %14, align 16, !tbaa !27, !noalias !6146
  %.not.i.i.i25.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i25.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !6146
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
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33, !noalias !6146
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false), !noalias !6146
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33, !noalias !6146
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.as, ptr %7, align 8, !tbaa !173, !noalias !6146
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !16, !noalias !6146
  store i8 0, ptr %i.as, align 8, !tbaa !28, !noalias !6146
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i unwind label %bb.j

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.av = load ptr, ptr %7, align 8, !tbaa !7, !noalias !6146 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.as
  br i1 %i.aw, label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i
  %i.ax = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !6146
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #35
  br label %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit.i.i.i.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %7, align 8, !tbaa !7, !noalias !6146 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.as
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.as, align 8, !tbaa !28, !noalias !6146
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !6146
  br label %.body29.i.i.i.i.i.i.i

_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33, !noalias !6146
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33, !noalias !6146
  invoke void @_ZN8facebook5velox4core12TypeAnalysisIfE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(456) %11)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.av

.noexc.i.i.i.i.i.i.i:                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults15resetTypeStringEv.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33, !noalias !6146
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33, !noalias !6146
  call void @llvm.experimental.noalias.scope.decl(metadata !6160)
  call void @llvm.experimental.noalias.scope.decl(metadata !6163)
  call void @llvm.experimental.noalias.scope.decl(metadata !6166)
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  store ptr %i.be, ptr %9, align 8, !tbaa !173, !alias.scope !6169, !noalias !6146
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 0, ptr %i.bf, align 8, !tbaa !16, !alias.scope !6169, !noalias !6146
  store i8 0, ptr %i.be, align 8, !tbaa !28, !alias.scope !6169, !noalias !6146
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !175, !noalias !6170 ; 3 uses
  %.not.i.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  %i.bh = load ptr, ptr %i.w, align 8, !noalias !6170 ; 2 uses
  %i.bi = icmp ugt ptr %i.bg, %i.bh
  %.08.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bi, ptr %i.bg, ptr %i.bh ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i, null
  %.not.i.i.i.i26.i.i.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i26.i.i.i.i.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !180, !noalias !6170 ; 2 uses
  %i.bl = ptrtoint ptr %.08.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.bk, i64 noundef %i.bn)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %9, align 8, !tbaa !7, !alias.scope !6169, !noalias !6146 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.be
  br i1 %i.br, label %.body29.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l
  %i.bs = load i64, ptr %i.be, align 8, !tbaa !28, !alias.scope !6169, !noalias !6146
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #35
  br label %.body29.i.i.i.i.i.i.i

bb.m:                                             ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.bu)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.l
end_hunk_23
