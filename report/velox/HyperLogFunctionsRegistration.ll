inline.NumInlined: 10269
inline.NumDeleted: 3544
begin_hunk_0_@_ZNSt23_Sp_counted_ptr_inplaceIKN8facebook5velox4core22SimpleFunctionMetadataINS1_9functions22EmptyApproxSetFunctionINS1_4exec10VectorExecEEENS1_10CustomTypeINS1_12HyperLogLogTELb0EEENS1_15ConstantCheckerIJEEEJEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:bb.a

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #31
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions22EmptyApproxSetFunctionINS0_4exec10VectorExecEEENS0_10CustomTypeINS0_12HyperLogLogTELb0EEENS0_15ConstantCheckerIJEEEJEEC2EbRKSt6vectorINS5_17SignatureVariableESaISF_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.facebook::velox::core::SimpleFunctionMetadata<facebook::velox::functions::EmptyApproxSetFunction<facebook::velox::exec::VectorExec>, facebook::velox::CustomType<facebook::velox::HyperLogLogT>, facebook::velox::ConstantChecker<>>::SignatureTypesAnalysisResults", align 8 ; 14 uses
  %i.a = zext i1 %1 to i8
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions22EmptyApproxSetFunctionINS0_4exec10VectorExecEEENS0_10CustomTypeINS0_12HyperLogLogTELb0EEENS0_15ConstantCheckerIJEEEJEEE, i64 16), ptr %0, align 8, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.a, ptr %i.b, align 8, !tbaa !1421
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  invoke void @_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions22EmptyApproxSetFunctionINS0_4exec10VectorExecEEENS0_10CustomTypeINS0_12HyperLogLogTELb0EEENS0_15ConstantCheckerIJEEEJEE21analyzeSignatureTypesERKSt6vectorINS5_17SignatureVariableESaISF_EE(ptr dead_on_unwind nonnull writable sret(%"struct.facebook::velox::core::SimpleFunctionMetadata<facebook::velox::functions::EmptyApproxSetFunction<facebook::velox::exec::VectorExec>, facebook::velox::CustomType<facebook::velox::HyperLogLogT>, facebook::velox::ConstantChecker<>>::SignatureTypesAnalysisResults") align 8 %3, ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %bb.s

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions22EmptyApproxSetFunctionINS0_4exec10VectorExecEEENS0_10CustomTypeINS0_12HyperLogLogTELb0EEENS0_15ConstantCheckerIJEEEJEE14buildSignatureERKNSD_29SignatureTypesAnalysisResultsE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(160) %3)
          to label %bb.c unwind label %bb.t

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 105
  %i.h = load i8, ptr %i.g, align 1, !tbaa !88, !range !68, !noundef !69
  %i.i = trunc nuw i8 %i.h to i1                  ; 4 uses
  %i.j = load i8, ptr %i.f, align 8, !range !68
  %i.k = trunc nuw i8 %i.j to i1                  ; 2 uses
  %or.cond.i.i = select i1 %i.i, i1 true, i1 %i.k
  br i1 %or.cond.i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not.i.i = xor i1 %i.k, true
  %or.cond4.i.i = or i1 %i.i, %.not.i.i
  br i1 %or.cond4.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 106
  %i.m = load i8, ptr %i.l, align 2, !range !68
  %i.n = trunc nuw i8 %i.m to i1                  ; 2 uses
  %.not9.i.i = xor i1 %i.n, true
  %or.cond8.not.i.i = select i1 %i.i, i1 %.not9.i.i, i1 false
  %brmerge.i.i = select i1 %i.i, i1 true, i1 %i.n
  %.mux.i.i = select i1 %or.cond8.not.i.i, i32 3, i32 4
  br i1 %brmerge.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4core19TypeAnalysisResults5Stats7getRankEvE18veloxCheckFailArgs_2, ptr noundef nonnull @.str.32) #36
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0.i.i = phi i32 [ %.mux.i.i, %bb.e ], [ 2, %bb.d ], [ 1, %bb.c ]
  %i.o = mul nuw nsw i32 %.0.i.i, 1000000
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.q = load i64, ptr %i.p, align 8, !tbaa !90
  %i.r = trunc i64 %i.q to i32
  %i.s = sub i32 %i.o, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.s, ptr %i.t, align 8, !tbaa !1423
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !92
  store ptr %i.v, ptr %i.d, align 8, !tbaa !92
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !47   ; 4 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !47   ; 3 uses
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
  %.pr.pre.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !47
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
  store i32 0, ptr %i.ag, align 8, !tbaa !55
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 0, ptr %i.ak, align 4, !tbaa !57
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !58
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #31, !inline_history !93
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !58
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #31, !inline_history !93
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
  br i1 %i.au, label %bb.q, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !41

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #31
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.m, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.y, ptr %i.w, align 8, !tbaa !47
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit: ; preds = %bb.g, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.aw = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %bb.r unwind label %bb.t       ; 0 uses

bb.r:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit
  call void @_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions22EmptyApproxSetFunctionINS0_4exec10VectorExecEEENS0_10CustomTypeINS0_12HyperLogLogTELb0EEENS0_15ConstantCheckerIJEEEJEE29SignatureTypesAnalysisResultsD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret void

bb.s:                                             ; preds = %bb.a
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.f, %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit, %bb.b
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions22EmptyApproxSetFunctionINS0_4exec10VectorExecEEENS0_10CustomTypeINS0_12HyperLogLogTELb0EEENS0_15ConstantCheckerIJEEEJEE29SignatureTypesAnalysisResultsD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %3) #31
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.t ], [ %i.ax, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.e) #31
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #31
  call void @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #31
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions22EmptyApproxSetFunctionINS0_4exec10VectorExecEEENS0_10CustomTypeINS0_12HyperLogLogTELb0EEENS0_15ConstantCheckerIJEEEJEE21analyzeSignatureTypesERKSt6vectorINS5_17SignatureVariableESaISF_EE(ptr dead_on_unwind noalias writable sret(%"struct.facebook::velox::core::SimpleFunctionMetadata<facebook::velox::functions::EmptyApproxSetFunction<facebook::velox::exec::VectorExec>, facebook::velox::CustomType<facebook::velox::HyperLogLogT>, facebook::velox::ConstantChecker<>>::SignatureTypesAnalysisResults") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %4 = alloca %"class.std::vector", align 16      ; 10 uses
  %5 = alloca %"struct.facebook::velox::core::TypeAnalysisResults", align 8 ; 24 uses
  %6 = alloca %"struct.facebook::velox::core::TypeAnalysis.44", align 1 ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::shared_ptr.18", align 16 ; 7 uses
  %9 = alloca %"class.std::vector.21", align 8    ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store i8 0, ptr %5, align 8, !tbaa !94
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 1
  store i8 0, ptr %i.a, align 1, !tbaa !88
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i8 0, ptr %i.b, align 2, !tbaa !95
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !90
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.d)
          to label %bb.b unwind label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 392 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 416 ; 10 uses
  store i32 0, ptr %i.f, align 8, !tbaa !96
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 424 ; 5 uses
  store ptr null, ptr %i.g, align 8, !tbaa !101
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 432 ; 5 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !102
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 440 ; 4 uses
  store ptr %i.f, ptr %i.i, align 8, !tbaa !103
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 448 ; 6 uses
  store i64 0, ptr %i.j, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  invoke void @_ZN8facebook5velox4core12TypeAnalysisINS0_10CustomTypeINS0_12HyperLogLogTELb0EEEE3runERNS1_19TypeAnalysisResultsE(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(456) %5)
          to label %bb.c unwind label %bb.t

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !1424)
  call void @llvm.experimental.noalias.scope.decl(metadata !1427)
  call void @llvm.experimental.noalias.scope.decl(metadata !1430)
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 12 uses
  store ptr %i.k, ptr %7, align 8, !tbaa !40, !alias.scope !1433
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i64 0, ptr %i.l, align 8, !tbaa !16, !alias.scope !1433
  store i8 0, ptr %i.k, align 8, !tbaa !26, !alias.scope !1433
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !115, !noalias !1433 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.n, null
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !noalias !1433 ; 2 uses
  %i.q = icmp ugt ptr %i.n, %i.p
  %.08.i.i.i.i = select i1 %i.q, ptr %i.n, ptr %i.p ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !119, !noalias !1433 ; 2 uses
  %i.t = ptrtoint ptr %.08.i.i.i.i to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef %i.s, i64 noundef %i.v)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %7, align 8, !tbaa !7, !alias.scope !1433 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.k
  br i1 %i.z, label %.body, label %.body.sink.split

bb.f:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit unwind label %bb.e

_ZN8facebook5velox4core19TypeAnalysisResults12typeAsStringB5cxx11Ev.exit: ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 400
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !47 ; 2 uses
  %i.ae = load <2 x ptr>, ptr %i.e, align 8, !tbaa !50
  store <2 x ptr> %i.ae, ptr %8, align 16, !tbaa !50
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
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.ak = load ptr, ptr %2, align 8, !tbaa !126   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !126 ; 2 uses
  %i.an = icmp eq ptr %i.ak, %i.am
  br i1 %i.an, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 408 ; 3 uses
  br label %bb.u

._crit_edge:                                      ; preds = %bb.ae, %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aq = load <2 x ptr>, ptr %4, align 16, !tbaa !46
  store <2 x ptr> %i.aq, ptr %0, align 8, !tbaa !46
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 16, !tbaa !20
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  store ptr %i.av, ptr %i.au, align 8, !tbaa !40
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
  %i.bg = load ptr, ptr %i.g, align 8, !tbaa !101 ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i23, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.bh = load i32, ptr %i.f, align 8, !tbaa !96
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.bg, ptr %i.bi, align 8, !tbaa !101
  %i.bj = load ptr, ptr %i.h, align 8, !tbaa !102
  %i.bk = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bf, ptr %i.bl, align 8, !tbaa !127
  %i.bm = load i64, ptr %i.j, align 8, !tbaa !104
  store ptr null, ptr %i.g, align 8, !tbaa !101
  store ptr %i.f, ptr %i.h, align 8, !tbaa !102
  store ptr %i.f, ptr %i.i, align 8, !tbaa !103
  store i64 0, ptr %i.j, align 8, !tbaa !104
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEEC2EOSG_.exit

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.bn, align 8, !tbaa !101
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEEC2EOSG_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEEC2EOSG_.exit: ; preds = %bb.k, %bb.l
  %.sink64 = phi ptr [ %i.bf, %bb.l ], [ %i.bj, %bb.k ]
  %.sink63 = phi ptr [ %i.bf, %bb.l ], [ %i.bk, %bb.k ]
  %.sink = phi i64 [ 0, %bb.l ], [ %i.bm, %bb.k ]
  %.sink.i.i.i.i = phi i32 [ 0, %bb.l ], [ %i.bh, %bb.k ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sink64, ptr %i.bo, align 8, !tbaa !102
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.sink63, ptr %i.bp, align 8, !tbaa !103
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %.sink, ptr %i.bq, align 8, !tbaa !104
  store i32 %.sink.i.i.i.i, ptr %i.bf, align 8, !tbaa !96
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !128
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bt = load ptr, ptr %i.ab, align 8, !tbaa !47 ; 2 uses
  %i.bu = load <2 x ptr>, ptr %8, align 16, !tbaa !50
  store <2 x ptr> %i.bu, ptr %i.bs, align 8, !tbaa !50
  %.not.i.i.i24 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i24, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit26.thread, label %bb.m

bb.m:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEEC2EOSG_.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 3 uses
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i25 = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.i.i25, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit26, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = load i32, ptr %i.bv, align 4, !tbaa !3
  %i.by = add nsw i32 %i.bx, 1
  store i32 %i.by, ptr %i.bv, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit26.thread

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit26.thread: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEEC2EOSG_.exit, %bb.n
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %11, align 8
  br label %.noexc28.thread

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit26: ; preds = %bb.m
  %13 = atomicrmw volatile add ptr %i.bv, i32 1 acq_rel, align 4 ; 0 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.pre65.a = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !130 ; 3 uses
  %.pre66.a = load ptr, ptr %9, align 8, !tbaa !131 ; 4 uses
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %15 = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bz = ptrtoint ptr %.pre65.a to i64
  %i.ca = ptrtoint ptr %.pre66.a to i64
  %i.cb = sub i64 %i.bz, %i.ca                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %.not.i.i.i.i27 = icmp eq ptr %.pre65.a, %.pre66.a
  br i1 %.not.i.i.i.i27, label %.noexc28.thread, label %bb.o

.noexc28.thread:                                  ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit26.thread, %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit26
  %16 = phi ptr [ %12, %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit26.thread ], [ %15, %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit26 ]
  %17 = phi ptr [ %11, %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit26.thread ], [ %14, %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit26 ]
  %18 = phi ptr [ null, %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit26.thread ], [ %.pre66.a, %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit26 ]
  store ptr null, ptr %17, align 8, !tbaa !131
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr null, ptr %i.cc, align 8, !tbaa !130
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr null, ptr %i.cd, align 8, !tbaa !132
  br label %.loopexit

bb.o:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit26
  %i.ce = icmp ugt i64 %i.cb, 9223372036854775792
  br i1 %i.ce, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4TypeEEE8allocateEmPKv.exit.i.i.i.i, !prof !41

.noexc.i.i:                                       ; preds = %bb.o
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #36
          to label %.noexc unwind label %bb.au

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4TypeEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.o
  %i.cf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #34
          to label %.noexc28 unwind label %bb.au  ; 4 uses

.noexc28:                                         ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4TypeEEE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.cf, ptr %14, align 8, !tbaa !131
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !130
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cb
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !132
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc28, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.cs, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.cf, %.noexc28 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.cr, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %.pre66.a, %.noexc28 ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !47 ; 2 uses
  %i.cl = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i, align 8, !tbaa !50
  store <2 x ptr> %i.cl, ptr %.08.i.i.i.i.i, align 8, !tbaa !50
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
  br i1 %i.ct, label %.loopexit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !133

bb.s:                                             ; preds = %bb.a
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.t:                                             ; preds = %bb.b
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.aw

bb.u:                                             ; preds = %.lr.ph, %bb.ae
  %.sroa.053.059 = phi ptr [ %i.ak, %.lr.ph ], [ %i.ev, %bb.ae ] ; 8 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.053.059, i64 64
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !134
  %i.cy = icmp eq i8 %i.cx, 1
  br i1 %i.cy, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.053.059, i64 40
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !16
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.w, label %bb.ab, !prof !41

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !1434
  %i.dc = load ptr, ptr %.sroa.053.059, align 8, !tbaa !7, !noalias !1434
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.053.059, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !16, !noalias !1434
  %i.df = ptrtoint ptr %i.dc to i64
  store i64 %i.df, ptr %3, align 16, !noalias !1434
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.de, ptr %.sroa_idx3.i, align 8, !noalias !1434
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nonnull @.str.9, i64 38, i64 13, ptr nonnull %3)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !1434
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions22EmptyApproxSetFunctionINS0_4exec10VectorExecEEENS0_10CustomTypeINS0_12HyperLogLogTELb0EEENS0_15ConstantCheckerIJEEEJEE21analyzeSignatureTypesERKSt6vectorINS5_17SignatureVariableESaISF_EEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr nonnull @.str.9) #36
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %bb.w
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.aa:                                            ; preds = %bb.x
  %i.dh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.di = load ptr, ptr %10, align 8, !tbaa !7    ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.aa
  %i.dl = load i64, ptr %i.dj, align 8, !tbaa !26
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dm) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.z
  %.pn = phi { ptr, i32 } [ %i.dg, %bb.z ], [ %i.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.dh, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.av

bb.ab:                                            ; preds = %bb.v, %bb.u
  %i.dn = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE11equal_rangeERS7_(ptr noundef nonnull align 8 dereferenceable(48) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.053.059)
          to label %.noexc30 unwind label %bb.af  ; 2 uses

.noexc30:                                         ; preds = %bb.ab
  %i.do = extractvalue { ptr, ptr } %i.dn, 0      ; 3 uses
  %i.dp = extractvalue { ptr, ptr } %i.dn, 1      ; 3 uses
  %i.dq = load ptr, ptr %i.h, align 8, !tbaa !102
  %i.dr = icmp eq ptr %i.do, %i.dq
  %i.ds = icmp eq ptr %i.dp, %i.f
  %or.cond = select i1 %i.dr, i1 %i.ds, i1 false
  br i1 %or.cond, label %bb.ac, label %.critedge.i.i.i

bb.ac:                                            ; preds = %.noexc30
  %i.dt = load ptr, ptr %i.g, align 8, !tbaa !101
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ao, ptr noundef %i.dt)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE5clearEv.exit.i.i.i unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  call void @__clang_call_terminate(ptr %i.dv) #37
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE5clearEv.exit.i.i.i: ; preds = %bb.ac
  store ptr null, ptr %i.g, align 8, !tbaa !101
  store ptr %i.f, ptr %i.h, align 8, !tbaa !102
  store ptr %i.f, ptr %i.i, align 8, !tbaa !103
  store i64 0, ptr %i.j, align 8, !tbaa !104
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5eraseERSD_.exit

.critedge.i.i.i:                                  ; preds = %.noexc30
  %i.dw = icmp eq ptr %i.do, %i.dp
  br i1 %i.dw, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5eraseERSD_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge.i.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISC_E.exit
  %.sroa.06.08.i.i.i = phi ptr [ %i.dx, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISC_E.exit ], [ %i.do, %.critedge.i.i.i ] ; 2 uses
  %i.dx = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.06.08.i.i.i) #38 ; 2 uses
  %i.dy = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.06.08.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.f) #31 ; 7 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 96
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !7  ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 112 ; 2 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !26
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eg) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.eh = load ptr, ptr %i.ea, align 8, !tbaa !7  ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dy, i64 80 ; 2 uses
  %i.ej = icmp eq ptr %i.eh, %i.ei
  br i1 %i.ej, label %_ZN8facebook5velox4exec17SignatureVariableD2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.ek = load i64, ptr %i.ei, align 8, !tbaa !26
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.el) #35
  br label %_ZN8facebook5velox4exec17SignatureVariableD2Ev.exit.i.i.i.i.i

_ZN8facebook5velox4exec17SignatureVariableD2Ev.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  %i.em = load ptr, ptr %i.dz, align 8, !tbaa !7  ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dy, i64 48 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISC_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i49: ; preds = %_ZN8facebook5velox4exec17SignatureVariableD2Ev.exit.i.i.i.i.i
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !26
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eq) #35
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISC_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISC_E.exit: ; preds = %_ZN8facebook5velox4exec17SignatureVariableD2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i49
  call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef 136) #35
  %i.er = load i64, ptr %i.j, align 8, !tbaa !104
  %i.es = add i64 %i.er, -1
  store i64 %i.es, ptr %i.j, align 8, !tbaa !104
  %i.et = icmp eq ptr %i.dx, %i.dp
  br i1 %i.et, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5eraseERSD_.exit, label %.lr.ph.i.i.i, !llvm.loop !140

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5eraseERSD_.exit: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISC_E.exit, %.critedge.i.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE5clearEv.exit.i.i.i
  %i.eu = invoke { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE7emplaceIJRSD_RKS9_EEESC_ISt17_Rb_tree_iteratorISE_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.053.059, ptr noundef nonnull align 8 dereferenceable(68) %.sroa.053.059)
          to label %bb.ae unwind label %bb.af     ; 0 uses

bb.ae:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5eraseERSD_.exit
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.053.059, i64 72 ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.am
  br i1 %i.ew, label %._crit_edge, label %bb.u

bb.af:                                            ; preds = %bb.ab, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEE5eraseERSD_.exit
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.loopexit.loopexit:                               ; preds = %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.pre67 = load ptr, ptr %9, align 8, !tbaa !131
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.noexc28.thread
  %i.ey = phi ptr [ %16, %.noexc28.thread ], [ %15, %.loopexit.loopexit ]
  %i.ez = phi ptr [ %18, %.noexc28.thread ], [ %.pre67, %.loopexit.loopexit ] ; 3 uses
  %i.fa = phi ptr [ %i.cc, %.noexc28.thread ], [ %i.cg, %.loopexit.loopexit ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %.noexc28.thread ], [ %i.cs, %.loopexit.loopexit ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.fa, align 8, !tbaa !130
  %19 = load ptr, ptr %i.ey, align 8, !tbaa !130  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ez, %19
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i31

.lr.ph.i.i.i31:                                   ; preds = %.loopexit, %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fs, %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i ], [ %i.ez, %.loopexit ] ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !47 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i.i31
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 4 uses
  %i.fe = load atomic i64, ptr %i.fd acquire, align 8 ; 2 uses
  %i.ff = icmp eq i64 %i.fe, 4294967297
  %i.fg = trunc i64 %i.fe to i32                  ; 2 uses
  br i1 %i.ff, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.fd, align 8, !tbaa !55
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 12
  store i32 0, ptr %i.fh, align 4, !tbaa !57
  %i.fi = load ptr, ptr %i.fc, align 8, !tbaa !58
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(16) %i.fc) #31, !inline_history !141
  %i.fl = load ptr, ptr %i.fc, align 8, !tbaa !58
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(16) %i.fc) #31, !inline_history !141
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
  br i1 %i.fr, label %bb.al, label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i, !prof !41

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fc) #31
  br label %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i: ; preds = %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.ah, %.lr.ph.i.i.i31
  %i.fs = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.fs, %19
  br i1 %.not.i.i.i32, label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i31, !llvm.loop !142

_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIKN8facebook5velox4TypeEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %9, align 8, !tbaa !131
  br label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %.loopexit
  %i.ft = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ez, %.loopexit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ft, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit.i
  %i.fu = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !132
  %i.fw = ptrtoint ptr %i.fv to i64
  %i.fx = ptrtoint ptr %i.ft to i64
  %i.fy = sub i64 %i.fw, %i.fx
  call void @_ZdlPvm(ptr noundef nonnull %i.ft, i64 noundef %i.fy) #35
  br label %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %i.fz = load ptr, ptr %i.ab, align 8, !tbaa !47 ; 8 uses
  %.not.i.i = icmp eq ptr %i.fz, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev.exit
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 4 uses
  %i.gb = load atomic i64, ptr %i.ga acquire, align 8 ; 2 uses
  %i.gc = icmp eq i64 %i.gb, 4294967297
  %i.gd = trunc i64 %i.gb to i32                  ; 2 uses
  br i1 %i.gc, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 0, ptr %i.ga, align 8, !tbaa !55
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 12
  store i32 0, ptr %i.ge, align 4, !tbaa !57
  %i.gf = load ptr, ptr %i.fz, align 8, !tbaa !58
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #31, !inline_history !143
  %i.gi = load ptr, ptr %i.fz, align 8, !tbaa !58
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #31, !inline_history !143
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
  br i1 %i.go, label %bb.as, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !41

bb.as:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #31
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev.exit, %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.gp = load ptr, ptr %7, align 8, !tbaa !7     ; 2 uses
  %i.gq = icmp eq ptr %i.gp, %i.k
  br i1 %i.gq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.gr = load i64, ptr %i.k, align 8, !tbaa !26
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gs) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @_ZN8facebook5velox4core19TypeAnalysisResultsD2Ev(ptr noundef nonnull align 8 dead_on_return(456) dereferenceable(456) %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
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
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gz) #35
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
  call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef %i.he) #35
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void

bb.au:                                            ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIKN8facebook5velox4TypeEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.hf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #31
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.be) #31
  %i.hg = load ptr, ptr %i.au, align 8, !tbaa !7  ; 2 uses
  %i.hh = icmp eq ptr %i.hg, %i.av
  br i1 %i.hh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.au
  %i.hi = load i64, ptr %i.av, align 8, !tbaa !26
  %i.hj = add i64 %i.hi, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hj) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #31
  br label %bb.av

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  %.pn.pn.pn = phi { ptr, i32 } [ %i.hf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ex, %bb.af ] ; 2 uses
  call void @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.hk = load ptr, ptr %7, align 8, !tbaa !7     ; 2 uses
  %i.hl = icmp eq ptr %i.hk, %i.k
  br i1 %i.hl, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.av, %bb.e
  %.sink118 = phi ptr [ %i.y, %bb.e ], [ %i.hk, %bb.av ]
  %.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.x, %bb.e ], [ %.pn.pn.pn, %bb.av ]
  %i.hm = load i64, ptr %i.k, align 8, !tbaa !26
  %i.hn = add i64 %i.hm, 1
  call void @_ZdlPvm(ptr noundef %.sink118, i64 noundef %i.hn) #35
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.av, %bb.e
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %.pn.pn.pn, %bb.av ], [ %.pn.pn.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.aw

bb.aw:                                            ; preds = %.body, %bb.t
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %.body ], [ %i.cv, %bb.t ]
  call void @_ZN8facebook5velox4core19TypeAnalysisResultsD2Ev(ptr noundef nonnull align 8 dead_on_return(456) dereferenceable(456) %5) #31
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.s
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %bb.aw ], [ %i.cu, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4core22SimpleFunctionMetadataINS0_9functions22EmptyApproxSetFunctionINS0_4exec10VectorExecEEENS0_10CustomTypeINS0_12HyperLogLogTELb0EEENS0_15ConstantCheckerIJEEEJEE14buildSignatureERKNSD_29SignatureTypesAnalysisResultsE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.facebook::velox::exec::FunctionSignatureBuilder", align 8 ; 19 uses
  %3 = alloca %"class.std::shared_ptr.15", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.a, i8 0, i64 208, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.b, ptr %2, align 8, !tbaa !144
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 1, ptr %i.c, align 8, !tbaa !152
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.e, align 8, !tbaa !153
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 208
end_hunk_0
