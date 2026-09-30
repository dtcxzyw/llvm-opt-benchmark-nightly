Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/proxy_invocation_tests?download=true
inline.NumInlined: 3145
inline.NumDeleted: 1701
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN54ProxyInvocationTests_TestQualifiedConvention_Free_Test8TestBodyEv:_ZN29proxy_invocation_tests_detail4DumpB5cxx11ERN3pro2v423proxy_indirect_accessorIZN54ProxyInvocationTests_TestQualifiedConvention_Free_Test8TestBodyEvE10TestFacadeEE.exit
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN48ProxyInvocationTests_TestArgumentForwarding_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #33
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #36
  ret void
}

declare void @_ZN7testing4Test5SetUpEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #0

declare void @_ZN7testing4Test8TearDownEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing4Test5SetupEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN35ProxyInvocationTests_TestThrow_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #33
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN55ProxyInvocationTests_TestMultipleDispatches_Unique_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #33
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN59ProxyInvocationTests_TestMultipleDispatches_Duplicated_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #33
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN49ProxyInvocationTests_TestRecursiveDefinition_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #33
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN55ProxyInvocationTests_TestOverloadResolution_Member_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #33
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN53ProxyInvocationTests_TestOverloadResolution_Free_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #33
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN58ProxyInvocationTests_TestOverloadResolution_FreeAsMem_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #33
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN38ProxyInvocationTests_TestNoexcept_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #33
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN45ProxyInvocationTests_TestFunctionPointer_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #33
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN51ProxyInvocationTests_TestMemberDispatchDefault_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #33
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN49ProxyInvocationTests_TestFreeDispatchDefault_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #33
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN46ProxyInvocationTests_TestObserverDispatch_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #33
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN56ProxyInvocationTests_TestQualifiedConvention_Member_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #33
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #36
  ret void
}

; Function Attrs: nounwind
declare void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN54ProxyInvocationTests_TestQualifiedConvention_Free_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #33
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #36
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI48ProxyInvocationTests_TestArgumentForwarding_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI48ProxyInvocationTests_TestArgumentForwarding_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #34 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV48ProxyInvocationTests_TestArgumentForwarding_Test, i64 16), ptr %i.a, align 8, !tbaa !16
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #36
  resume { ptr, i32 } %i.b
}

declare void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZZN3pro2v46detail9conv_metaINS0_5proxyIN29proxy_invocation_tests_detail8CallableIJFiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIiSaIiEEEEEEEENS1_13copy_dispatchEKFvRSH_EEC1IPZN48ProxyInvocationTests_TestArgumentForwarding_Test8TestBodyEvE3$_0EESt15in_place_type_tIT_EENUlRKSH_SJ_E_8__invokeESU_SJ_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 16)) %1) #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.val, ptr %i.b, align 8, !tbaa !43
  store i64 ptrtoint (ptr @"_ZN3pro2v46detail22meta_ptr_indirect_implINS1_14composite_metaIJNS1_9conv_metaINS0_5proxyIN29proxy_invocation_tests_detail8CallableIJFiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIiSaIiEEEEEEEENS1_13copy_dispatchEKFvRSJ_EEENS4_ISJ_NS1_16destroy_dispatchEDoFvvEEENS4_INS0_23proxy_indirect_accessorISI_EENS0_17operator_dispatchIXtlNS1_4signILm2EEEtlA2_cLc40ELc41EEEELb0EEESH_EEEEEE7storageIPZN48ProxyInvocationTests_TestArgumentForwarding_Test8TestBodyEvE3$_0EE" to i64), ptr %1, align 8, !tbaa !45
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @"_ZZN3pro2v46detail9conv_metaINS0_5proxyIN29proxy_invocation_tests_detail8CallableIJFiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIiSaIiEEEEEEEENS1_16destroy_dispatchEDoFvvEEC1IPZN48ProxyInvocationTests_TestArgumentForwarding_Test8TestBodyEvE3$_0EESt15in_place_type_tIT_EENUlRSH_E_8__invokeESS_"(ptr nofree nonnull readnone align 8 captures(none) %0) #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal noundef i32 @"_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIN29proxy_invocation_tests_detail8CallableIJFiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIiSaIiEEEEEEEENS0_17operator_dispatchIXtlNS1_4signILm2EEEtlA2_cLc40ELc41EEEELb0EEESF_EC1IPZN48ProxyInvocationTests_TestArgumentForwarding_Test8TestBodyEvE3$_0EESt15in_place_type_tIT_EENUlRSH_SB_SE_E_8__invokeESV_SB_SE_"(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef align 8 dereferenceable(32) %1, ptr nofree noundef align 8 captures(none) dereferenceable(24) %2) #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !43  ; 3 uses
  %i.b = load ptr, ptr %.val, align 8, !tbaa !749, !nonnull !63, !align !95 ; 9 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !46     ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.g = icmp eq ptr %i.e, %i.f
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br i1 %i.g, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i: ; preds = %bb.a
  %4 = icmp eq ptr %i.c, %i.d
  br i1 %4, label %.thread.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %3, align 8, !tbaa !32     ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %.not21.i.i.i.i.i.i.i = icmp eq ptr %1, %i.b
  br i1 %.not21.i.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i.i, label %bb.c, !prof !47

bb.c:                                             ; preds = %bb.b
  switch i64 %i.h, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %i.e, align 1, !tbaa !33
  store i8 %i.j, ptr %i.c, align 1, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.c, ptr align 1 %i.e, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.k = load i64, ptr %3, align 8, !tbaa !32     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !32
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !33
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.e, ptr %i.b, align 8, !tbaa !46
  %i.p = load i64, ptr %3, align 8, !tbaa !32
  store i64 %i.p, ptr %i.o, align 8, !tbaa !32
  %i.q = load i64, ptr %i.f, align 8, !tbaa !33
  store i64 %i.q, ptr %i.d, align 8, !tbaa !33
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.r = load i64, ptr %i.d, align 8, !tbaa !33
  store ptr %i.e, ptr %i.b, align 8, !tbaa !46
  %i.s = load i64, ptr %3, align 8, !tbaa !32
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !32
  %i.u = load i64, ptr %i.f, align 8, !tbaa !33
  store i64 %i.u, ptr %i.d, align 8, !tbaa !33
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i
  store ptr %i.c, ptr %1, align 8, !tbaa !46
  store i64 %i.r, ptr %i.f, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i
  store ptr %i.f, ptr %1, align 8, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i, %bb.b
  %i.v = phi ptr [ %.pre.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i ], [ %i.c, %bb.f ], [ %i.f, %bb.g ], [ %i.e, %bb.b ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !32
  store i8 0, ptr %i.v, align 1, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !750, !nonnull !63, !align !95 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !36   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !37
  %i.ac = load <2 x ptr>, ptr %2, align 8, !tbaa !42
  store <2 x ptr> %i.ac, ptr %i.y, align 8, !tbaa !42
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !37
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !37
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.z, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %"_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIN29proxy_invocation_tests_detail8CallableIJFiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIiSaIiEEEEEEEENS0_17operator_dispatchIXtlNS1_4signILm2EEEtlA2_cLc40ELc41EEEELb0EEESF_EC1IPZN48ProxyInvocationTests_TestArgumentForwarding_Test8TestBodyEvE3$_0EESt15in_place_type_tIT_EENKUlRSH_SB_SE_E_clESV_SB_SE_.exit", label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i.i
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = ptrtoint ptr %i.z to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ah) #36
  br label %"_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIN29proxy_invocation_tests_detail8CallableIJFiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIiSaIiEEEEEEEENS0_17operator_dispatchIXtlNS1_4signILm2EEEtlA2_cLc40ELc41EEEELb0EEESF_EC1IPZN48ProxyInvocationTests_TestArgumentForwarding_Test8TestBodyEvE3$_0EESt15in_place_type_tIT_EENKUlRSH_SB_SE_E_clESV_SB_SE_.exit"

"_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIN29proxy_invocation_tests_detail8CallableIJFiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIiSaIiEEEEEEEENS0_17operator_dispatchIXtlNS1_4signILm2EEEtlA2_cLc40ELc41EEEELb0EEESF_EC1IPZN48ProxyInvocationTests_TestArgumentForwarding_Test8TestBodyEvE3$_0EESt15in_place_type_tIT_EENKUlRSH_SB_SE_E_clESV_SB_SE_.exit": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i.i, %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !751, !nonnull !63, !align !752
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !38
  ret i32 %i.ak
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
end_hunk_0
