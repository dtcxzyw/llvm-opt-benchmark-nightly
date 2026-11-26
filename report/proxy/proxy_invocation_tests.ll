Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/proxy_invocation_tests?download=true
inline.NumInlined: 3145
inline.NumDeleted: 1702
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@"_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIN29proxy_invocation_tests_detail8CallableIJFiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIiSaIiEEEEEEEENS0_17operator_dispatchIXtlNS1_4signILm2EEEtlA2_cLc40ELc41EEEELb0EEESF_EC1IPZN48ProxyInvocationTests_TestArgumentForwarding_Test8TestBodyEvE3$_0EESt15in_place_type_tIT_EENUlRSH_SB_SE_E_8__invokeESV_SB_SE_":bb.a
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.al) #36
  br label %"_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIN29proxy_invocation_tests_detail8CallableIJFiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIiSaIiEEEEEEEENS0_17operator_dispatchIXtlNS1_4signILm2EEEtlA2_cLc40ELc41EEEELb0EEESF_EC1IPZN48ProxyInvocationTests_TestArgumentForwarding_Test8TestBodyEvE3$_0EESt15in_place_type_tIT_EENKUlRSH_SB_SE_E_clESV_SB_SE_.exit"

"_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIN29proxy_invocation_tests_detail8CallableIJFiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIiSaIiEEEEEEEENS0_17operator_dispatchIXtlNS1_4signILm2EEEtlA2_cLc40ELc41EEEELb0EEESF_EC1IPZN48ProxyInvocationTests_TestArgumentForwarding_Test8TestBodyEvE3$_0EESt15in_place_type_tIT_EENKUlRSH_SB_SE_E_clESV_SB_SE_.exit": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i.i, %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !751, !nonnull !63, !align !752
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !38
  ret i32 %i.ao
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI35ProxyInvocationTests_TestThrow_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI35ProxyInvocationTests_TestThrow_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #34 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV35ProxyInvocationTests_TestThrow_Test, i64 16), ptr %i.a, align 8, !tbaa !16
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #36
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZZN3pro2v46detail9conv_metaINS0_5proxyIN29proxy_invocation_tests_detail8CallableIJFvvEEEEEENS1_13copy_dispatchEKFvRS8_EEC1IPZN35ProxyInvocationTests_TestThrow_Test8TestBodyEvE3$_0EESt15in_place_type_tIT_EENUlRKS8_SA_E_8__invokeESL_SA_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 16)) %1) #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.val, ptr %i.b, align 8, !tbaa !43
  store i64 ptrtoint (ptr @"_ZN3pro2v46detail22meta_ptr_indirect_implINS1_14composite_metaIJNS1_9conv_metaINS0_5proxyIN29proxy_invocation_tests_detail8CallableIJFvvEEEEEENS1_13copy_dispatchEKFvRSA_EEENS4_ISA_NS1_16destroy_dispatchEDoFvvEEENS4_INS0_23proxy_indirect_accessorIS9_EENS0_17operator_dispatchIXtlNS1_4signILm2EEEtlA2_cLc40ELc41EEEELb0EEES8_EEEEEE7storageIPZN35ProxyInvocationTests_TestThrow_Test8TestBodyEvE3$_0EE" to i64), ptr %1, align 8, !tbaa !68
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @"_ZZN3pro2v46detail9conv_metaINS0_5proxyIN29proxy_invocation_tests_detail8CallableIJFvvEEEEEENS1_16destroy_dispatchEDoFvvEEC1IPZN35ProxyInvocationTests_TestThrow_Test8TestBodyEvE3$_0EESt15in_place_type_tIT_EENUlRS8_E_8__invokeESJ_"(ptr nofree nonnull readnone align 8 captures(none) %0) #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define internal void @"_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIN29proxy_invocation_tests_detail8CallableIJFvvEEEEEENS0_17operator_dispatchIXtlNS1_4signILm2EEEtlA2_cLc40ELc41EEEELb0EEES6_EC1IPZN35ProxyInvocationTests_TestThrow_Test8TestBodyEvE3$_0EESt15in_place_type_tIT_EENUlRS8_E_8__invokeESM_"(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %0) #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  %i.c = load ptr, ptr %.val, align 8, !tbaa !754, !nonnull !63, !align !95
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef %i.d)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #33
  resume { ptr, i32 } %i.e
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #0

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #5

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #16

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI55ProxyInvocationTests_TestMultipleDispatches_Unique_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI55ProxyInvocationTests_TestMultipleDispatches_Unique_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #34 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV55ProxyInvocationTests_TestMultipleDispatches_Unique_Test, i64 16), ptr %i.a, align 8, !tbaa !16
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #36
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN29proxy_invocation_tests_detail8IterableIiEEEENS1_16destroy_dispatchEDoFvvEEC1IPNSt7__cxx114listIiSaIiEEEEESt15in_place_type_tIT_EENUlRS7_E_8__invokeESK_(ptr noundef nonnull align 8 dereferenceable(24) %0) #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIN29proxy_invocation_tests_detail8IterableIiEEEENS4_11FreeForEachEFvSt8functionIFvRiEEEEC1IPNSt7__cxx114listIiSaIiEEEEESt15in_place_type_tIT_EENUlRS7_SC_E_8__invokeESO_SC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef align 8 dereferenceable(32) %1) #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::ranges::in_fun_result", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @_ZN29proxy_invocation_tests_detail11FreeForEachclIRNSt7__cxx114listIiSaIiEEEJSt8functionIFvRiEEEEEDcOT_DpOT0_QrqXclL_ZNSt6ranges8for_eachEEclgssr3stdE7forwardISB_Efp_Espclgssr3stdE7forwardISD_Efp0_EEE(ptr dead_on_unwind nonnull writable sret(%"struct.std::ranges::in_fun_result") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !86   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIN29proxy_invocation_tests_detail8IterableIiEEEENS4_11FreeForEachEFvSt8functionIFvRiEEEEC1IPNSt7__cxx114listIiSaIiEEEEESt15in_place_type_tIT_EENKUlRS7_SC_E_clESO_SC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = invoke noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i32 noundef 3)
          to label %_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIN29proxy_invocation_tests_detail8IterableIiEEEENS4_11FreeForEachEFvSt8functionIFvRiEEEEC1IPNSt7__cxx114listIiSaIiEEEEESt15in_place_type_tIT_EENKUlRS7_SC_E_clESO_SC_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #37
  unreachable

_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIN29proxy_invocation_tests_detail8IterableIiEEEENS4_11FreeForEachEFvSt8functionIFvRiEEEEC1IPNSt7__cxx114listIiSaIiEEEEESt15in_place_type_tIT_EENKUlRS7_SC_E_clESO_SC_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIN29proxy_invocation_tests_detail8IterableIiEEEENS4_8FreeSizeEDoFmvEEC1IPNSt7__cxx114listIiSaIiEEEEESt15in_place_type_tIT_EENUlRS7_E_8__invokeESK_(ptr noundef nonnull align 1 dereferenceable(1) %0) #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !77
  ret i64 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN29proxy_invocation_tests_detail11FreeForEachclIRNSt7__cxx114listIiSaIiEEEJSt8functionIFvRiEEEEEDcOT_DpOT0_QrqXclL_ZNSt6ranges8for_eachEEclgssr3stdE7forwardISB_Efp_Espclgssr3stdE7forwardISD_Efp0_EEE(ptr dead_on_unwind noalias writable sret(%"struct.std::ranges::in_fun_result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function", align 8     ; 13 uses
  %4 = alloca %"class.std::function", align 8     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 24, i1 false)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !84   ; 4 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !84
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !86   ; 3 uses
  %.not.i.i.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvRiEEC2EOS2_.exit.thread, label %bb.b

_ZNSt8functionIFvRiEEC2EOS2_.exit.thread:         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.f = load ptr, ptr %1, align 8, !tbaa !72, !noalias !763
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 24, i1 false), !noalias !763
  store ptr %i.c, ptr %i.g, align 8, !tbaa !84, !noalias !763
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %_ZNSt8functionIFvRiEEC2EOS2_.exit.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !85
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !764)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.i = load ptr, ptr %1, align 8, !tbaa !72, !noalias !764
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.j, align 8, !tbaa !84, !noalias !764
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  store ptr %i.e, ptr %i.l, align 8, !tbaa !86, !noalias !764
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false), !noalias !764
  br label %_ZNSt8functionIFvRiEEC2EOS2_.exit.i

_ZNSt8functionIFvRiEEC2EOS2_.exit.i:              ; preds = %_ZNSt8functionIFvRiEEC2EOS2_.exit.thread, %bb.b
  %i.m = phi ptr [ %i.h, %_ZNSt8functionIFvRiEEC2EOS2_.exit.thread ], [ %i.k, %bb.b ] ; 2 uses
  %i.n = phi ptr [ %i.g, %_ZNSt8functionIFvRiEEC2EOS2_.exit.thread ], [ %i.j, %bb.b ] ; 2 uses
  %i.o = phi ptr [ %i.f, %_ZNSt8functionIFvRiEEC2EOS2_.exit.thread ], [ %i.i, %bb.b ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !765)
  %i.p = icmp eq ptr %i.o, %1
  br i1 %i.p, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt8functionIFvRiEEC2EOS2_.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.noexc5.i, %.lr.ph.i.i
  %.sroa.01.05.i.i = phi ptr [ %i.o, %.lr.ph.i.i ], [ %i.u, %.noexc5.i ] ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !86, !noalias !766
  %.not.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %_ZSt8__invokeIRSt8functionIFvRiEEJS1_EENSt15__invoke_resultIT_JDpT0_EE4typeEOS6_DpOS7_.exit.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt25__throw_bad_function_callv() #35
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !766

.noexc.i:                                         ; preds = %bb.d
  unreachable

_ZSt8__invokeIRSt8functionIFvRiEEJS1_EENSt15__invoke_resultIT_JDpT0_EE4typeEOS6_DpOS7_.exit.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 16
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !84, !noalias !766
  invoke void %i.t(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.s)
          to label %.noexc5.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !766, !inline_history !761

.noexc5.i:                                        ; preds = %_ZSt8__invokeIRSt8functionIFvRiEEJS1_EENSt15__invoke_resultIT_JDpT0_EE4typeEOS6_DpOS7_.exit.i.i
  %i.u = load ptr, ptr %.sroa.01.05.i.i, align 8, !tbaa !72, !noalias !766 ; 3 uses
  %i.v = icmp eq ptr %i.u, %1
  br i1 %i.v, label %._crit_edge.i.loopexit.i, label %bb.c, !llvm.loop !762

._crit_edge.i.loopexit.i:                         ; preds = %.noexc5.i
  %.pre.i = load ptr, ptr %i.n, align 8, !tbaa !84, !noalias !766
  %.pre10.i = load ptr, ptr %i.q, align 8, !tbaa !86, !noalias !764
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.loopexit.i, %_ZNSt8functionIFvRiEEC2EOS2_.exit.i
  %5 = phi ptr [ %i.e, %_ZNSt8functionIFvRiEEC2EOS2_.exit.i ], [ %.pre10.i, %._crit_edge.i.loopexit.i ] ; 2 uses
  %i.w = phi ptr [ %i.c, %_ZNSt8functionIFvRiEEC2EOS2_.exit.i ], [ %.pre.i, %._crit_edge.i.loopexit.i ]
  %i.x = phi ptr [ %i.o, %_ZNSt8functionIFvRiEEC2EOS2_.exit.i ], [ %i.u, %._crit_edge.i.loopexit.i ]
  %i.y = ptrtoint ptr %i.x to i64
  store i64 %i.y, ptr %0, align 8, !tbaa !767, !alias.scope !766
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i8 0, i64 24, i1 false), !alias.scope !766
  store ptr %i.w, ptr %i.aa, align 8, !tbaa !84, !alias.scope !766
  %.not.i.i.not.i.i.i = icmp eq ptr %5, null
  br i1 %.not.i.i.not.i.i.i, label %bb.g, label %_ZNKSt6ranges13__for_each_fnclITkSt14input_iteratorSt14_List_iteratorIiETkSt12sentinel_forIT_ES3_St8identityTkSt26indirectly_unary_invocableINSt8__detail11__projectedIS5_T1_E6__typeEESt8functionIFvRiEEEENS_13in_fun_resultIS5_T2_EES5_T0_SI_SA_.exit.i

_ZNKSt6ranges13__for_each_fnclITkSt14input_iteratorSt14_List_iteratorIiETkSt12sentinel_forIT_ES3_St8identityTkSt26indirectly_unary_invocableINSt8__detail11__projectedIS5_T1_E6__typeEESt8functionIFvRiEEEENS_13in_fun_resultIS5_T2_EES5_T0_SI_SA_.exit.i: ; preds = %._crit_edge.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !tbaa.struct !85
  store ptr %5, ptr %i.ab, align 8, !tbaa !86, !alias.scope !766
  br label %bb.g

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZSt8__invokeIRSt8functionIFvRiEEJS1_EENSt15__invoke_resultIT_JDpT0_EE4typeEOS6_DpOS7_.exit.i.i, %bb.d
  %lpad.loopexit.split-lp15 = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !86, !noalias !764 ; 2 uses
  %.not.i6.i = icmp eq ptr %i.ac, null
  br i1 %.not.i6.i, label %.body, label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ad = invoke noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %.body unwind label %bb.f, !noalias !764 ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #37, !noalias !764
  unreachable

bb.g:                                             ; preds = %_ZNKSt6ranges13__for_each_fnclITkSt14input_iteratorSt14_List_iteratorIiETkSt12sentinel_forIT_ES3_St8identityTkSt26indirectly_unary_invocableINSt8__detail11__projectedIS5_T1_E6__typeEESt8functionIFvRiEEEENS_13in_fun_resultIS5_T2_EES5_T0_SI_SA_.exit.i, %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ag = load ptr, ptr %i.m, align 8, !tbaa !86  ; 2 uses
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = invoke noundef zeroext i1 %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #37
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.g, %bb.h
  ret void

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.e
  %i.ak = load ptr, ptr %i.m, align 8, !tbaa !86  ; 2 uses
  %.not.i3 = icmp eq ptr %i.ak, null
  br i1 %.not.i3, label %_ZNSt14_Function_baseD2Ev.exit4, label %bb.j

bb.j:                                             ; preds = %.body
  %i.al = invoke noundef zeroext i1 %i.ak(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit4 unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #37
  unreachable

_ZNSt14_Function_baseD2Ev.exit4:                  ; preds = %.body, %bb.j
  resume { ptr, i32 } %lpad.loopexit.split-lp15
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI59ProxyInvocationTests_TestMultipleDispatches_Duplicated_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI59ProxyInvocationTests_TestMultipleDispatches_Duplicated_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #34 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV59ProxyInvocationTests_TestMultipleDispatches_Duplicated_Test, i64 16), ptr %i.a, align 8, !tbaa !16
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #36
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZZN3pro2v46detail9conv_metaINS0_5proxyIZN59ProxyInvocationTests_TestMultipleDispatches_Duplicated_Test8TestBodyEvE18DuplicatedIterableEENS1_16destroy_dispatchEDoFvvEEC1IPNSt7__cxx114listIiSaIiEEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESJ_(ptr nofree nonnull readnone align 8 captures(none) %0) #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal void @_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIZN59ProxyInvocationTests_TestMultipleDispatches_Duplicated_Test8TestBodyEvE18DuplicatedIterableEEN29proxy_invocation_tests_detail11FreeForEachEFvSt8functionIFvRiEEEEC1IPNSt7__cxx114listIiSaIiEEEEESt15in_place_type_tIT_EENUlRS6_SC_E_8__invokeESO_SC_(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef align 8 dereferenceable(32) %1) #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::ranges::in_fun_result", align 8 ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @_ZN29proxy_invocation_tests_detail11FreeForEachclIRNSt7__cxx114listIiSaIiEEEJSt8functionIFvRiEEEEEDcOT_DpOT0_QrqXclL_ZNSt6ranges8for_eachEEclgssr3stdE7forwardISB_Efp_Espclgssr3stdE7forwardISD_Efp0_EEE(ptr dead_on_unwind nonnull writable sret(%"struct.std::ranges::in_fun_result") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %.val, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !86   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIZN59ProxyInvocationTests_TestMultipleDispatches_Duplicated_Test8TestBodyEvE18DuplicatedIterableEEN29proxy_invocation_tests_detail11FreeForEachEFvSt8functionIFvRiEEEEC1IPNSt7__cxx114listIiSaIiEEEEESt15in_place_type_tIT_EENKUlRS6_SC_E_clESO_SC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = invoke noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i32 noundef 3)
          to label %_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIZN59ProxyInvocationTests_TestMultipleDispatches_Duplicated_Test8TestBodyEvE18DuplicatedIterableEEN29proxy_invocation_tests_detail11FreeForEachEFvSt8functionIFvRiEEEEC1IPNSt7__cxx114listIiSaIiEEEEESt15in_place_type_tIT_EENKUlRS6_SC_E_clESO_SC_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #37
  unreachable

_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIZN59ProxyInvocationTests_TestMultipleDispatches_Duplicated_Test8TestBodyEvE18DuplicatedIterableEEN29proxy_invocation_tests_detail11FreeForEachEFvSt8functionIFvRiEEEEC1IPNSt7__cxx114listIiSaIiEEEEESt15in_place_type_tIT_EENKUlRS6_SC_E_clESO_SC_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIZN59ProxyInvocationTests_TestMultipleDispatches_Duplicated_Test8TestBodyEvE18DuplicatedIterableEEN29proxy_invocation_tests_detail8FreeSizeEFmvEEC1IPNSt7__cxx114listIiSaIiEEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESK_(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %0) #19 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.b = getelementptr i8, ptr %.val, i64 16
  %.val.val = load i64, ptr %i.b, align 8, !tbaa !77
  ret i64 %.val.val
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI49ProxyInvocationTests_TestRecursiveDefinition_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI49ProxyInvocationTests_TestRecursiveDefinition_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #34 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV49ProxyInvocationTests_TestRecursiveDefinition_Test, i64 16), ptr %i.a, align 8, !tbaa !16
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #36
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN29proxy_invocation_tests_detail9ContainerIiEEEENS1_16destroy_dispatchEDoFvvEEC1IPNSt7__cxx114listIiSaIiEEEEESt15in_place_type_tIT_EENUlRS7_E_8__invokeESK_(ptr noundef nonnull align 8 dereferenceable(24) %0) #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIN29proxy_invocation_tests_detail9ContainerIiEEEENS4_11FreeForEachEFvSt8functionIFvRiEEEEC1IPNSt7__cxx114listIiSaIiEEEEESt15in_place_type_tIT_EENUlRS7_SC_E_8__invokeESO_SC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef align 8 dereferenceable(32) %1) #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::ranges::in_fun_result", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @_ZN29proxy_invocation_tests_detail11FreeForEachclIRNSt7__cxx114listIiSaIiEEEJSt8functionIFvRiEEEEEDcOT_DpOT0_QrqXclL_ZNSt6ranges8for_eachEEclgssr3stdE7forwardISB_Efp_Espclgssr3stdE7forwardISD_Efp0_EEE(ptr dead_on_unwind nonnull writable sret(%"struct.std::ranges::in_fun_result") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !86   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIN29proxy_invocation_tests_detail9ContainerIiEEEENS4_11FreeForEachEFvSt8functionIFvRiEEEEC1IPNSt7__cxx114listIiSaIiEEEEESt15in_place_type_tIT_EENKUlRS7_SC_E_clESO_SC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = invoke noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i32 noundef 3)
          to label %_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIN29proxy_invocation_tests_detail9ContainerIiEEEENS4_11FreeForEachEFvSt8functionIFvRiEEEEC1IPNSt7__cxx114listIiSaIiEEEEESt15in_place_type_tIT_EENKUlRS7_SC_E_clESO_SC_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #37
  unreachable

_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIN29proxy_invocation_tests_detail9ContainerIiEEEENS4_11FreeForEachEFvSt8functionIFvRiEEEEC1IPNSt7__cxx114listIiSaIiEEEEESt15in_place_type_tIT_EENKUlRS7_SC_E_clESO_SC_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIN29proxy_invocation_tests_detail9ContainerIiEEEENS4_8FreeSizeEDoFmvEEC1IPNSt7__cxx114listIiSaIiEEEEESt15in_place_type_tIT_EENUlRS7_E_8__invokeESK_(ptr noundef nonnull align 1 dereferenceable(1) %0) #6 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
