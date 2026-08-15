inline.NumInlined: 6731
inline.NumDeleted: 2085
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN7testing8internal11MatcherBaseIRKSt4pairISt10unique_ptrIiSt14default_deleteIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED0Ev:bb.a
bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #23, !inline_history !1356
  unreachable

_ZN7testing8internal11MatcherBaseIRKSt4pairISt10unique_ptrIiSt14default_deleteIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKSt4pairISt10unique_ptrIiSt14default_deleteIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIRKSt4pairISt10unique_ptrIiSt14default_deleteIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE19MatchAndExplainImplINSG_11ValuePolicyIPKNS_16MatcherInterfaceISF_EELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_fp1_EERKSG_SF_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1401 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2)
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal11MatcherBaseIRKSt4pairISt10unique_ptrIiSt14default_deleteIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE12DescribeImplINSG_11ValuePolicyIPKNS_16MatcherInterfaceISF_EELb1EEEEEvRKSG_PSob(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1401 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9
  %. = select i1 %2, i64 24, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal11MatcherBaseIRKSt4pairISt10unique_ptrIiSt14default_deleteIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE16GetDescriberImplINSG_11ValuePolicyIPKNS_16MatcherInterfaceISF_EELb1EEEEEPKNS_25MatcherDescriberInterfaceERKSG_(ptr noundef nonnull align 8 dereferenceable(24) %0) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1401
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKSt4pairIS2_IiSt14default_deleteIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES5_ISI_EEE7DestroyEPNS0_17SharedPayloadBaseE(ptr noundef %0) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1401 ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKSt4pairIS2_IiSt14default_deleteIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES5_ISI_EEED2Ev.exit, label %_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKSt4pairISt10unique_ptrIiS_IiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEclEPSG_.exit.i.i

_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKSt4pairISt10unique_ptrIiS_IiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEclEPSG_.exit.i.i: ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #22, !inline_history !1485
  br label %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKSt4pairIS2_IiSt14default_deleteIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES5_ISI_EEED2Ev.exit

_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKSt4pairIS2_IiSt14default_deleteIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES5_ISI_EEED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKSt4pairISt10unique_ptrIiS_IiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEclEPSG_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #24
  br label %bb.c

bb.c:                                             ; preds = %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKSt4pairIS2_IiSt14default_deleteIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES5_ISI_EEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal7PrintToISt10unique_ptrIiSt14default_deleteIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKSt4pairIT_T0_EPSo(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 40, ptr %i.b, align 1, !tbaa !59
  %i.c = load ptr, ptr %1, align 8, !tbaa !9
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %1, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !258
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.c:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 40) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_ZN7testing8internal7PrintToIiSt14default_deleteIiEEEvRKSt10unique_ptrIT_T0_EPSo(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1)
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.149, i64 noundef 2) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !52
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !86
  call void @_ZN7testing8internal13PrintStringToESt17basic_string_viewIcSt11char_traitsIcEEPSo(i64 %i.o, ptr %i.m, ptr noundef nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 41, ptr %i.a, align 1, !tbaa !59
  %i.p = load ptr, ptr %1, align 8, !tbaa !9
  %i.q = getelementptr i8, ptr %i.p, i64 -24
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds i8, ptr %1, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !258
  %.not.i7 = icmp eq i64 %i.u, 0
  br i1 %.not.i7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.v = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit9

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.w = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 41) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit9

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit9: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal7PrintToIiSt14default_deleteIiEEEvRKSt10unique_ptrIT_T0_EPSo(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1005
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.258, i64 noundef 9) ; 0 uses
  br label %_ZN7testing8internal17PrintSmartPointerIiSt10unique_ptrIiSt14default_deleteIiEEvEEvRKT0_PSoi.exit

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.259, i64 noundef 7) ; 0 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !1005
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.d)
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.260, i64 noundef 10) ; 0 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !1005
  %i.h = load i32, ptr %i.g, align 4, !tbaa !177
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.h) ; 0 uses
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.123, i64 noundef 1) ; 0 uses
  br label %_ZN7testing8internal17PrintSmartPointerIiSt10unique_ptrIiSt14default_deleteIiEEvEEvRKT0_PSoi.exit

_ZN7testing8internal17PrintSmartPointerIiSt10unique_ptrIiSt14default_deleteIiEEvEEvRKT0_PSoi.exit: ; preds = %bb.b, %bb.c
  ret void
}

declare void @_ZN7testing8internal13PrintStringToESt17basic_string_viewIcSt11char_traitsIcEEPSo(i64, ptr, ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_142ChunkedQueue_OveralignmentEmplaceBack_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_142ChunkedQueue_OveralignmentEmplaceBack_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_142ChunkedQueue_OveralignmentEmplaceBack_TestE, i64 16), ptr %i.a, align 8, !tbaa !9
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #24
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_142ChunkedQueue_OveralignmentEmplaceBack_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_142ChunkedQueue_OveralignmentEmplaceBack_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20260526::chunked_queue.489", align 8 ; 17 uses
  %.sroa.7 = alloca [56 x i8], align 8            ; 5 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %3 = alloca %"class.testing::Message", align 8  ; 7 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.47.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.58.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  store ptr %i.af, ptr %i.a, align 8
  store ptr %i.ab, ptr %i.b, align 8
  store ptr %i.aa, ptr %1, align 8
  %.not9.i = icmp eq ptr %i.aa, null
  br i1 %.not9.i, label %_ZN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_142ChunkedQueue_OveralignmentEmplaceBack_Test8TestBodyEvE11OveralignedLm1ELm8ESaIS4_EED2Ev.exit, label %_ZNK4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_142ChunkedQueue_OveralignmentEmplaceBack_Test8TestBodyEvE11OveralignedLm1ELm8ESaIS4_EE9block_endEPNS0_18container_internal17ChunkedQueueBlockIS4_S5_EE.exit.i

_ZNK4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_142ChunkedQueue_OveralignmentEmplaceBack_Test8TestBodyEvE11OveralignedLm1ELm8ESaIS4_EE9block_endEPNS0_18container_internal17ChunkedQueueBlockIS4_S5_EE.exit.i: ; preds = %bb.b, %_ZNK4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_142ChunkedQueue_OveralignmentEmplaceBack_Test8TestBodyEvE11OveralignedLm1ELm8ESaIS4_EE9block_endEPNS0_18container_internal17ChunkedQueueBlockIS4_S5_EE.exit.i
  %.010.i = phi ptr [ %.0.val.i, %_ZNK4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_142ChunkedQueue_OveralignmentEmplaceBack_Test8TestBodyEvE11OveralignedLm1ELm8ESaIS4_EE9block_endEPNS0_18container_internal17ChunkedQueueBlockIS4_S5_EE.exit.i ], [ %i.aa, %bb.b ] ; 4 uses
  %.0.val.i = load ptr, ptr %.010.i, align 8, !tbaa !1486 ; 2 uses
  %i.f = ptrtoint ptr %.010.i to i64
  %i.g = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %.val.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !1490
  %i.h = ptrtoint ptr %.val.i.i.i to i64
  %reass.sub.i.i.i = sub i64 %i.h, %i.f
  call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %.010.i, i64 noundef %reass.sub.i.i.i, i64 noundef 64) #22
  %.not.i = icmp eq ptr %.0.val.i, null
  br i1 %.not.i, label %_ZN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_142ChunkedQueue_OveralignmentEmplaceBack_Test8TestBodyEvE11OveralignedLm1ELm8ESaIS4_EED2Ev.exit, label %_ZNK4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_142ChunkedQueue_OveralignmentEmplaceBack_Test8TestBodyEvE11OveralignedLm1ELm8ESaIS4_EE9block_endEPNS0_18container_internal17ChunkedQueueBlockIS4_S5_EE.exit.i

_ZN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_142ChunkedQueue_OveralignmentEmplaceBack_Test8TestBodyEvE11OveralignedLm1ELm8ESaIS4_EED2Ev.exit: ; preds = %_ZNK4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_142ChunkedQueue_OveralignmentEmplaceBack_Test8TestBodyEvE11OveralignedLm1ELm8ESaIS4_EE9block_endEPNS0_18container_internal17ChunkedQueueBlockIS4_S5_EE.exit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN7testing15AssertionResultD2Ev.exit
  %.01042 = phi i32 [ 0, %bb.a ], [ %i.be, %_ZN7testing15AssertionResultD2Ev.exit ] ; 3 uses
  %i.i = phi ptr [ null, %bb.a ], [ %i.af, %_ZN7testing15AssertionResultD2Ev.exit ] ; 3 uses
  %i.j = phi ptr [ null, %bb.a ], [ %i.ab, %_ZN7testing15AssertionResultD2Ev.exit ] ; 3 uses
  %i.k = phi ptr [ null, %bb.a ], [ %i.aa, %_ZN7testing15AssertionResultD2Ev.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7, i8 0, i64 56, i1 false)
  %i.l = icmp eq ptr %i.i, %i.j
  br i1 %i.l, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %.val.i.i.i15 = load ptr, ptr %i.c, align 8, !tbaa !1491 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %.val.i.i.i15, null
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_142ChunkedQueue_OveralignmentEmplaceBack_Test8TestBodyEvE11OveralignedLm1ELm8ESaIS4_EE12NewBlockSizeEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i.i.i15, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !1490
  %i.n = ptrtoint ptr %.val.i.i.i15 to i64
  %i.o = ptrtoint ptr %.val.i.i.i.i.i to i64
  %reass.sub = sub i64 %i.o, %i.n
  %i.p = add i64 %reass.sub, -64
  %i.q = ashr exact i64 %i.p, 5
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.q, i64 8)
  br label %_ZN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_142ChunkedQueue_OveralignmentEmplaceBack_Test8TestBodyEvE11OveralignedLm1ELm8ESaIS4_EE12NewBlockSizeEv.exit.i.i.i

_ZN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_142ChunkedQueue_OveralignmentEmplaceBack_Test8TestBodyEvE11OveralignedLm1ELm8ESaIS4_EE12NewBlockSizeEv.exit.i.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i.i = phi i64 [ %.sroa.speculated.i.i.i.i, %bb.e ], [ 1, %bb.d ] ; 2 uses
  %i.r = shl nuw nsw i64 %.0.i.i.i.i, 6
  %i.s = add nuw nsw i64 %i.r, 64
  %i.t = invoke noalias noundef nonnull ptr @_ZnwmSt11align_val_t(i64 noundef %i.s, i64 noundef 64) #26
          to label %.noexc unwind label %bb.i     ; 7 uses

.noexc:                                           ; preds = %_ZN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_142ChunkedQueue_OveralignmentEmplaceBack_Test8TestBodyEvE11OveralignedLm1ELm8ESaIS4_EE12NewBlockSizeEv.exit.i.i.i
  call void @llvm.assume(i1 true) [ "align"(ptr %i.t, i64 64) ]
  store ptr null, ptr %i.t, align 64, !tbaa !1486
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = add i64 %i.v, 64
  %i.x = inttoptr i64 %i.w to ptr                 ; 3 uses
  %i.y = getelementptr inbounds nuw [64 x i8], ptr %i.x, i64 %.0.i.i.i.i ; 3 uses
  store ptr %i.y, ptr %i.u, align 8, !tbaa !1490
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.noexc
  store ptr %i.x, ptr %.sroa.47.0..sroa_idx.i.i.i, align 8
  store ptr %i.y, ptr %.sroa.58.0..sroa_idx.i.i.i, align 8
  br label %_ZN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_142ChunkedQueue_OveralignmentEmplaceBack_Test8TestBodyEvE11OveralignedLm1ELm8ESaIS4_EE12AddTailBlockEv.exit.i.i

bb.g:                                             ; preds = %.noexc
  store ptr %i.t, ptr %.val.i.i.i15, align 8, !tbaa !1486
  br label %_ZN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_142ChunkedQueue_OveralignmentEmplaceBack_Test8TestBodyEvE11OveralignedLm1ELm8ESaIS4_EE12AddTailBlockEv.exit.i.i

_ZN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_142ChunkedQueue_OveralignmentEmplaceBack_Test8TestBodyEvE11OveralignedLm1ELm8ESaIS4_EE12AddTailBlockEv.exit.i.i: ; preds = %bb.g, %bb.f
  %i.z = phi ptr [ %i.k, %bb.g ], [ %i.t, %bb.f ]
  store ptr %i.t, ptr %i.c, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %_ZN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_142ChunkedQueue_OveralignmentEmplaceBack_Test8TestBodyEvE11OveralignedLm1ELm8ESaIS4_EE12AddTailBlockEv.exit.i.i
  %i.aa = phi ptr [ %i.z, %_ZN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_142ChunkedQueue_OveralignmentEmplaceBack_Test8TestBodyEvE11OveralignedLm1ELm8ESaIS4_EE12AddTailBlockEv.exit.i.i ], [ %i.k, %bb.c ] ; 8 uses
  %i.ab = phi ptr [ %i.y, %_ZN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_142ChunkedQueue_OveralignmentEmplaceBack_Test8TestBodyEvE11OveralignedLm1ELm8ESaIS4_EE12AddTailBlockEv.exit.i.i ], [ %i.j, %bb.c ] ; 6 uses
  %i.ac = phi ptr [ %i.x, %_ZN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_142ChunkedQueue_OveralignmentEmplaceBack_Test8TestBodyEvE11OveralignedLm1ELm8ESaIS4_EE12AddTailBlockEv.exit.i.i ], [ %i.i, %bb.c ] ; 4 uses
  %i.ad = load i64, ptr %i.d, align 8, !tbaa !1493
  %i.ae = add i64 %i.ad, 1
  store i64 %i.ae, ptr %i.d, align 8, !tbaa !1493
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 64 ; 6 uses
  store i32 %.01042, ptr %i.ac, align 64, !tbaa !177
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 %.01042, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !177
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7, i64 56, i1 false), !tbaa.struct !50
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2)
          to label %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.j

_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.h
  %i.ag = load i8, ptr %2, align 8, !tbaa !39, !range !49, !noundef !50
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.t, label %bb.k

bb.i:                                             ; preds = %_ZN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_142ChunkedQueue_OveralignmentEmplaceBack_Test8TestBodyEvE11OveralignedLm1ELm8ESaIS4_EE12NewBlockSizeEv.exit.i.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  store ptr %i.i, ptr %i.a, align 8
  store ptr %i.j, ptr %i.b, align 8
  store ptr %i.k, ptr %1, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.w

bb.j:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  store ptr %i.af, ptr %i.a, align 8
  store ptr %i.ab, ptr %i.b, align 8
  store ptr %i.aa, ptr %1, align 8
  br label %bb.v

bb.k:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.ak = load ptr, ptr %i.e, align 8, !tbaa !51  ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !52
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.m, %bb.l
  %i.am = phi ptr [ %i.al, %bb.m ], [ @.str.159, %bb.l ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 692, ptr noundef %i.am)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.an = load ptr, ptr %3, align 8, !tbaa !56    ; 3 uses
  %.not.i.i18 = icmp eq ptr %i.an, null
  br i1 %.not.i.i18, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.o
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !9
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(128) %i.an) #22, !inline_history !58
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.o, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.t

bb.p:                                             ; preds = %bb.k
  %i.ar = landingpad { ptr, i32 }
          cleanup
  store ptr %i.af, ptr %i.a, align 8
  store ptr %i.ab, ptr %i.b, align 8
  store ptr %i.aa, ptr %1, align 8
  br label %_ZN7testing7MessageD2Ev.exit21

bb.q:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  store ptr %i.af, ptr %i.a, align 8
  store ptr %i.ab, ptr %i.b, align 8
  store ptr %i.aa, ptr %1, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.n
  %i.at = landingpad { ptr, i32 }
          cleanup
  store ptr %i.af, ptr %i.a, align 8
  store ptr %i.ab, ptr %i.b, align 8
  store ptr %i.aa, ptr %1, align 8
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #22
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn = phi { ptr, i32 } [ %i.at, %bb.r ], [ %i.as, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.au = load ptr, ptr %3, align 8, !tbaa !56    ; 3 uses
  %.not.i.i19 = icmp eq ptr %i.au, null
  br i1 %.not.i.i19, label %_ZN7testing7MessageD2Ev.exit21, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i20

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i20: ; preds = %bb.s
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !9
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(128) %i.au) #22, !inline_history !58
  br label %_ZN7testing7MessageD2Ev.exit21

_ZN7testing7MessageD2Ev.exit21:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i20, %bb.s, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.ar, %bb.p ], [ %.pn, %bb.s ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i20 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #22
  br label %bb.v

bb.t:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.ay = load ptr, ptr %i.e, align 8, !tbaa !51  ; 4 uses
  %.not.i.i22 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i22, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !52 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.u
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !59
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef 32) #24
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.t, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.be = add nuw nsw i32 %.01042, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.be, 10
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !1497

bb.v:                                             ; preds = %_ZN7testing7MessageD2Ev.exit21, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit21 ], [ %i.aj, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.i
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.v ], [ %i.ai, %bb.i ]
  call fastcc void @_ZN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_142ChunkedQueue_OveralignmentEmplaceBack_Test8TestBodyEvE11OveralignedLm1ELm8ESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_142ChunkedQueue_OveralignmentEmplaceBack_Test8TestBodyEvE11OveralignedLm1ELm8ESaIS4_EED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(56) dereferenceable(56) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1491   ; 2 uses
  %.not9 = icmp eq ptr %i.a, null
  br i1 %.not9, label %._crit_edge, label %_ZNK4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_142ChunkedQueue_OveralignmentEmplaceBack_Test8TestBodyEvE11OveralignedLm1ELm8ESaIS4_EE9block_endEPNS0_18container_internal17ChunkedQueueBlockIS4_S5_EE.exit

_ZNK4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_142ChunkedQueue_OveralignmentEmplaceBack_Test8TestBodyEvE11OveralignedLm1ELm8ESaIS4_EE9block_endEPNS0_18container_internal17ChunkedQueueBlockIS4_S5_EE.exit: ; preds = %bb.a, %_ZNK4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_142ChunkedQueue_OveralignmentEmplaceBack_Test8TestBodyEvE11OveralignedLm1ELm8ESaIS4_EE9block_endEPNS0_18container_internal17ChunkedQueueBlockIS4_S5_EE.exit
  %.010 = phi ptr [ %.0.val, %_ZNK4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_142ChunkedQueue_OveralignmentEmplaceBack_Test8TestBodyEvE11OveralignedLm1ELm8ESaIS4_EE9block_endEPNS0_18container_internal17ChunkedQueueBlockIS4_S5_EE.exit ], [ %i.a, %bb.a ] ; 4 uses
  %.0.val = load ptr, ptr %.010, align 8, !tbaa !1486 ; 2 uses
  %i.b = ptrtoint ptr %.010 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %.010, i64 8
  %.val.i.i = load ptr, ptr %i.c, align 8, !tbaa !1490
  %i.d = ptrtoint ptr %.val.i.i to i64
  %reass.sub.i.i = sub i64 %i.d, %i.b
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %.010, i64 noundef %reass.sub.i.i, i64 noundef 64) #22
  %.not = icmp eq ptr %.0.val, null
  br i1 %.not, label %._crit_edge, label %_ZNK4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_142ChunkedQueue_OveralignmentEmplaceBack_Test8TestBodyEvE11OveralignedLm1ELm8ESaIS4_EE9block_endEPNS0_18container_internal17ChunkedQueueBlockIS4_S5_EE.exit

._crit_edge:                                      ; preds = %_ZNK4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_142ChunkedQueue_OveralignmentEmplaceBack_Test8TestBodyEvE11OveralignedLm1ELm8ESaIS4_EE9block_endEPNS0_18container_internal17ChunkedQueueBlockIS4_S5_EE.exit, %bb.a
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noalias noundef nonnull ptr @_ZnwmSt11align_val_t(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvmSt11align_val_t(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_159ChunkedQueue_StatelessAllocatorDoesntAffectObjectSizes_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_159ChunkedQueue_StatelessAllocatorDoesntAffectObjectSizes_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_159ChunkedQueue_StatelessAllocatorDoesntAffectObjectSizes_TestE, i64 16), ptr %i.a, align 8, !tbaa !9
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #24
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_159ChunkedQueue_StatelessAllocatorDoesntAffectObjectSizes_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #24
  ret void
}
end_hunk_0
