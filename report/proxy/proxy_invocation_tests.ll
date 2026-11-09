Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/proxy_invocation_tests?download=true
inline.NumInlined: 3145
inline.NumDeleted: 1701
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN29proxy_invocation_tests_detail16SharedStringableEEENS1_16destroy_dispatchEDoFvvEEC1IPiEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESF_(ptr noundef nonnull align 8 dereferenceable(24) %0) #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIN29proxy_invocation_tests_detail16SharedStringableEEEN5utils4spec12FreeToStringEFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEC1IPiEESt15in_place_type_tIT_EENUlRS6_E_8__invokeB5cxx11ESN_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #17 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42, !noalias !926
  tail call void @_ZN5utils4spec12FreeToStringclIRiJEEEDcOT_DpOT0_QrqXcl9to_stringclgssr3stdE7forwardIS4_Efp_Espclgssr3stdE7forwardIS6_Efp0_EEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #33
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN29proxy_invocation_tests_detail16SharedStringableEEENS4_11FreeGetWeakIS5_EEKFNS3_INS4_4WeakIS5_EEEEvREEC1IPiEESt15in_place_type_tIT_EENUlRKS6_E_8__invokeESK_(ptr dead_on_unwind noalias writable sret(%"class.pro::v4::proxy.140") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !144, !alias.scope !939
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI56ProxyInvocationTests_TestQualifiedConvention_Member_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI56ProxyInvocationTests_TestQualifiedConvention_Member_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #34 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV56ProxyInvocationTests_TestQualifiedConvention_Member_Test, i64 16), ptr %i.a, align 8, !tbaa !16
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #36
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZZN3pro2v46detail9conv_metaINS0_5proxyIZN56ProxyInvocationTests_TestQualifiedConvention_Member_Test8TestBodyEvE10TestFacadeEENS1_16destroy_dispatchEDoFvvEEC1INS1_11inplace_ptrIZNS4_8TestBodyEvE12TestCallableEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESH_(ptr nofree nonnull readnone align 8 captures(none) %0) #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIZN56ProxyInvocationTests_TestQualifiedConvention_Member_Test8TestBodyEvE10TestFacadeEENS0_17operator_dispatchIXtlNS1_4signILm2EEEtlA2_cLc40ELc41EEEELb0EEEFivREEC1INS1_11inplace_ptrIZNS4_8TestBodyEvE12TestCallableEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESL_(ptr nofree nonnull readnone align 1 captures(none) %0) #14 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIZN56ProxyInvocationTests_TestQualifiedConvention_Member_Test8TestBodyEvE10TestFacadeEENS0_17operator_dispatchIXtlNS1_4signILm2EEEtlA2_cLc40ELc41EEEELb0EEEKFivREEC1INS1_11inplace_ptrIZNS4_8TestBodyEvE12TestCallableEEEESt15in_place_type_tIT_EENUlRKS6_E_8__invokeESM_(ptr nofree nonnull readnone align 1 captures(none) %0) #14 align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIZN56ProxyInvocationTests_TestQualifiedConvention_Member_Test8TestBodyEvE10TestFacadeEENS0_17operator_dispatchIXtlNS1_4signILm2EEEtlA2_cLc40ELc41EEEELb0EEEDoFivOEEC1INS1_11inplace_ptrIZNS4_8TestBodyEvE12TestCallableEEEESt15in_place_type_tIT_EENUlOS6_E_8__invokeESL_(ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) initializes((0, 8)) %0) #23 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !147
  ret i32 2
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIZN56ProxyInvocationTests_TestQualifiedConvention_Member_Test8TestBodyEvE10TestFacadeEENS0_17operator_dispatchIXtlNS1_4signILm2EEEtlA2_cLc40ELc41EEEELb0EEEKFivOEEC1INS1_11inplace_ptrIZNS4_8TestBodyEvE12TestCallableEEEESt15in_place_type_tIT_EENUlOKS6_E_8__invokeESM_(ptr nofree nonnull readnone align 1 captures(none) %0) #14 align 2 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI54ProxyInvocationTests_TestQualifiedConvention_Free_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI54ProxyInvocationTests_TestQualifiedConvention_Free_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #34 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV54ProxyInvocationTests_TestQualifiedConvention_Free_Test, i64 16), ptr %i.a, align 8, !tbaa !16
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #36
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZZN3pro2v46detail9conv_metaINS0_5proxyIZN54ProxyInvocationTests_TestQualifiedConvention_Free_Test8TestBodyEvE10TestFacadeEENS1_16destroy_dispatchEDoFvvEEC1INS1_11inplace_ptrIiEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESG_(ptr nofree nonnull readnone align 8 captures(none) %0) #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIZN54ProxyInvocationTests_TestQualifiedConvention_Free_Test8TestBodyEvE10TestFacadeEEN29proxy_invocation_tests_detail8FreeDumpEFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvREEC1INS1_11inplace_ptrIiEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeB5cxx11ESN_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN29proxy_invocation_tests_detail4DumpIRiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #33
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIZN54ProxyInvocationTests_TestQualifiedConvention_Free_Test8TestBodyEvE10TestFacadeEEN29proxy_invocation_tests_detail8FreeDumpEKFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvREEC1INS1_11inplace_ptrIiEEEESt15in_place_type_tIT_EENUlRKS6_E_8__invokeB5cxx11ESO_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN29proxy_invocation_tests_detail4DumpIRKiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #33
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIZN54ProxyInvocationTests_TestQualifiedConvention_Free_Test8TestBodyEvE10TestFacadeEEN29proxy_invocation_tests_detail8FreeDumpEDoFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvOEEC1INS1_11inplace_ptrIiEEEESt15in_place_type_tIT_EENUlOS6_E_8__invokeB5cxx11ESN_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN29proxy_invocation_tests_detail4DumpIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #33
  store ptr null, ptr %1, align 8, !tbaa !150, !noalias !946
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIZN54ProxyInvocationTests_TestQualifiedConvention_Free_Test8TestBodyEvE10TestFacadeEEN29proxy_invocation_tests_detail8FreeDumpEKFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvOEEC1INS1_11inplace_ptrIiEEEESt15in_place_type_tIT_EENUlOKS6_E_8__invokeB5cxx11ESO_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN29proxy_invocation_tests_detail4DumpIKiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN29proxy_invocation_tests_detail4DumpIRiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %2, align 8, !tbaa !16
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !153
  %i.g = or i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !154
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.119, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext false)
          to label %_ZNSolsEb.exit unwind label %bb.f ; 2 uses

_ZNSolsEb.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.120, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1: ; preds = %_ZNSolsEb.exit
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i1 noundef zeroext true)
          to label %_ZNSolsEb.exit2 unwind label %bb.f ; 2 uses

_ZNSolsEb.exit2:                                  ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.121, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3: ; preds = %_ZNSolsEb.exit2
  %i.m = load i32, ptr %1, align 4, !tbaa !38
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i32 noundef %i.m)
          to label %bb.c unwind label %bb.f       ; 0 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3
  call void @llvm.experimental.noalias.scope.decl(metadata !951)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !952)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !156, !noalias !953 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %bb.c
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  %4 = load ptr, ptr %i.r, align 8, !tbaa !157, !noalias !953 ; 2 uses
  %5 = icmp ugt ptr %i.q, %4
  %.08.i.i.i = select i1 %5, ptr %i.q, ptr %4
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !158, !noalias !953
  %i.u = ptrtoint ptr %.08.i.i.i to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 %i.w, ptr %i.x, align 8, !tbaa !32, !noalias !953
  %i.y = load ptr, ptr %3, align 8, !tbaa !46, !noalias !953
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !33, !noalias !953
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.ab, ptr %0, align 8, !tbaa !30, !alias.scope !953
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !46, !noalias !953 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 7 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !32, !noalias !953 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 16
  call void @llvm.assume(i1 %i.ah)
  %i.ai = add nuw nsw i64 %i.ag, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ab, ptr noundef nonnull align 8 dereferenceable(1) %i.ad, i64 %i.ai, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.ac, ptr %0, align 8, !tbaa !46, !alias.scope !953
  %i.aj = load i64, ptr %i.ad, align 8, !tbaa !33, !noalias !953
  store i64 %i.aj, ptr %i.ab, align 8, !tbaa !33, !alias.scope !953
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !32, !noalias !953
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.d
  %i.ak = phi i64 [ %i.ag, %bb.d ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ak, ptr %i.am, align 8, !tbaa !32, !alias.scope !953
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !46, !noalias !953
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.al, i8 0, i64 9, i1 false), !noalias !953
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.o, ptr noundef nonnull %i.ad, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.an = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !46, !alias.scope !953 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.ab
  br i1 %i.ap, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.aq = load i64, ptr %i.ab, align 8, !tbaa !33, !alias.scope !953
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #36
  br label %.body

_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.as = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.as, ptr %2, align 8, !tbaa !16
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.au = getelementptr i8, ptr %i.as, i64 -24
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds i8, ptr %2, i64 %i.av
  store ptr %i.at, ptr %i.aw, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8, !tbaa !16
  %i.ax = load ptr, ptr %i.aa, align 8, !tbaa !46 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.ad
  br i1 %i.ay, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.az = load i64, ptr %i.ad, align 8, !tbaa !33
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #36
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8, !tbaa !16
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bb) #33
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bc) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void

bb.f:                                             ; preds = %_ZNSolsEb.exit2, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1, %_ZNSolsEb.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3, %bb.a
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.bd, %bb.f ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.an, %bb.e ]
  %i.be = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.be) #37
  unreachable
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #2 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #0

declare void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN29proxy_invocation_tests_detail4DumpIRKiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %2, align 8, !tbaa !16
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !153
  %i.g = or i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !154
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.119, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext true)
          to label %_ZNSolsEb.exit unwind label %bb.f ; 2 uses

_ZNSolsEb.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.120, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1: ; preds = %_ZNSolsEb.exit
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i1 noundef zeroext true)
          to label %_ZNSolsEb.exit2 unwind label %bb.f ; 2 uses

_ZNSolsEb.exit2:                                  ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.121, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3: ; preds = %_ZNSolsEb.exit2
  %i.m = load i32, ptr %1, align 4, !tbaa !38
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i32 noundef %i.m)
          to label %bb.c unwind label %bb.f       ; 0 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3
  call void @llvm.experimental.noalias.scope.decl(metadata !958)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !959)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !156, !noalias !960 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %bb.c
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  %4 = load ptr, ptr %i.r, align 8, !tbaa !157, !noalias !960 ; 2 uses
  %5 = icmp ugt ptr %i.q, %4
  %.08.i.i.i = select i1 %5, ptr %i.q, ptr %4
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !158, !noalias !960
  %i.u = ptrtoint ptr %.08.i.i.i to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 %i.w, ptr %i.x, align 8, !tbaa !32, !noalias !960
  %i.y = load ptr, ptr %3, align 8, !tbaa !46, !noalias !960
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !33, !noalias !960
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.ab, ptr %0, align 8, !tbaa !30, !alias.scope !960
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !46, !noalias !960 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 7 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !32, !noalias !960 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 16
  call void @llvm.assume(i1 %i.ah)
  %i.ai = add nuw nsw i64 %i.ag, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ab, ptr noundef nonnull align 8 dereferenceable(1) %i.ad, i64 %i.ai, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.ac, ptr %0, align 8, !tbaa !46, !alias.scope !960
  %i.aj = load i64, ptr %i.ad, align 8, !tbaa !33, !noalias !960
  store i64 %i.aj, ptr %i.ab, align 8, !tbaa !33, !alias.scope !960
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !32, !noalias !960
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.d
  %i.ak = phi i64 [ %i.ag, %bb.d ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ak, ptr %i.am, align 8, !tbaa !32, !alias.scope !960
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !46, !noalias !960
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.al, i8 0, i64 9, i1 false), !noalias !960
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.o, ptr noundef nonnull %i.ad, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.an = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !46, !alias.scope !960 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.ab
  br i1 %i.ap, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.aq = load i64, ptr %i.ab, align 8, !tbaa !33, !alias.scope !960
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #36
  br label %.body

_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.as = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.as, ptr %2, align 8, !tbaa !16
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.au = getelementptr i8, ptr %i.as, i64 -24
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds i8, ptr %2, i64 %i.av
  store ptr %i.at, ptr %i.aw, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8, !tbaa !16
  %i.ax = load ptr, ptr %i.aa, align 8, !tbaa !46 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.ad
  br i1 %i.ay, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.az = load i64, ptr %i.ad, align 8, !tbaa !33
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #36
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8, !tbaa !16
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bb) #33
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bc) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void

bb.f:                                             ; preds = %_ZNSolsEb.exit2, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1, %_ZNSolsEb.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3, %bb.a
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.bd, %bb.f ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.an, %bb.e ]
  %i.be = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.be) #37
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN29proxy_invocation_tests_detail4DumpIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %2, align 8, !tbaa !16
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !153
  %i.g = or i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !154
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.119, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext false)
          to label %_ZNSolsEb.exit unwind label %bb.f ; 2 uses

_ZNSolsEb.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.120, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1: ; preds = %_ZNSolsEb.exit
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i1 noundef zeroext false)
          to label %_ZNSolsEb.exit2 unwind label %bb.f ; 2 uses

_ZNSolsEb.exit2:                                  ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.121, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3: ; preds = %_ZNSolsEb.exit2
  %i.m = load i32, ptr %1, align 4, !tbaa !38
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i32 noundef %i.m)
          to label %bb.c unwind label %bb.f       ; 0 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3
  call void @llvm.experimental.noalias.scope.decl(metadata !965)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !966)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !156, !noalias !967 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %bb.c
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  %4 = load ptr, ptr %i.r, align 8, !tbaa !157, !noalias !967 ; 2 uses
  %5 = icmp ugt ptr %i.q, %4
  %.08.i.i.i = select i1 %5, ptr %i.q, ptr %4
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !158, !noalias !967
  %i.u = ptrtoint ptr %.08.i.i.i to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 %i.w, ptr %i.x, align 8, !tbaa !32, !noalias !967
  %i.y = load ptr, ptr %3, align 8, !tbaa !46, !noalias !967
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !33, !noalias !967
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.ab, ptr %0, align 8, !tbaa !30, !alias.scope !967
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !46, !noalias !967 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 7 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !32, !noalias !967 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 16
  call void @llvm.assume(i1 %i.ah)
  %i.ai = add nuw nsw i64 %i.ag, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ab, ptr noundef nonnull align 8 dereferenceable(1) %i.ad, i64 %i.ai, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.ac, ptr %0, align 8, !tbaa !46, !alias.scope !967
  %i.aj = load i64, ptr %i.ad, align 8, !tbaa !33, !noalias !967
  store i64 %i.aj, ptr %i.ab, align 8, !tbaa !33, !alias.scope !967
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !32, !noalias !967
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.d
  %i.ak = phi i64 [ %i.ag, %bb.d ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ak, ptr %i.am, align 8, !tbaa !32, !alias.scope !967
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !46, !noalias !967
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.al, i8 0, i64 9, i1 false), !noalias !967
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.o, ptr noundef nonnull %i.ad, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.an = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !46, !alias.scope !967 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.ab
  br i1 %i.ap, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.aq = load i64, ptr %i.ab, align 8, !tbaa !33, !alias.scope !967
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #36
  br label %.body

_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.as = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.as, ptr %2, align 8, !tbaa !16
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.au = getelementptr i8, ptr %i.as, i64 -24
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds i8, ptr %2, i64 %i.av
  store ptr %i.at, ptr %i.aw, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8, !tbaa !16
  %i.ax = load ptr, ptr %i.aa, align 8, !tbaa !46 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.ad
  br i1 %i.ay, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.az = load i64, ptr %i.ad, align 8, !tbaa !33
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #36
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8, !tbaa !16
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bb) #33
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bc) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void

bb.f:                                             ; preds = %_ZNSolsEb.exit2, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1, %_ZNSolsEb.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3, %bb.a
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.bd, %bb.f ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.an, %bb.e ]
  %i.be = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.be) #37
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN29proxy_invocation_tests_detail4DumpIKiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %2, align 8, !tbaa !16
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !153
  %i.g = or i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !154
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.119, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext true)
          to label %_ZNSolsEb.exit unwind label %bb.f ; 2 uses

_ZNSolsEb.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.120, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1: ; preds = %_ZNSolsEb.exit
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i1 noundef zeroext false)
          to label %_ZNSolsEb.exit2 unwind label %bb.f ; 2 uses

_ZNSolsEb.exit2:                                  ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.121, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3: ; preds = %_ZNSolsEb.exit2
  %i.m = load i32, ptr %1, align 4, !tbaa !38
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i32 noundef %i.m)
          to label %bb.c unwind label %bb.f       ; 0 uses

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3
  call void @llvm.experimental.noalias.scope.decl(metadata !972)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !973)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !156, !noalias !974 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %bb.c
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  %4 = load ptr, ptr %i.r, align 8, !tbaa !157, !noalias !974 ; 2 uses
  %5 = icmp ugt ptr %i.q, %4
  %.08.i.i.i = select i1 %5, ptr %i.q, ptr %4
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !158, !noalias !974
  %i.u = ptrtoint ptr %.08.i.i.i to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 %i.w, ptr %i.x, align 8, !tbaa !32, !noalias !974
  %i.y = load ptr, ptr %3, align 8, !tbaa !46, !noalias !974
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !33, !noalias !974
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.ab, ptr %0, align 8, !tbaa !30, !alias.scope !974
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !46, !noalias !974 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 7 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !32, !noalias !974 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 16
  call void @llvm.assume(i1 %i.ah)
  %i.ai = add nuw nsw i64 %i.ag, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ab, ptr noundef nonnull align 8 dereferenceable(1) %i.ad, i64 %i.ai, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.ac, ptr %0, align 8, !tbaa !46, !alias.scope !974
  %i.aj = load i64, ptr %i.ad, align 8, !tbaa !33, !noalias !974
  store i64 %i.aj, ptr %i.ab, align 8, !tbaa !33, !alias.scope !974
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !32, !noalias !974
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.d
  %i.ak = phi i64 [ %i.ag, %bb.d ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ak, ptr %i.am, align 8, !tbaa !32, !alias.scope !974
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !46, !noalias !974
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.al, i8 0, i64 9, i1 false), !noalias !974
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.o, ptr noundef nonnull %i.ad, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.an = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !46, !alias.scope !974 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.ab
  br i1 %i.ap, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.aq = load i64, ptr %i.ab, align 8, !tbaa !33, !alias.scope !974
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #36
  br label %.body

_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.as = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.as, ptr %2, align 8, !tbaa !16
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.au = getelementptr i8, ptr %i.as, i64 -24
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds i8, ptr %2, i64 %i.av
  store ptr %i.at, ptr %i.aw, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8, !tbaa !16
  %i.ax = load ptr, ptr %i.aa, align 8, !tbaa !46 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.ad
  br i1 %i.ay, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.az = load i64, ptr %i.ad, align 8, !tbaa !33
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #36
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8, !tbaa !16
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bb) #33
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bc) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void

bb.f:                                             ; preds = %_ZNSolsEb.exit2, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1, %_ZNSolsEb.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3, %bb.a
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.bd, %bb.f ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.an, %bb.e ]
  %i.be = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.be) #37
  unreachable
}

declare noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext) local_unnamed_addr #0

declare void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef, ptr noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN3pro2v46detail11invoke_implINS0_17operator_dispatchIXtlNS1_4signILm2EEEtlA2_cLc40ELc41EEEELb0EEEFiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIiSaIiEEERNS0_23proxy_indirect_accessorIN29proxy_invocation_tests_detail8CallableIJSH_EEEEEJSD_SG_EEENS1_15overload_traitsIT0_E11return_typeEOT1_DpOT2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.std::vector", align 16      ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !49
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !976
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !30
  %i.e = load ptr, ptr %1, align 8, !tbaa !46     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !32   ; 3 uses
  %i.j = icmp ult i64 %i.i, 16
  call void @llvm.assume(i1 %i.j)
  %i.k = add nuw nsw i64 %i.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.e, ptr %3, align 8, !tbaa !46
  %i.l = load i64, ptr %i.f, align 8, !tbaa !33
  store i64 %i.l, ptr %i.d, align 8, !tbaa !33
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.m = phi i64 [ %i.i, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.m, ptr %i.o, align 8, !tbaa !32
  store ptr %i.f, ptr %1, align 8, !tbaa !46
  store i64 0, ptr %i.n, align 8, !tbaa !32
  store i8 0, ptr %i.f, align 8, !tbaa !33
  %i.p = load <2 x ptr>, ptr %2, align 8, !tbaa !42
  store <2 x ptr> %i.p, ptr %4, align 16, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !37
  store ptr %i.s, ptr %i.q, align 16, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.t = invoke noundef i32 %i.c(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nofree noundef nonnull align 8 dereferenceable(32) %3, ptr nofree noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.u = load ptr, ptr %4, align 16, !tbaa !36    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.q, align 16, !tbaa !37
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.y) #36
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.c, %bb.d
  %i.z = load ptr, ptr %3, align 8, !tbaa !46     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.d
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ab = load i64, ptr %i.d, align 8, !tbaa !33
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret i32 %i.t

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %4, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i5 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIiSaIiEED2Ev.exit6, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %i.q, align 16, !tbaa !37
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = sub i64 %i.ag, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ai) #36
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit6

_ZNSt6vectorIiSaIiEED2Ev.exit6:                   ; preds = %bb.e, %bb.f
  %i.aj = load ptr, ptr %3, align 8, !tbaa !46    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.d
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit6
  %i.al = load i64, ptr %i.d, align 8, !tbaa !33
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  resume { ptr, i32 } %i.ad
end_hunk_0
