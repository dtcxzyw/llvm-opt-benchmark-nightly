inline.NumInlined: 21036
inline.NumDeleted: 6221
begin_hunk_0_@_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions12UuidFunctionINS1_4exec10VectorExecEEENS1_10CustomTypeINS1_5UuidTELb0EEENS1_15ConstantCheckerIJEEEJEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:bb.a
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12UuidFunctionINS0_4exec10VectorExecEEENS0_10CustomTypeINS0_5UuidTELb0EEENS0_15ConstantCheckerIJEEEJEEC2EbRKSt6vectorINS5_17SignatureVariableESaISF_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.facebook::velox::core::SimpleFunctionMetadata<facebook::velox::functions::UuidFunction<facebook::velox::exec::VectorExec>, facebook::velox::CustomType<facebook::velox::UuidT>, facebook::velox::ConstantChecker<>>::SignatureTypesAnalysisResults", align 8 ; 14 uses
  %i.a = zext i1 %1 to i8
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12UuidFunctionINS0_4exec10VectorExecEEENS0_10CustomTypeINS0_5UuidTELb0EEENS0_15ConstantCheckerIJEEEJEEE, i64 16), ptr %0, align 8, !tbaa !94
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.a, ptr %i.b, align 8, !tbaa !110
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  invoke void @_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12UuidFunctionINS0_4exec10VectorExecEEENS0_10CustomTypeINS0_5UuidTELb0EEENS0_15ConstantCheckerIJEEEJEE21analyzeSignatureTypesERKSt6vectorINS5_17SignatureVariableESaISF_EE(ptr dead_on_unwind nonnull writable sret(%"struct.facebook::velox::core::SimpleFunctionMetadata<facebook::velox::functions::UuidFunction<facebook::velox::exec::VectorExec>, facebook::velox::CustomType<facebook::velox::UuidT>, facebook::velox::ConstantChecker<>>::SignatureTypesAnalysisResults") align 8 %3, ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %bb.s

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12UuidFunctionINS0_4exec10VectorExecEEENS0_10CustomTypeINS0_5UuidTELb0EEENS0_15ConstantCheckerIJEEEJEE14buildSignatureERKNSD_29SignatureTypesAnalysisResultsE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(160) %3)
          to label %bb.c unwind label %bb.t

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 105
  %i.h = load i8, ptr %i.g, align 1, !tbaa !124, !range !104, !noundef !105
  %i.i = trunc nuw i8 %i.h to i1                  ; 4 uses
  %i.j = load i8, ptr %i.f, align 8, !range !104
  %i.k = trunc nuw i8 %i.j to i1                  ; 2 uses
  %or.cond.i.i = select i1 %i.i, i1 true, i1 %i.k
  br i1 %or.cond.i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not.i.i = xor i1 %i.k, true
  %or.cond4.i.i = or i1 %i.i, %.not.i.i
  br i1 %or.cond4.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 106
  %i.m = load i8, ptr %i.l, align 2, !range !104
  %i.n = trunc nuw i8 %i.m to i1                  ; 2 uses
  %.not9.i.i = xor i1 %i.n, true
  %or.cond8.not.i.i = select i1 %i.i, i1 %.not9.i.i, i1 false
  %brmerge.i.i = select i1 %i.i, i1 true, i1 %i.n
  %.mux.i.i = select i1 %or.cond8.not.i.i, i32 3, i32 4
  br i1 %brmerge.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4core19TypeAnalysisResults5Stats7getRankEvE18veloxCheckFailArgs_2, ptr noundef nonnull @.str.41) #37
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0.i.i = phi i32 [ %.mux.i.i, %bb.e ], [ 2, %bb.d ], [ 1, %bb.c ]
  %i.o = mul nuw nsw i32 %.0.i.i, 1000000
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.q = load i64, ptr %i.p, align 8, !tbaa !126
  %i.r = trunc i64 %i.q to i32
  %i.s = sub i32 %i.o, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.s, ptr %i.t, align 8, !tbaa !127
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !128
  store ptr %i.v, ptr %i.d, align 8, !tbaa !128
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !83   ; 4 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !83   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not7.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ae = atomicrmw volatile add ptr %i.aa, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !83
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.k, %bb.j, %bb.h
  %i.af = phi ptr [ %i.z, %bb.h ], [ %i.z, %bb.j ], [ %.pr.pre.i.i.i, %bb.k ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 4 uses
  %i.ah = load atomic i64, ptr %i.ag acquire, align 8 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 4294967297
  %i.aj = trunc i64 %i.ah to i32                  ; 2 uses
  br i1 %i.ai, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.ag, align 8, !tbaa !91
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 0, ptr %i.ak, align 4, !tbaa !93
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !94
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #34, !inline_history !129
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !94
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #34, !inline_history !129
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i9.i.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i9.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = add nsw i32 %i.aj, -1
  store i32 %i.as, ptr %i.ag, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.at = atomicrmw volatile add ptr %i.ag, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i = phi i32 [ %i.aj, %bb.o ], [ %i.at, %bb.p ]
  %i.au = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.au, label %bb.q, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !77

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #34
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.m, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.y, ptr %i.w, align 8, !tbaa !83
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit: ; preds = %bb.g, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.aw = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %bb.r unwind label %bb.t       ; 0 uses

bb.r:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit
  call void @_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12UuidFunctionINS0_4exec10VectorExecEEENS0_10CustomTypeINS0_5UuidTELb0EEENS0_15ConstantCheckerIJEEEJEE29SignatureTypesAnalysisResultsD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

bb.s:                                             ; preds = %bb.a
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.f, %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit, %bb.b
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12UuidFunctionINS0_4exec10VectorExecEEENS0_10CustomTypeINS0_5UuidTELb0EEENS0_15ConstantCheckerIJEEEJEE29SignatureTypesAnalysisResultsD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %3) #34
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.t ], [ %i.ax, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.e) #34
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #34
  call void @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #34
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12UuidFunctionINS0_4exec10VectorExecEEENS0_10CustomTypeINS0_5UuidTELb0EEENS0_15ConstantCheckerIJEEEJEE21analyzeSignatureTypesERKSt6vectorINS5_17SignatureVariableESaISF_EE(ptr dead_on_unwind noalias writable sret(%"struct.facebook::velox::core::SimpleFunctionMetadata<facebook::velox::functions::UuidFunction<facebook::velox::exec::VectorExec>, facebook::velox::CustomType<facebook::velox::UuidT>, facebook::velox::ConstantChecker<>>::SignatureTypesAnalysisResults") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %4 = alloca %"class.std::vector", align 16      ; 10 uses
  %5 = alloca %"struct.facebook::velox::core::TypeAnalysisResults", align 8 ; 24 uses
  %6 = alloca %"struct.facebook::velox::core::TypeAnalysis", align 1 ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::shared_ptr.18", align 16 ; 7 uses
  %9 = alloca %"class.std::vector.21", align 8    ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  store i8 0, ptr %5, align 8, !tbaa !130
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 1
  store i8 0, ptr %i.a, align 1, !tbaa !124
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i8 0, ptr %i.b, align 2, !tbaa !131
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !126
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.d)
          to label %bb.b unwind label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 392 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 416 ; 10 uses
  store i32 0, ptr %i.f, align 8, !tbaa !132
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 424 ; 5 uses
  store ptr null, ptr %i.g, align 8, !tbaa !137
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 432 ; 5 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !138
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 440 ; 4 uses
  store ptr %i.f, ptr %i.i, align 8, !tbaa !139
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 448 ; 6 uses
  store i64 0, ptr %i.j, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  invoke void @_ZN8facebook5velox4core12TypeAnalysisINS0_10CustomTypeINS0_5UuidTELb0EEEE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(456) %5)
          to label %bb.c unwind label %bb.t

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !141)
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 12 uses
  store ptr %i.k, ptr %7, align 8, !tbaa !76, !alias.scope !150
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i64 0, ptr %i.l, align 8, !tbaa !16, !alias.scope !150
  store i8 0, ptr %i.k, align 8, !tbaa !26, !alias.scope !150
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !151, !noalias !150 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.n, null
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !noalias !150 ; 2 uses
  %i.q = icmp ugt ptr %i.n, %i.p
  %.08.i.i.i.i = select i1 %i.q, ptr %i.n, ptr %i.p ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !155, !noalias !150 ; 2 uses
  %i.t = ptrtoint ptr %.08.i.i.i.i to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef %i.s, i64 noundef %i.v)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %7, align 8, !tbaa !7, !alias.scope !150 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.k
  br i1 %i.z, label %.body, label %.body.sink.split

bb.f:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit unwind label %bb.e

_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit: ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 400
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !83 ; 2 uses
  %i.ae = load <2 x ptr>, ptr %i.e, align 8, !tbaa !86
  store <2 x ptr> %i.ae, ptr %8, align 16, !tbaa !86
  %.not.i.i.i22 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i22, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

bb.i:                                             ; preds = %bb.g
  %i.aj = atomicrmw volatile add ptr %i.af, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit: ; preds = %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit, %bb.h, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.ak = load ptr, ptr %2, align 8, !tbaa !156   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !156 ; 2 uses
  %i.an = icmp eq ptr %i.ak, %i.am
  br i1 %i.an, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 408 ; 3 uses
  br label %bb.u

._crit_edge:                                      ; preds = %bb.af, %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aq = load <2 x ptr>, ptr %4, align 16, !tbaa !82
  store <2 x ptr> %i.aq, ptr %0, align 8, !tbaa !82
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 16, !tbaa !20
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  store ptr %i.av, ptr %i.au, align 8, !tbaa !76
  %i.aw = load ptr, ptr %7, align 8, !tbaa !7     ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.k
  br i1 %i.ax, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.j:                                             ; preds = %._crit_edge
  %i.ay = load i64, ptr %i.l, align 8, !tbaa !16  ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.av, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.ba, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %._crit_edge
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !7
  %i.bb = load i64, ptr %i.k, align 8, !tbaa !26
  store i64 %i.bb, ptr %i.av, align 8, !tbaa !26
  %.pre = load i64, ptr %i.l, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bc = phi i64 [ %i.ay, %bb.j ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !16
  store ptr %i.k, ptr %7, align 8, !tbaa !7
  store i64 0, ptr %i.l, align 8, !tbaa !16
  store i8 0, ptr %i.k, align 8, !tbaa !26
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.bg = load ptr, ptr %i.g, align 8, !tbaa !137 ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i23, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.bh = load i32, ptr %i.f, align 8, !tbaa !132
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.bg, ptr %i.bi, align 8, !tbaa !137
  %i.bj = load ptr, ptr %i.h, align 8, !tbaa !138
  %i.bk = load ptr, ptr %i.i, align 8, !tbaa !139
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bf, ptr %i.bl, align 8, !tbaa !157
  %i.bm = load i64, ptr %i.j, align 8, !tbaa !140
  store ptr null, ptr %i.g, align 8, !tbaa !137
  store ptr %i.f, ptr %i.h, align 8, !tbaa !138
  store ptr %i.f, ptr %i.i, align 8, !tbaa !139
  store i64 0, ptr %i.j, align 8, !tbaa !140
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEEC2EOSG_.exit

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.bn, align 8, !tbaa !137
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEEC2EOSG_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEEC2EOSG_.exit: ; preds = %bb.k, %bb.l
  %.sink64 = phi ptr [ %i.bf, %bb.l ], [ %i.bj, %bb.k ]
  %.sink63 = phi ptr [ %i.bf, %bb.l ], [ %i.bk, %bb.k ]
  %.sink = phi i64 [ 0, %bb.l ], [ %i.bm, %bb.k ]
  %.sink.i.i.i.i = phi i32 [ 0, %bb.l ], [ %i.bh, %bb.k ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sink64, ptr %i.bo, align 8, !tbaa !138
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.sink63, ptr %i.bp, align 8, !tbaa !139
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %.sink, ptr %i.bq, align 8, !tbaa !140
  store i32 %.sink.i.i.i.i, ptr %i.bf, align 8, !tbaa !132
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !158
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bt = load ptr, ptr %i.ab, align 8, !tbaa !83 ; 2 uses
  %i.bu = load <2 x ptr>, ptr %8, align 16, !tbaa !86
  store <2 x ptr> %i.bu, ptr %i.bs, align 8, !tbaa !86
  %.not.i.i.i24 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i24, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit26, label %bb.m

bb.m:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEEC2EOSG_.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 3 uses
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i25 = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.i.i25, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit26.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = load i32, ptr %i.bv, align 4, !tbaa !3
  %i.by = add nsw i32 %i.bx, 1
  store i32 %i.by, ptr %i.bv, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit26

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit26.thread: ; preds = %bb.m
  %11 = atomicrmw volatile add ptr %i.bv, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit26

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit26: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEEC2EOSG_.exit, %bb.n, %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit26.thread
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.pre65.a = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !160 ; 4 uses
  %.pre66.a = load ptr, ptr %9, align 8, !tbaa !161 ; 4 uses
  %i.bz = ptrtoint ptr %.pre65.a to i64
  %i.ca = ptrtoint ptr %.pre66.a to i64
  %i.cb = sub i64 %i.bz, %i.ca                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %.not.i.i.i.i27 = icmp eq ptr %.pre65.a, %.pre66.a
  br i1 %.not.i.i.i.i27, label %.noexc28.thread, label %bb.o

.noexc28.thread:                                  ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit26
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 144
  %13 = getelementptr inbounds nuw i8, ptr null, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  store ptr %13, ptr %i.cd, align 8, !tbaa !162
  br label %.loopexit

bb.o:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit26
  %i.ce = icmp ugt i64 %i.cb, 9223372036854775792
  br i1 %i.ce, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4TypeEEE8allocateEmPKv.exit.i.i.i.i, !prof !77

.noexc.i.i:                                       ; preds = %bb.o
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #37
          to label %.noexc unwind label %bb.au

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4TypeEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.o
  %i.cf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #35
          to label %.noexc28 unwind label %bb.au  ; 4 uses

.noexc28:                                         ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4TypeEEE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.cf, ptr %12, align 8, !tbaa !161
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !160
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cb
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !162
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc28, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.cs, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.cf, %.noexc28 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.cr, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %.pre66.a, %.noexc28 ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !83 ; 2 uses
  %i.cl = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i, align 8, !tbaa !86
  store <2 x ptr> %i.cl, ptr %.08.i.i.i.i.i, align 8, !tbaa !86
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 3 uses
  %i.cn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.cn, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.co = load i32, ptr %i.cm, align 4, !tbaa !3
  %i.cp = add nsw i32 %i.co, 1
  store i32 %i.cp, ptr %i.cm, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.cq = atomicrmw volatile add ptr %i.cm, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.r, %bb.q, %.lr.ph.i.i.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %.pre65.a
  br i1 %i.ct, label %.loopexit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !163

bb.s:                                             ; preds = %bb.a
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.t:                                             ; preds = %bb.b
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.aw

bb.u:                                             ; preds = %.lr.ph, %bb.af
  %.sroa.053.059 = phi ptr [ %i.ak, %.lr.ph ], [ %i.ew, %bb.af ] ; 8 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.053.059, i64 64
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !164
  %i.cy = icmp eq i8 %i.cx, 1
  br i1 %i.cy, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.053.059, i64 40
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !16
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.w, label %bb.ac, !prof !77

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34, !noalias !167
  %i.dc = load ptr, ptr %.sroa.053.059, align 8, !tbaa !7, !noalias !167
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.053.059, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !16, !noalias !167
  %i.df = ptrtoint ptr %i.dc to i64
  store i64 %i.df, ptr %3, align 16, !noalias !167
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.de, ptr %.sroa_idx3.i, align 8, !noalias !167
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nonnull @.str.20, i64 38, i64 13, ptr nonnull %3)
          to label %bb.x unwind label %bb.aa

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34, !noalias !167
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12UuidFunctionINS0_4exec10VectorExecEEENS0_10CustomTypeINS0_5UuidTELb0EEENS0_15ConstantCheckerIJEEEJEE21analyzeSignatureTypesERKSt6vectorINS5_17SignatureVariableESaISF_EEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr nonnull @.str.20) #37
          to label %bb.y unwind label %bb.ab

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %bb.ac, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5eraseERSD_.exit
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.aa:                                            ; preds = %bb.w
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ab:                                            ; preds = %bb.x
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dj = load ptr, ptr %10, align 8, !tbaa !7    ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ab
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !26
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dn) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.dh, %bb.aa ], [ %i.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.di, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.av

bb.ac:                                            ; preds = %bb.v, %bb.u
  %i.do = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE11equal_rangeERS7_(ptr noundef nonnull align 8 dereferenceable(48) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.053.059)
          to label %.noexc30 unwind label %bb.z   ; 2 uses

.noexc30:                                         ; preds = %bb.ac
  %i.dp = extractvalue { ptr, ptr } %i.do, 0      ; 3 uses
  %i.dq = extractvalue { ptr, ptr } %i.do, 1      ; 3 uses
  %i.dr = load ptr, ptr %i.h, align 8, !tbaa !138
  %i.ds = icmp eq ptr %i.dp, %i.dr
  %i.dt = icmp eq ptr %i.dq, %i.f
  %or.cond = select i1 %i.ds, i1 %i.dt, i1 false
  br i1 %or.cond, label %bb.ad, label %.critedge.i.i.i

bb.ad:                                            ; preds = %.noexc30
  %i.du = load ptr, ptr %i.g, align 8, !tbaa !137
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ao, ptr noundef %i.du)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE5clearEv.exit.i.i.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #38
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE5clearEv.exit.i.i.i: ; preds = %bb.ad
  store ptr null, ptr %i.g, align 8, !tbaa !137
  store ptr %i.f, ptr %i.h, align 8, !tbaa !138
  store ptr %i.f, ptr %i.i, align 8, !tbaa !139
  store i64 0, ptr %i.j, align 8, !tbaa !140
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5eraseERSD_.exit

.critedge.i.i.i:                                  ; preds = %.noexc30
  %i.dx = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dx, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5eraseERSD_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge.i.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISC_E.exit
  %.sroa.06.08.i.i.i = phi ptr [ %i.dy, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISC_E.exit ], [ %i.dp, %.critedge.i.i.i ] ; 2 uses
  %i.dy = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.06.08.i.i.i) #39 ; 2 uses
  %i.dz = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.06.08.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.f) #34 ; 7 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 96
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !7  ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 112 ; 2 uses
  %i.ef = icmp eq ptr %i.ed, %i.ee
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.eg = load i64, ptr %i.ee, align 8, !tbaa !26
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eh) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ei = load ptr, ptr %i.eb, align 8, !tbaa !7  ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dz, i64 80 ; 2 uses
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %_ZN8facebook5velox4exec17SignatureVariableD2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.el = load i64, ptr %i.ej, align 8, !tbaa !26
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.em) #36
  br label %_ZN8facebook5velox4exec17SignatureVariableD2Ev.exit.i.i.i.i.i

_ZN8facebook5velox4exec17SignatureVariableD2Ev.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  %i.en = load ptr, ptr %i.ea, align 8, !tbaa !7  ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dz, i64 48 ; 2 uses
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISC_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i49: ; preds = %_ZN8facebook5velox4exec17SignatureVariableD2Ev.exit.i.i.i.i.i
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !26
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.er) #36
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISC_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISC_E.exit: ; preds = %_ZN8facebook5velox4exec17SignatureVariableD2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i49
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef 136) #36
  %i.es = load i64, ptr %i.j, align 8, !tbaa !140
  %i.et = add i64 %i.es, -1
  store i64 %i.et, ptr %i.j, align 8, !tbaa !140
  %i.eu = icmp eq ptr %i.dy, %i.dq
  br i1 %i.eu, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5eraseERSD_.exit, label %.lr.ph.i.i.i, !llvm.loop !170

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5eraseERSD_.exit: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISC_E.exit, %.critedge.i.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE5clearEv.exit.i.i.i
  %i.ev = invoke { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE7emplaceIJRSD_RKS9_EEESC_ISt17_Rb_tree_iteratorISE_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.053.059, ptr noundef nonnull align 8 dereferenceable(68) %.sroa.053.059)
          to label %bb.af unwind label %bb.z      ; 0 uses

bb.af:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5eraseERSD_.exit
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.053.059, i64 72 ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.am
  br i1 %i.ex, label %._crit_edge, label %bb.u

.loopexit.loopexit:                               ; preds = %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.pre65 = load ptr, ptr %9, align 8, !tbaa !161
  %.pre67 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !160
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.noexc28.thread
  %i.ey = phi ptr [ %.pre65.a, %.noexc28.thread ], [ %.pre67, %.loopexit.loopexit ] ; 2 uses
  %i.ez = phi ptr [ %.pre66.a, %.noexc28.thread ], [ %.pre65, %.loopexit.loopexit ] ; 3 uses
  %i.fa = phi ptr [ %i.cc, %.noexc28.thread ], [ %i.cg, %.loopexit.loopexit ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %.noexc28.thread ], [ %i.cs, %.loopexit.loopexit ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.fa, align 8, !tbaa !160
  %.not4.i.i.i = icmp eq ptr %i.ez, %i.ey
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i31

.lr.ph.i.i.i31:                                   ; preds = %.loopexit, %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fs, %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i ], [ %i.ez, %.loopexit ] ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !83 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i.i31
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 4 uses
  %i.fe = load atomic i64, ptr %i.fd acquire, align 8 ; 2 uses
  %i.ff = icmp eq i64 %i.fe, 4294967297
  %i.fg = trunc i64 %i.fe to i32                  ; 2 uses
  br i1 %i.ff, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.fd, align 8, !tbaa !91
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 12
  store i32 0, ptr %i.fh, align 4, !tbaa !93
  %i.fi = load ptr, ptr %i.fc, align 8, !tbaa !94
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(16) %i.fc) #34, !inline_history !171
  %i.fl = load ptr, ptr %i.fc, align 8, !tbaa !94
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(16) %i.fc) #34, !inline_history !171
  br label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.fo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.fo, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fp = add nsw i32 %i.fg, -1
  store i32 %i.fp, ptr %i.fd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.fq = atomicrmw volatile add ptr %i.fd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.fg, %bb.aj ], [ %i.fq, %bb.ak ]
  %i.fr = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.fr, label %bb.al, label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i, !prof !77

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fc) #34
  br label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i: ; preds = %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.ah, %.lr.ph.i.i.i31
  %i.fs = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.fs, %i.ey
  br i1 %.not.i.i.i32, label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i31, !llvm.loop !172

_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %9, align 8, !tbaa !161
  br label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %.loopexit
  %i.ft = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ez, %.loopexit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ft, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit.i
  %i.fu = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !162
  %i.fw = ptrtoint ptr %i.fv to i64
  %i.fx = ptrtoint ptr %i.ft to i64
  %i.fy = sub i64 %i.fw, %i.fx
  call void @_ZdlPvm(ptr noundef nonnull %i.ft, i64 noundef %i.fy) #36
  br label %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  %i.fz = load ptr, ptr %i.ab, align 8, !tbaa !83 ; 8 uses
  %.not.i.i = icmp eq ptr %i.fz, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev.exit
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 4 uses
  %i.gb = load atomic i64, ptr %i.ga acquire, align 8 ; 2 uses
  %i.gc = icmp eq i64 %i.gb, 4294967297
  %i.gd = trunc i64 %i.gb to i32                  ; 2 uses
  br i1 %i.gc, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 0, ptr %i.ga, align 8, !tbaa !91
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 12
  store i32 0, ptr %i.ge, align 4, !tbaa !93
  %i.gf = load ptr, ptr %i.fz, align 8, !tbaa !94
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #34, !inline_history !173
  %i.gi = load ptr, ptr %i.fz, align 8, !tbaa !94
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #34, !inline_history !173
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ap:                                            ; preds = %bb.an
  %i.gl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i33 = icmp eq i8 %i.gl, 0
  br i1 %.not.i.i.i33, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gm = add nsw i32 %i.gd, -1
  store i32 %i.gm, ptr %i.ga, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.gn = atomicrmw volatile add ptr %i.ga, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ar, %bb.aq
  %.0.i.i.i.i = phi i32 [ %i.gd, %bb.aq ], [ %i.gn, %bb.ar ]
  %i.go = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.go, label %bb.as, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !77

bb.as:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #34
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev.exit, %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %i.gp = load ptr, ptr %7, align 8, !tbaa !7     ; 2 uses
  %i.gq = icmp eq ptr %i.gp, %i.k
  br i1 %i.gq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.gr = load i64, ptr %i.k, align 8, !tbaa !26
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gs) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @_ZN8facebook5velox4core19TypeAnalysisResultsD2Ev(ptr noundef nonnull align 8 dead_on_return(456) dereferenceable(456) %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %i.gt = load ptr, ptr %4, align 16, !tbaa !17   ; 5 uses
  %i.gu = load ptr, ptr %i.ap, align 8, !tbaa !21 ; 2 uses
  %.not4.i.i.i37 = icmp eq ptr %i.gt, %i.gu
  br i1 %.not4.i.i.i37, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i38

.lr.ph.i.i.i38:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i39 = phi ptr [ %i.ha, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.gt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ] ; 3 uses
  %i.gv = load ptr, ptr %.05.i.i.i39, align 8, !tbaa !7 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.05.i.i.i39, i64 16 ; 2 uses
  %i.gx = icmp eq ptr %i.gv, %i.gw
  br i1 %i.gx, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i38
  %i.gy = load i64, ptr %i.gw, align 8, !tbaa !26
  %i.gz = add i64 %i.gy, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gz) #36
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ha = getelementptr inbounds nuw i8, ptr %.05.i.i.i39, i64 32 ; 2 uses
  %.not.i.i.i40 = icmp eq ptr %i.ha, %i.gu
  br i1 %.not.i.i.i40, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i38, !llvm.loop !30

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  %.not.i.i1.i42 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i1.i42, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.hb = load ptr, ptr %i.as, align 16, !tbaa !20
  %i.hc = ptrtoint ptr %i.hb to i64
  %i.hd = ptrtoint ptr %i.gt to i64
  %i.he = sub i64 %i.hc, %i.hd
  call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef %i.he) #36
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void

bb.au:                                            ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4TypeEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.hf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #34
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.be) #34
  %i.hg = load ptr, ptr %i.au, align 8, !tbaa !7  ; 2 uses
  %i.hh = icmp eq ptr %i.hg, %i.av
  br i1 %i.hh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.au
  %i.hi = load i64, ptr %i.av, align 8, !tbaa !26
  %i.hj = add i64 %i.hi, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hj) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #34
  br label %bb.av

bb.av:                                            ; preds = %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  %.pn.pn.pn = phi { ptr, i32 } [ %i.hf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.dg, %bb.z ] ; 2 uses
  call void @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %i.hk = load ptr, ptr %7, align 8, !tbaa !7     ; 2 uses
  %i.hl = icmp eq ptr %i.hk, %i.k
  br i1 %i.hl, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.av, %bb.e
  %.sink118 = phi ptr [ %i.y, %bb.e ], [ %i.hk, %bb.av ]
  %.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.x, %bb.e ], [ %.pn.pn.pn, %bb.av ]
  %i.hm = load i64, ptr %i.k, align 8, !tbaa !26
  %i.hn = add i64 %i.hm, 1
  call void @_ZdlPvm(ptr noundef %.sink118, i64 noundef %i.hn) #36
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.av, %bb.e
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %.pn.pn.pn, %bb.av ], [ %.pn.pn.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.aw

bb.aw:                                            ; preds = %.body, %bb.t
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %.body ], [ %i.cv, %bb.t ]
  call void @_ZN8facebook5velox4core19TypeAnalysisResultsD2Ev(ptr noundef nonnull align 8 dead_on_return(456) dereferenceable(456) %5) #34
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.s
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %bb.aw ], [ %i.cu, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions12UuidFunctionINS0_4exec10VectorExecEEENS0_10CustomTypeINS0_5UuidTELb0EEENS0_15ConstantCheckerIJEEEJEE14buildSignatureERKNSD_29SignatureTypesAnalysisResultsE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.facebook::velox::exec::FunctionSignatureBuilder", align 8 ; 19 uses
  %3 = alloca %"class.std::shared_ptr.15", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.a, i8 0, i64 208, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.b, ptr %2, align 8, !tbaa !174
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 1, ptr %i.c, align 8, !tbaa !182
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.e, align 8, !tbaa !183
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 208
end_hunk_0
begin_hunk_1_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS3_10VectorExecEEESB_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSD_INS0_10IPAddressTELb1EEElEEEJSI_lEEEE8applyUdfIZNKSL_7iterateIJNS3_12VectorReaderISI_EENS3_24ConstantFlatVectorReaderIlEEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_EUlSX_E_ZNKSM_IS12_EEvST_SX_EUlSX_E0_EEvRKNS0_17SelectivityVectorESX_SZ_EUlSX_E_EEvPKmiibSX_ENKUlimE_clEim:bb.a
bb.ai:                                            ; preds = %bb.ah
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #34
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit49

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit49: ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES9_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSB_INS0_10IPAddressTELb1EEElEEEJSG_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISG_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSK_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_ENKUlSV_E_clIiEEDaSV_.exit

bb.aj:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_ENKUlST_E0_clIiEEDaST_.exit
  %i.fn = landingpad { ptr, i32 }
          cleanup
  %i.fo = load ptr, ptr %10, align 8, !tbaa !369
  %.not.i50 = icmp eq ptr %i.fo, null
  br i1 %.not.i50, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit51, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #34
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit51

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit51: ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.al

bb.al:                                            ; preds = %.loopexit56, %.loopexit.split-lp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit51
  %.pn16.i = phi { ptr, i32 } [ %i.fn, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit51 ], [ %lpad.loopexit, %.loopexit56 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @__cxa_end_catch()
          to label %.loopexit54 unwind label %bb.am

.loopexit54:                                      ; preds = %bb.z, %bb.al, %bb.ag
  %.merged.i = phi { ptr, i32 } [ %.pn.i, %bb.ag ], [ %.pn16.i, %bb.al ], [ %eh.lpad-body, %bb.z ]
  resume { ptr, i32 } %.merged.i

bb.am:                                            ; preds = %bb.al, %bb.ag
  %i.fp = landingpad { ptr, i32 }
          catch ptr null
  %i.fq = extractvalue { ptr, i32 } %i.fp, 0
  call void @__clang_call_terminate(ptr %i.fq) #38
  unreachable

bb.an:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES9_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSB_INS0_10IPAddressTELb1EEElEEEJSG_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISG_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSK_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_ENKUlSV_E_clIiEEDaSV_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit38, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit49
  %i.fr = add i64 %.063, -1
  %i.fs = and i64 %i.fr, %.063                    ; 2 uses
  %.not10 = icmp eq i64 %i.fs, 0
  br i1 %.not10, label %.loopexit53, label %bb.b, !llvm.loop !3716

.loopexit53:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES9_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSB_INS0_10IPAddressTELb1EEElEEEJSG_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISG_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSK_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_ENKUlSV_E_clIiEEDaSV_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS3_10VectorExecEEESB_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSD_INS0_10IPAddressTELb1EEElEEEJSI_lEEEE8applyUdfIZNKSL_7iterateIJNS3_12VectorReaderISI_EENS3_24ConstantFlatVectorReaderIlEEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvST_SX_EUlSX_E_ZNKSM_IS12_EEvST_SX_EUlSX_E0_EEvRKNS0_17SelectivityVectorESX_SZ_EUlSX_E_EEvPKmiibSX_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::array.1963", align 16 ; 6 uses
  %3 = alloca %"class.std::tuple.1964", align 16  ; 4 uses
  %4 = alloca %"class.folly::IPAddressV6", align 4 ; 4 uses
  %5 = alloca %"class.facebook::velox::exec::CustomTypeWithCustomComparisonView", align 16 ; 9 uses
  %6 = alloca %"class.facebook::velox::Status", align 8 ; 10 uses
  %7 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  %8 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %9 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %10 = alloca %"struct.std::array.1963", align 16 ; 6 uses
  %11 = alloca %"class.std::tuple.1964", align 16 ; 4 uses
  %12 = alloca %"class.folly::IPAddressV6", align 4 ; 4 uses
  %13 = alloca %"class.facebook::velox::exec::CustomTypeWithCustomComparisonView", align 16 ; 9 uses
  %14 = alloca %"class.facebook::velox::Status", align 8 ; 10 uses
  %15 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  %16 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %17 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !3717, !range !104, !noundef !105
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3719
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !159
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit131
  ]

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.ap

bb.b:                                             ; preds = %bb.a
  %i.q = shl i32 %1, 6                            ; 3 uses
  %i.r = add i32 %i.q, 64
  %i.s = sext i32 %i.r to i64
  %.not159 = icmp eq i32 %i.q, -64
  br i1 %.not159, label %.loopexit131, label %.lr.ph158

.lr.ph158:                                        ; preds = %bb.b
  %i.t = sext i32 %i.q to i64
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph158, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES9_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSB_INS0_10IPAddressTELb1EEElEEEJSG_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISG_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSK_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_ENKUlSV_E_clImEEDaSV_.exit
  %.0157 = phi i64 [ %i.t, %.lr.ph158 ], [ %i.fw, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES9_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSB_INS0_10IPAddressTELb1EEElEEEJSG_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISG_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSK_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_ENKUlSV_E_clImEEDaSV_.exit ] ; 3 uses
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !3590 ; 2 uses
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !3651, !nonnull !105, !align !608 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !3652, !nonnull !105, !align !608 ; 2 uses
  %i.ac = trunc i64 %.0157 to i32                 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 116
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !3597
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !3655, !nonnull !105, !align !608 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !3656, !noalias !3720, !nonnull !105, !align !608 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !3664, !noalias !3720, !nonnull !105, !align !608 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34, !noalias !3723
  call void @llvm.experimental.noalias.scope.decl(metadata !3726)
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !3671, !noalias !3726, !nonnull !105, !align !608 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1305, !noalias !3726
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 58
  %i.ap = load i8, ptr %i.ao, align 2, !tbaa !1306, !range !104, !noalias !3726, !noundef !105
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 59
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !1307, !range !104, !noalias !3726, !noundef !105
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.av = load i32, ptr %i.au, align 8, !tbaa !1308, !noalias !3726
  br label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i

bb.f:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1309, !noalias !3726
  %sext.i = shl i64 %.0157, 32
  %i.ay = ashr exact i64 %sext.i, 30
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3, !noalias !3726
  br label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i

_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i: ; preds = %bb.f, %bb.e, %bb.c
  %.0.i.i.i = phi i32 [ %i.ba, %bb.f ], [ %i.av, %bb.e ], [ %i.ac, %bb.c ]
  %i.bb = sext i32 %.0.i.i.i to i64
  %i.bc = shl nsw i64 %i.bb, 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.bc
  %.0.copyload.i.i.i = load i128, ptr %i.bd, align 1, !noalias !3726
  %i.be = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i128 %.0.copyload.i.i.i, ptr %5, align 16, !tbaa !3674, !alias.scope !3726
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !83, !noalias !3726 ; 2 uses
  %i.bh = load <2 x ptr>, ptr %i.be, align 8, !tbaa !86, !noalias !3726
  store <2 x ptr> %i.bh, ptr %i.w, align 16, !tbaa !86, !alias.scope !3726
  %.not.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i, label %.noexc42, label %bb.g

bb.g:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 3 uses
  %i.bj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26, !noalias !3726
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bj, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !3, !noalias !3726
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.bi, align 4, !tbaa !3, !noalias !3726
  br label %.noexc42

bb.i:                                             ; preds = %bb.g
  %i.bm = atomicrmw volatile add ptr %i.bi, i32 1 acq_rel, align 4, !noalias !3726 ; 0 uses
  br label %.noexc42

.noexc42:                                         ; preds = %bb.i, %bb.h, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i
  %i.bn = load ptr, ptr %i.ak, align 8, !tbaa !3586, !noalias !3729
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !3589, !noalias !3729
  %i.bq = mul nsw i32 %i.bp, %i.ac
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !159, !noalias !3729
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34, !noalias !3720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(32) %5, i64 16, i1 false), !noalias !3720
  %i.bu = load <16 x i8>, ptr %2, align 16, !tbaa !26
  %i.bv = shufflevector <16 x i8> %i.bu, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %i.bv, ptr %2, align 16, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34, !noalias !3720
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34, !noalias !3720
  call void @_ZN5folly11IPAddressV6C1ERKSt5arrayIhLm16EE(ptr noundef nonnull align 4 dereferenceable(18) %4, ptr noundef nonnull align 1 dereferenceable(16) %2) #34, !noalias !3720
  invoke void @_ZN8facebook5velox9functions16IPPrefixFunctionINS0_4exec10VectorExecEE12makeIPPrefixERKN5folly11IPAddressV6El(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.1964") align 16 %3, ptr noundef nonnull align 4 dereferenceable(18) %4, i64 noundef %i.bt)
          to label %.noexc3.i unwind label %bb.j, !noalias !3720

.noexc3.i:                                        ; preds = %.noexc42
  invoke void @_ZN8facebook5velox4exec9RowWriterIJnaEE10assignImplIJLm0ELm1EEEEvRKSt5tupleIJnaEESt16integer_sequenceImJXspT_EEE(ptr noundef nonnull align 8 dereferenceable(88) %i.ag, ptr noundef nonnull align 16 dereferenceable(32) %3)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE7iterateIJNS1_12VectorReaderISE_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_ENKUlRT_RT0_T1_E1_clINS1_9RowWriterIJnaEEEbmEEDaST_SV_SW_.exit unwind label %bb.j

bb.j:                                             ; preds = %.noexc3.i, %.noexc42
  %i.bw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @_ZN8facebook5velox4exec34CustomTypeWithCustomComparisonViewInED2Ev(ptr noundef nonnull align 16 dead_on_return(32) dereferenceable(32) %5) #34, !noalias !3720
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !3723
  br label %.body37

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE7iterateIJNS1_12VectorReaderISE_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_ENKUlRT_RT0_T1_E1_clINS1_9RowWriterIJnaEEEbmEEDaST_SV_SW_.exit: ; preds = %.noexc3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34, !noalias !3720
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34, !noalias !3720
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34, !noalias !3720
  store ptr null, ptr %6, align 8, !tbaa !720, !alias.scope !3732
  %i.bx = load ptr, ptr %i.x, align 8, !tbaa !83  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i, label %.noexc36.thread, label %bb.k

.noexc36.thread:                                  ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE7iterateIJNS1_12VectorReaderISE_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_ENKUlRT_RT0_T1_E1_clINS1_9RowWriterIJnaEEEbmEEDaST_SV_SW_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !3723
  br label %bb.w

bb.k:                                             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE7iterateIJNS1_12VectorReaderISE_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_ENKUlRT_RT0_T1_E1_clINS1_9RowWriterIJnaEEEbmEEDaST_SV_SW_.exit
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 4 uses
  %i.bz = load atomic i64, ptr %i.by acquire, align 8 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 4294967297
  %i.cb = trunc i64 %i.bz to i32                  ; 2 uses
  br i1 %i.ca, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.by, align 8, !tbaa !91
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  store i32 0, ptr %i.cc, align 4, !tbaa !93
  %i.cd = load ptr, ptr %i.bx, align 8, !tbaa !94
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #34, !inline_history !3682
  %i.cg = load ptr, ptr %i.bx, align 8, !tbaa !94
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #34, !inline_history !3682
  br label %.noexc36

bb.m:                                             ; preds = %bb.k
  %i.cj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i = icmp eq i8 %i.cj, 0
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ck = add nsw i32 %i.cb, -1
  store i32 %i.ck, ptr %i.by, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.cl = atomicrmw volatile add ptr %i.by, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i = phi i32 [ %i.cb, %bb.n ], [ %i.cl, %bb.o ]
  %i.cm = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.cm, label %bb.p, label %.noexc36, !prof !77

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #34
  br label %.noexc36

.noexc36:                                         ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.l
  %.pr = load ptr, ptr %6, align 8, !tbaa !720
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !3723
  %i.cn = icmp eq ptr %.pr, null
  br i1 %i.cn, label %bb.w, label %bb.q, !prof !3735

bb.q:                                             ; preds = %.noexc36
  %i.co = load ptr, ptr %i.aa, align 8, !tbaa !3652, !nonnull !105, !align !608
  invoke void @_ZN8facebook5velox6StatusC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 128
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !3567, !nonnull !105, !align !608
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %i.cq, i32 noundef %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE12ApplyContext8setErrorEiNS0_6StatusE.exit unwind label %bb.u

_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE12ApplyContext8setErrorEiNS0_6StatusE.exit: ; preds = %bb.r
  %i.cr = load ptr, ptr %7, align 8, !tbaa !720
  %.not.i = icmp eq ptr %i.cr, null
  br i1 %.not.i, label %_ZN8facebook5velox6StatusD2Ev.exit, label %bb.s, !prof !221

bb.s:                                             ; preds = %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE12ApplyContext8setErrorEiNS0_6StatusE.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %_ZN8facebook5velox6StatusD2Ev.exit

_ZN8facebook5velox6StatusD2Ev.exit:               ; preds = %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE12ApplyContext8setErrorEiNS0_6StatusE.exit, %bb.s
  %i.cs = load ptr, ptr %i.aa, align 8, !tbaa !3652, !nonnull !105, !align !608 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 120
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !3561 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 116
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3597
  %i.cx = load ptr, ptr %i.cu, align 8, !tbaa !94
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 144
  %i.cz = load ptr, ptr %i.cy, align 8
  invoke void %i.cz(ptr noundef nonnull align 8 dereferenceable(94) %i.cu, i32 noundef %i.cw, i1 noundef zeroext true)
          to label %.noexc47 unwind label %bb.t, !inline_history !3598

.noexc47:                                         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit
  %i.da = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !94
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.dd = load ptr, ptr %i.dc, align 8
  invoke void %i.dd(ptr noundef nonnull align 8 dereferenceable(112) %i.da)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_ENKUlST_E_clImEEDaST_.exit unwind label %bb.t, !inline_history !3598

bb.t:                                             ; preds = %bb.w, %.noexc47, %_ZN8facebook5velox6StatusD2Ev.exit, %bb.q
  %i.de = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook5velox6StatusD2Ev.exit50

bb.u:                                             ; preds = %bb.r
  %i.df = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.dg = load ptr, ptr %7, align 8, !tbaa !720
  %.not.i49 = icmp eq ptr %i.dg, null
  br i1 %.not.i49, label %_ZN8facebook5velox6StatusD2Ev.exit50, label %bb.v, !prof !221

bb.v:                                             ; preds = %bb.u
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %_ZN8facebook5velox6StatusD2Ev.exit50

bb.w:                                             ; preds = %.noexc36, %.noexc36.thread
  %i.dh = load ptr, ptr %i.aa, align 8, !tbaa !3652, !nonnull !105, !align !608 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 120
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !3561 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 116
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !3597
  %i.dm = load ptr, ptr %i.dj, align 8, !tbaa !94
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 144
  %i.do = load ptr, ptr %i.dn, align 8
  invoke void %i.do(ptr noundef nonnull align 8 dereferenceable(94) %i.dj, i32 noundef %i.dl, i1 noundef zeroext false)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_ENKUlST_E_clImEEDaST_.exit unwind label %bb.t, !inline_history !3684

_ZN8facebook5velox6StatusD2Ev.exit50:             ; preds = %bb.v, %bb.u, %bb.t
  %.pn.i35 = phi { ptr, i32 } [ %i.de, %bb.t ], [ %i.df, %bb.u ], [ %i.df, %bb.v ]
  %i.dp = load ptr, ptr %6, align 8, !tbaa !720
  %.not.i54 = icmp eq ptr %i.dp, null
  br i1 %.not.i54, label %_ZN8facebook5velox6StatusD2Ev.exit55, label %bb.x, !prof !221

bb.x:                                             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit50
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %_ZN8facebook5velox6StatusD2Ev.exit55

_ZN8facebook5velox6StatusD2Ev.exit55:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit50, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %.body37

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_ENKUlST_E_clImEEDaST_.exit: ; preds = %bb.w, %.noexc47
  %i.dq = load ptr, ptr %6, align 8, !tbaa !720
  %.not.i56 = icmp eq ptr %i.dq, null
  br i1 %.not.i56, label %_ZN8facebook5velox6StatusD2Ev.exit57, label %bb.y, !prof !221

bb.y:                                             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_ENKUlST_E_clImEEDaST_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %_ZN8facebook5velox6StatusD2Ev.exit57

_ZN8facebook5velox6StatusD2Ev.exit57:             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_ENKUlST_E_clImEEDaST_.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES9_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSB_INS0_10IPAddressTELb1EEElEEEJSG_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISG_EENS1_24ConstantFlatVectorReaderIlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSR_SV_EUlSV_E_ZNKSK_IS10_EEvSR_SV_EUlSV_E0_EEvRKNS0_17SelectivityVectorESV_SX_ENKUlSV_E_clImEEDaSV_.exit

.body37:                                          ; preds = %bb.j, %_ZN8facebook5velox6StatusD2Ev.exit55
  %eh.lpad-body38 = phi { ptr, i32 } [ %.pn.i35, %_ZN8facebook5velox6StatusD2Ev.exit55 ], [ %i.bw, %bb.j ] ; 3 uses
  %i.dr = extractvalue { ptr, i32 } %eh.lpad-body38, 0 ; 2 uses
  %i.ds = extractvalue { ptr, i32 } %eh.lpad-body38, 1 ; 2 uses
  %i.dt = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #34
  %i.du = icmp eq i32 %i.ds, %i.dt
  br i1 %i.du, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.body37
  %i.dv = call ptr @__cxa_begin_catch(ptr %i.dr) #34
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !742 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 144
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !7  ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 152
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !16
  %i.ec = icmp eq i64 %i.eb, 4
  br i1 %i.ec, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit
end_hunk_1
begin_hunk_2_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS3_10VectorExecEEESB_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSD_INS0_10IPAddressTELb1EEElEEEJSI_lEEEE8applyUdfIZNKSL_7iterateIJNS3_12VectorReaderISI_EENSO_IlEEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_EUlSW_E_ZNKSM_IS11_EEvSS_SW_EUlSW_E0_EEvRKNS0_17SelectivityVectorESW_SY_EUlSW_E_EEvPKmiibSW_ENKUlimE_clEim:bb.a
  invoke void @__cxa_end_catch()
          to label %.loopexit52 unwind label %bb.ap

.loopexit52:                                      ; preds = %bb.ac, %bb.ao, %bb.aj
  %.merged.i = phi { ptr, i32 } [ %.pn.i, %bb.aj ], [ %.pn16.i, %bb.ao ], [ %eh.lpad-body, %bb.ac ]
  resume { ptr, i32 } %.merged.i

bb.ap:                                            ; preds = %bb.ao, %bb.aj
  %i.gb = landingpad { ptr, i32 }
          catch ptr null
  %i.gc = extractvalue { ptr, i32 } %i.gb, 0
  call void @__clang_call_terminate(ptr %i.gc) #38
  unreachable

bb.aq:                                            ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES9_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSB_INS0_10IPAddressTELb1EEElEEEJSG_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISG_EENSM_IlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSK_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_ENKUlSU_E_clIiEEDaSU_.exit: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit36, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit47
  %i.gd = add i64 %.061, -1
  %i.ge = and i64 %i.gd, %.061                    ; 2 uses
  %.not10 = icmp eq i64 %i.ge, 0
  br i1 %.not10, label %.loopexit51, label %bb.b, !llvm.loop !3810

.loopexit51:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES9_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSB_INS0_10IPAddressTELb1EEElEEEJSG_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISG_EENSM_IlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSK_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_ENKUlSU_E_clIiEEDaSU_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS3_10VectorExecEEESB_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSD_INS0_10IPAddressTELb1EEElEEEJSI_lEEEE8applyUdfIZNKSL_7iterateIJNS3_12VectorReaderISI_EENSO_IlEEEEEvRNSL_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_EUlSW_E_ZNKSM_IS11_EEvSS_SW_EUlSW_E0_EEvRKNS0_17SelectivityVectorESW_SY_EUlSW_E_EEvPKmiibSW_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::array.1963", align 16 ; 6 uses
  %3 = alloca %"class.std::tuple.1964", align 16  ; 4 uses
  %4 = alloca %"class.folly::IPAddressV6", align 4 ; 4 uses
  %5 = alloca %"class.facebook::velox::exec::CustomTypeWithCustomComparisonView", align 16 ; 9 uses
  %6 = alloca %"class.facebook::velox::Status", align 8 ; 10 uses
  %7 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  %8 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %9 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %10 = alloca %"struct.std::array.1963", align 16 ; 6 uses
  %11 = alloca %"class.std::tuple.1964", align 16 ; 4 uses
  %12 = alloca %"class.folly::IPAddressV6", align 4 ; 4 uses
  %13 = alloca %"class.facebook::velox::exec::CustomTypeWithCustomComparisonView", align 16 ; 9 uses
  %14 = alloca %"class.facebook::velox::Status", align 8 ; 10 uses
  %15 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  %16 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %17 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !3811, !range !104, !noundef !105
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3813
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !159
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit132
  ]

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.as

bb.b:                                             ; preds = %bb.a
  %i.q = shl i32 %1, 6                            ; 3 uses
  %i.r = add i32 %i.q, 64
  %i.s = sext i32 %i.r to i64
  %.not160 = icmp eq i32 %i.q, -64
  br i1 %.not160, label %.loopexit132, label %.lr.ph159

.lr.ph159:                                        ; preds = %bb.b
  %i.t = sext i32 %i.q to i64
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph159, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES9_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSB_INS0_10IPAddressTELb1EEElEEEJSG_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISG_EENSM_IlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSK_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_ENKUlSU_E_clImEEDaSU_.exit
  %.0158 = phi i64 [ %i.t, %.lr.ph159 ], [ %i.gi, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES9_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSB_INS0_10IPAddressTELb1EEElEEEJSG_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISG_EENSM_IlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSK_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_ENKUlSU_E_clImEEDaSU_.exit ] ; 4 uses
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !3753 ; 2 uses
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !3756, !nonnull !105, !align !608 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !3757, !nonnull !105, !align !608 ; 2 uses
  %i.ac = trunc i64 %.0158 to i32                 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 116
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !3597
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !3759, !nonnull !105, !align !608 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !3760, !noalias !3814, !nonnull !105, !align !608 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !3766, !noalias !3814, !nonnull !105, !align !608
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34, !noalias !3817
  call void @llvm.experimental.noalias.scope.decl(metadata !3820)
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !3671, !noalias !3820, !nonnull !105, !align !608 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1305, !noalias !3820
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 58
  %i.ap = load i8, ptr %i.ao, align 2, !tbaa !1306, !range !104, !noalias !3820, !noundef !105
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 59
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !1307, !range !104, !noalias !3820, !noundef !105
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.av = load i32, ptr %i.au, align 8, !tbaa !1308, !noalias !3820
  br label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i

bb.f:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1309, !noalias !3820
  %sext.i = shl i64 %.0158, 32
  %i.ay = ashr exact i64 %sext.i, 30
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3, !noalias !3820
  br label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i

_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i: ; preds = %bb.f, %bb.e, %bb.c
  %.0.i.i.i = phi i32 [ %i.ba, %bb.f ], [ %i.av, %bb.e ], [ %i.ac, %bb.c ]
  %i.bb = sext i32 %.0.i.i.i to i64
  %i.bc = shl nsw i64 %i.bb, 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.bc
  %.0.copyload.i.i.i = load i128, ptr %i.bd, align 1, !noalias !3820
  %i.be = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i128 %.0.copyload.i.i.i, ptr %5, align 16, !tbaa !3674, !alias.scope !3820
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !83, !noalias !3820 ; 2 uses
  %i.bh = load <2 x ptr>, ptr %i.be, align 8, !tbaa !86, !noalias !3820
  store <2 x ptr> %i.bh, ptr %i.w, align 16, !tbaa !86, !alias.scope !3820
  %.not.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i, label %.noexc38, label %bb.g

bb.g:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 3 uses
  %i.bj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26, !noalias !3820
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bj, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !3, !noalias !3820
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.bi, align 4, !tbaa !3, !noalias !3820
  br label %.noexc38

bb.i:                                             ; preds = %bb.g
  %i.bm = atomicrmw volatile add ptr %i.bi, i32 1 acq_rel, align 4, !noalias !3820 ; 0 uses
  br label %.noexc38

.noexc38:                                         ; preds = %bb.i, %bb.h, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i
  %i.bn = load ptr, ptr %i.ak, align 8, !tbaa !3773, !noalias !3823, !nonnull !105, !align !608 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1305, !noalias !3823
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 58
  %i.br = load i8, ptr %i.bq, align 2, !tbaa !1306, !range !104, !noalias !3823, !noundef !105
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit, label %bb.j

bb.j:                                             ; preds = %.noexc38
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 59
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !1307, !range !104, !noalias !3823, !noundef !105
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !1308, !noalias !3823
  br label %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit

bb.l:                                             ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !1309, !noalias !3823
  %sext.i41 = shl i64 %.0158, 32
  %i.ca = ashr exact i64 %sext.i41, 30
  %i.cb = getelementptr inbounds i8, ptr %i.bz, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3, !noalias !3823
  br label %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit

_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit: ; preds = %.noexc38, %bb.k, %bb.l
  %.0.i.i.i42 = phi i32 [ %i.cc, %bb.l ], [ %i.bx, %bb.k ], [ %i.ac, %.noexc38 ]
  %i.cd = sext i32 %.0.i.i.i42 to i64
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.cd
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !159, !noalias !3823
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34, !noalias !3826
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(32) %5, i64 16, i1 false), !noalias !3826
  %i.cg = load <16 x i8>, ptr %2, align 16, !tbaa !26
  %i.ch = shufflevector <16 x i8> %i.cg, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %i.ch, ptr %2, align 16, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34, !noalias !3826
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34, !noalias !3826
  call void @_ZN5folly11IPAddressV6C1ERKSt5arrayIhLm16EE(ptr noundef nonnull align 4 dereferenceable(18) %4, ptr noundef nonnull align 1 dereferenceable(16) %2) #34, !noalias !3826
  invoke void @_ZN8facebook5velox9functions16IPPrefixFunctionINS0_4exec10VectorExecEE12makeIPPrefixERKN5folly11IPAddressV6El(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.1964") align 16 %3, ptr noundef nonnull align 4 dereferenceable(18) %4, i64 noundef %i.cf)
          to label %.noexc3.i unwind label %bb.m, !noalias !3814

.noexc3.i:                                        ; preds = %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit
  invoke void @_ZN8facebook5velox4exec9RowWriterIJnaEE10assignImplIJLm0ELm1EEEEvRKSt5tupleIJnaEESt16integer_sequenceImJXspT_EEE(ptr noundef nonnull align 8 dereferenceable(88) %i.ag, ptr noundef nonnull align 16 dereferenceable(32) %3)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE7iterateIJNS1_12VectorReaderISE_EENSJ_IlEEEEEvRNSH_12ApplyContextEDpRT_ENKUlRT_RT0_T1_E1_clINS1_9RowWriterIJnaEEEbmEEDaSS_SU_SV_.exit unwind label %bb.m

bb.m:                                             ; preds = %.noexc3.i, %_ZNK8facebook5velox4exec12VectorReaderIlEixEm.exit
  %i.ci = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  call void @_ZN8facebook5velox4exec34CustomTypeWithCustomComparisonViewInED2Ev(ptr noundef nonnull align 16 dead_on_return(32) dereferenceable(32) %5) #34, !noalias !3814
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !3817
  br label %.body33

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE7iterateIJNS1_12VectorReaderISE_EENSJ_IlEEEEEvRNSH_12ApplyContextEDpRT_ENKUlRT_RT0_T1_E1_clINS1_9RowWriterIJnaEEEbmEEDaSS_SU_SV_.exit: ; preds = %.noexc3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34, !noalias !3826
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34, !noalias !3826
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34, !noalias !3826
  store ptr null, ptr %6, align 8, !tbaa !720, !alias.scope !3829
  %i.cj = load ptr, ptr %i.x, align 8, !tbaa !83  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i, label %.noexc32.thread, label %bb.n

.noexc32.thread:                                  ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE7iterateIJNS1_12VectorReaderISE_EENSJ_IlEEEEEvRNSH_12ApplyContextEDpRT_ENKUlRT_RT0_T1_E1_clINS1_9RowWriterIJnaEEEbmEEDaSS_SU_SV_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !3817
  br label %bb.z

bb.n:                                             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE7iterateIJNS1_12VectorReaderISE_EENSJ_IlEEEEEvRNSH_12ApplyContextEDpRT_ENKUlRT_RT0_T1_E1_clINS1_9RowWriterIJnaEEEbmEEDaSS_SU_SV_.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 4 uses
  %i.cl = load atomic i64, ptr %i.ck acquire, align 8 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, 4294967297
  %i.cn = trunc i64 %i.cl to i32                  ; 2 uses
  br i1 %i.cm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.ck, align 8, !tbaa !91
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  store i32 0, ptr %i.co, align 4, !tbaa !93
  %i.cp = load ptr, ptr %i.cj, align 8, !tbaa !94
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #34, !inline_history !3682
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !94
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #34, !inline_history !3682
  br label %.noexc32

bb.p:                                             ; preds = %bb.n
  %i.cv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i = icmp eq i8 %i.cv, 0
  br i1 %.not.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cw = add nsw i32 %i.cn, -1
  store i32 %i.cw, ptr %i.ck, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.cx = atomicrmw volatile add ptr %i.ck, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i = phi i32 [ %i.cn, %bb.q ], [ %i.cx, %bb.r ]
  %i.cy = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.cy, label %bb.s, label %.noexc32, !prof !77

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #34
  br label %.noexc32

.noexc32:                                         ; preds = %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.o
  %.pr = load ptr, ptr %6, align 8, !tbaa !720
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !3817
  %i.cz = icmp eq ptr %.pr, null
  br i1 %i.cz, label %bb.z, label %bb.t, !prof !3735

bb.t:                                             ; preds = %.noexc32
  %i.da = load ptr, ptr %i.aa, align 8, !tbaa !3757, !nonnull !105, !align !608
  invoke void @_ZN8facebook5velox6StatusC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 128
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !3567, !nonnull !105, !align !608
  invoke void @_ZN8facebook5velox4exec7EvalCtx9setStatusEiRKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(104) %i.dc, i32 noundef %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE12ApplyContext8setErrorEiNS0_6StatusE.exit unwind label %bb.x

_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE12ApplyContext8setErrorEiNS0_6StatusE.exit: ; preds = %bb.u
  %i.dd = load ptr, ptr %7, align 8, !tbaa !720
  %.not.i = icmp eq ptr %i.dd, null
  br i1 %.not.i, label %_ZN8facebook5velox6StatusD2Ev.exit, label %bb.v, !prof !221

bb.v:                                             ; preds = %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE12ApplyContext8setErrorEiNS0_6StatusE.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %_ZN8facebook5velox6StatusD2Ev.exit

_ZN8facebook5velox6StatusD2Ev.exit:               ; preds = %_ZN8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE12ApplyContext8setErrorEiNS0_6StatusE.exit, %bb.v
  %i.de = load ptr, ptr %i.aa, align 8, !tbaa !3757, !nonnull !105, !align !608 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 120
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !3561 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 116
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3597
  %i.dj = load ptr, ptr %i.dg, align 8, !tbaa !94
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 144
  %i.dl = load ptr, ptr %i.dk, align 8
  invoke void %i.dl(ptr noundef nonnull align 8 dereferenceable(94) %i.dg, i32 noundef %i.di, i1 noundef zeroext true)
          to label %.noexc45 unwind label %bb.w, !inline_history !3598

.noexc45:                                         ; preds = %_ZN8facebook5velox6StatusD2Ev.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !94
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dp = load ptr, ptr %i.do, align 8
  invoke void %i.dp(ptr noundef nonnull align 8 dereferenceable(112) %i.dm)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EENSK_IlEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_ENKUlSS_E_clImEEDaSS_.exit unwind label %bb.w, !inline_history !3598

bb.w:                                             ; preds = %bb.z, %.noexc45, %_ZN8facebook5velox6StatusD2Ev.exit, %bb.t
  %i.dq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %_ZN8facebook5velox6StatusD2Ev.exit48

bb.x:                                             ; preds = %bb.u
  %i.dr = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.ds = load ptr, ptr %7, align 8, !tbaa !720
  %.not.i47 = icmp eq ptr %i.ds, null
  br i1 %.not.i47, label %_ZN8facebook5velox6StatusD2Ev.exit48, label %bb.y, !prof !221

bb.y:                                             ; preds = %bb.x
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %_ZN8facebook5velox6StatusD2Ev.exit48

bb.z:                                             ; preds = %.noexc32, %.noexc32.thread
  %i.dt = load ptr, ptr %i.aa, align 8, !tbaa !3757, !nonnull !105, !align !608 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 120
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !3561 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 116
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !3597
  %i.dy = load ptr, ptr %i.dv, align 8, !tbaa !94
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 144
  %i.ea = load ptr, ptr %i.dz, align 8
  invoke void %i.ea(ptr noundef nonnull align 8 dereferenceable(94) %i.dv, i32 noundef %i.dx, i1 noundef zeroext false)
          to label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EENSK_IlEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_ENKUlSS_E_clImEEDaSS_.exit unwind label %bb.w, !inline_history !3684

_ZN8facebook5velox6StatusD2Ev.exit48:             ; preds = %bb.y, %bb.x, %bb.w
  %.pn.i31 = phi { ptr, i32 } [ %i.dq, %bb.w ], [ %i.dr, %bb.x ], [ %i.dr, %bb.y ]
  %i.eb = load ptr, ptr %6, align 8, !tbaa !720
  %.not.i52 = icmp eq ptr %i.eb, null
  br i1 %.not.i52, label %_ZN8facebook5velox6StatusD2Ev.exit53, label %bb.aa, !prof !221

bb.aa:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit48
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %_ZN8facebook5velox6StatusD2Ev.exit53

_ZN8facebook5velox6StatusD2Ev.exit53:             ; preds = %_ZN8facebook5velox6StatusD2Ev.exit48, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %.body33

_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EENSK_IlEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_ENKUlSS_E_clImEEDaSS_.exit: ; preds = %bb.z, %.noexc45
  %i.ec = load ptr, ptr %6, align 8, !tbaa !720
  %.not.i54 = icmp eq ptr %i.ec, null
  br i1 %.not.i54, label %_ZN8facebook5velox6StatusD2Ev.exit55, label %bb.ab, !prof !221

bb.ab:                                            ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EENSK_IlEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_ENKUlSS_E_clImEEDaSS_.exit
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %_ZN8facebook5velox6StatusD2Ev.exit55

_ZN8facebook5velox6StatusD2Ev.exit55:             ; preds = %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES7_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNS9_INS0_10IPAddressTELb1EEElEEEJSE_lEEEE8applyUdfIZNKSH_7iterateIJNS1_12VectorReaderISE_EENSK_IlEEEEEvRNSH_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSO_SS_ENKUlSS_E_clImEEDaSS_.exit, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16IPPrefixFunctionINS1_10VectorExecEEES9_NS0_10CustomTypeINS0_9IPPrefixTELb0EEENS0_15ConstantCheckerIJNSB_INS0_10IPAddressTELb1EEElEEEJSG_lEEEE8applyUdfIZNKSJ_7iterateIJNS1_12VectorReaderISG_EENSM_IlEEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSQ_SU_EUlSU_E_ZNKSK_ISZ_EEvSQ_SU_EUlSU_E0_EEvRKNS0_17SelectivityVectorESU_SW_ENKUlSU_E_clImEEDaSU_.exit

.body33:                                          ; preds = %bb.m, %_ZN8facebook5velox6StatusD2Ev.exit53
  %eh.lpad-body34 = phi { ptr, i32 } [ %.pn.i31, %_ZN8facebook5velox6StatusD2Ev.exit53 ], [ %i.ci, %bb.m ] ; 3 uses
  %i.ed = extractvalue { ptr, i32 } %eh.lpad-body34, 0 ; 2 uses
  %i.ee = extractvalue { ptr, i32 } %eh.lpad-body34, 1 ; 2 uses
  %i.ef = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #34
  %i.eg = icmp eq i32 %i.ee, %i.ef
  br i1 %i.eg, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.body33
  %i.eh = call ptr @__cxa_begin_catch(ptr %i.ed) #34
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !742 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 144
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !7  ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 152
  %i.en = load i64, ptr %i.em, align 8, !tbaa !16
  %i.eo = icmp eq i64 %i.en, 4
  br i1 %i.eo, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit
end_hunk_2
