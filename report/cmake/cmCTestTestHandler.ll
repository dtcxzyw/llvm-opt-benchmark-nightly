Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmCTestTestHandler?download=true
inline.NumInlined: 7418
inline.NumDeleted: 2353
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE:bb.a
.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !272
  tail call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !271  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #31
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1440

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !272
  tail call void @_ZNSt8_Rb_treeIiSt4pairIKiPN18cmCTestTestHandler21cmCTestTestPropertiesEESt10_Select1stIS5_ESt4lessIiESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !271  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #31
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1441

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIiSt4pairIKiN26cmCTestMultiProcessHandler8TestInfoEESt10_Select1stIS4_ESt4lessIiESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeIiSt4pairIKiN26cmCTestMultiProcessHandler8TestInfoEESt10_Select1stIS4_ESt4lessIiESaIS4_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS4_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeIiSt4pairIKiN26cmCTestMultiProcessHandler8TestInfoEESt10_Select1stIS4_ESt4lessIiESaIS4_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS4_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !272
  tail call void @_ZNSt8_Rb_treeIiSt4pairIKiN26cmCTestMultiProcessHandler8TestInfoEESt10_Select1stIS4_ESt4lessIiESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !271  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !138
  invoke void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef %i.g)
          to label %_ZNSt8_Rb_treeIiSt4pairIKiN26cmCTestMultiProcessHandler8TestInfoEESt10_Select1stIS4_ESt4lessIiESaIS4_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS4_E.exit unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #30
  unreachable

_ZNSt8_Rb_treeIiSt4pairIKiN26cmCTestMultiProcessHandler8TestInfoEESt10_Select1stIS4_ESt4lessIiESaIS4_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS4_E.exit: ; preds = %.lr.ph
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 88) #31
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1442

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiN26cmCTestMultiProcessHandler8TestInfoEESt10_Select1stIS4_ESt4lessIiESaIS4_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS4_E.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN18cmCTestTestHandler30cmCTestTestResourceRequirementEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN18cmCTestTestHandler30cmCTestTestResourceRequirementEEEvT_S5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN18cmCTestTestHandler30cmCTestTestResourceRequirementEEvPT_.exit.i
  %.05.i = phi ptr [ %i.f, %_ZSt8_DestroyIN18cmCTestTestHandler30cmCTestTestResourceRequirementEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !51 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZSt8_DestroyIN18cmCTestTestHandler30cmCTestTestResourceRequirementEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.d = load i64, ptr %i.b, align 8, !tbaa !53
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #31
  br label %_ZSt8_DestroyIN18cmCTestTestHandler30cmCTestTestResourceRequirementEEvPT_.exit.i

_ZSt8_DestroyIN18cmCTestTestHandler30cmCTestTestResourceRequirementEEvPT_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN18cmCTestTestHandler30cmCTestTestResourceRequirementEEEvT_S5_.exit, label %.lr.ph.i, !llvm.loop !15

_ZNSt12_Destroy_auxILb0EE9__destroyIPN18cmCTestTestHandler30cmCTestTestResourceRequirementEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIN18cmCTestTestHandler30cmCTestTestResourceRequirementEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_121cmCTestAddTestCommandD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_121cmCTestAddTestCommand11InitialPassERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EER17cmExecutionStatus(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(80) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.d = load ptr, ptr %1, align 8, !tbaa !79
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp ugt i64 %i.g, 32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 41, ptr %i.a, align 8, !tbaa !52
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !51
  %i.k = load i64, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  store i64 %i.k, ptr %i.i, align 8, !tbaa !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.j, ptr noundef nonnull align 1 dereferenceable(41) @.str.262, i64 41, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !45
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  store i8 0, ptr %i.m, align 1, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.b

_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc.i
  %i.o = load ptr, ptr %3, align 8, !tbaa !51     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.i
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.q = load i64, ptr %i.i, align 8, !tbaa !53
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.d

bb.b:                                             ; preds = %.noexc.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %3, align 8, !tbaa !51     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.i
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.b
  %i.v = load i64, ptr %i.i, align 8, !tbaa !53
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %i.s

bb.c:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !258
  %i.z = tail call noundef zeroext i1 @_ZN18cmCTestTestHandler7AddTestERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(4408) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %1) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret i1 %i.h
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_127cmCTestDiscoverTestsCommandD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_127cmCTestDiscoverTestsCommand11InitialPassERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EER17cmExecutionStatus(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(80) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.ArgumentParser::Instance", align 8 ; 14 uses
  %4 = alloca %class.cmArgumentParser, align 8    ; 8 uses
  %5 = alloca %"class.std::vector", align 8       ; 12 uses
  %6 = alloca %struct.Arguments, align 8          ; 25 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %9 = alloca %"class.std::vector", align 8       ; 13 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.b = load atomic i8, ptr @_ZGVZN12_GLOBAL__N_127cmCTestDiscoverTestsCommand11InitialPassERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EER17cmExecutionStatusE6parser acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.f, !prof !1455

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN12_GLOBAL__N_127cmCTestDiscoverTestsCommand11InitialPassERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EER17cmExecutionStatusE6parser) #29
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  invoke fastcc void @_Z21cmTestDiscoveryParserIZN12_GLOBAL__N_127cmCTestDiscoverTestsCommand11InitialPassERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EER17cmExecutionStatusE9ArgumentsE16cmArgumentParserIT_Ev(ptr dead_on_unwind noalias writable align 8 %4)
          to label %bb.d unwind label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.e = invoke fastcc noundef nonnull align 8 dereferenceable(144) ptr @_ZN16cmArgumentParserIZN12_GLOBAL__N_127cmCTestDiscoverTestsCommand11InitialPassERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EER17cmExecutionStatusE9ArgumentsE4BindIMSF_S8_SF_S8_vvEERSG_N2cm18static_string_viewET_(ptr noundef nonnull align 8 dereferenceable(144) %4, i64 9, ptr nonnull @.str.263)
          to label %bb.e unwind label %bb.p       ; 0 uses

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN14ArgumentParser9ActionMapC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(144) @_ZZN12_GLOBAL__N_127cmCTestDiscoverTestsCommand11InitialPassERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EER17cmExecutionStatusE6parser, ptr noundef nonnull align 8 dereferenceable(144) %4)
          to label %_ZN16cmArgumentParserIZN12_GLOBAL__N_127cmCTestDiscoverTestsCommand11InitialPassERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EER17cmExecutionStatusE9ArgumentsEC2ERKSG_.exit unwind label %bb.p

_ZN16cmArgumentParserIZN12_GLOBAL__N_127cmCTestDiscoverTestsCommand11InitialPassERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EER17cmExecutionStatusE9ArgumentsEC2ERKSG_.exit: ; preds = %bb.e
  call void @_ZN14ArgumentParser9ActionMapD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.f = call i32 @__cxa_atexit(ptr nonnull @_ZN14ArgumentParser4BaseD2Ev, ptr nonnull @_ZZN12_GLOBAL__N_127cmCTestDiscoverTestsCommand11InitialPassERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EER17cmExecutionStatusE6parser, ptr nonnull @__dso_handle) #29 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN12_GLOBAL__N_127cmCTestDiscoverTestsCommand11InitialPassERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EER17cmExecutionStatusE6parser) #29
  br label %bb.f

bb.f:                                             ; preds = %_ZN16cmArgumentParserIZN12_GLOBAL__N_127cmCTestDiscoverTestsCommand11InitialPassERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EER17cmExecutionStatusE9ArgumentsEC2ERKSG_.exit, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !1456)
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i32 0, ptr %i.g, align 8, !tbaa !183, !alias.scope !1456
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.h, align 8, !tbaa !138, !alias.scope !1456
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.g, ptr %i.i, align 8, !tbaa !169, !alias.scope !1456
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.g, ptr %i.j, align 8, !tbaa !184, !alias.scope !1456
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, i8 0, i64 56, i1 false), !alias.scope !1456
  store ptr %i.m, ptr %i.l, align 8, !tbaa !50, !alias.scope !1456
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 104
  store i64 0, ptr %i.n, align 8, !tbaa !45, !alias.scope !1456
  store i8 0, ptr %i.m, align 8, !tbaa !53, !alias.scope !1456
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false), !alias.scope !1456
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 152
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 168 ; 2 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !50, !alias.scope !1456
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 160
  store i64 0, ptr %i.r, align 8, !tbaa !45, !alias.scope !1456
  store i8 0, ptr %i.q, align 8, !tbaa !53, !alias.scope !1456
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.s, i8 0, i64 48, i1 false), !alias.scope !1456
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 232 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 248 ; 4 uses
  store ptr %i.u, ptr %i.t, align 8, !tbaa !50, !alias.scope !1456
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 240 ; 2 uses
  store i64 0, ptr %i.v, align 8, !tbaa !45, !alias.scope !1456
  store i8 0, ptr %i.u, align 8, !tbaa !53, !alias.scope !1456
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29, !noalias !1456
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 24, i1 false), !noalias !1456
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %6, ptr %i.w, align 8, !tbaa !1462, !noalias !1456
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %5, ptr %i.x, align 8, !tbaa !1463, !noalias !1456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1456
  store ptr %6, ptr %i.a, align 8, !tbaa !289, !noalias !1456
  invoke void @_ZNSt6vectorIN14ArgumentParser11ParserStateESaIS1_EE17_M_realloc_insertIJRKNS0_9ActionMapERPvEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr null, ptr noundef nonnull align 8 dereferenceable(144) @_ZZN12_GLOBAL__N_127cmCTestDiscoverTestsCommand11InitialPassERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EER17cmExecutionStatusE6parser, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN14ArgumentParser8InstanceC2ERKNS_9ActionMapEPNS_11ParseResultEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEPv.exit.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN14ArgumentParser11ParserStateESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(40) %3) #29
  br label %.body

_ZN14ArgumentParser8InstanceC2ERKNS_9ActionMapEPNS_11ParseResultEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEPv.exit.i.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1456
  invoke void @_ZN14ArgumentParser8Instance5ParseIKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEvRT_m(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %_ZN14ArgumentParser8InstanceC2ERKNS_9ActionMapEPNS_11ParseResultEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEPv.exit.i.i
  %i.z = load ptr, ptr %3, align 8, !tbaa !322, !noalias !1456 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !323, !noalias !1456 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN14ArgumentParser11ParserStateES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.h, %_ZSt8_DestroyIN14ArgumentParser11ParserStateEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.ai, %_ZSt8_DestroyIN14ArgumentParser11ParserStateEEvPT_.exit.i.i.i.i.i.i ], [ %i.z, %bb.h ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !256 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN14ArgumentParser11ParserStateEEvPT_.exit.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.af = invoke noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i32 noundef 3)
          to label %_ZSt8_DestroyIN14ArgumentParser11ParserStateEEvPT_.exit.i.i.i.i.i.i unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #30
  unreachable

_ZSt8_DestroyIN14ArgumentParser11ParserStateEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ai, %i.ab
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN14ArgumentParser11ParserStateES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !20

_ZSt8_DestroyIPN14ArgumentParser11ParserStateES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN14ArgumentParser11ParserStateEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !322, !noalias !1456
  br label %_ZSt8_DestroyIPN14ArgumentParser11ParserStateES1_EvT_S3_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN14ArgumentParser11ParserStateES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN14ArgumentParser11ParserStateES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i, %bb.h
  %i.aj = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN14ArgumentParser11ParserStateES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.z, %bb.h ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i1.i.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN14ArgumentParser11ParserStateES1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !324, !noalias !1456
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #31
  br label %bb.m

bb.l:                                             ; preds = %_ZN14ArgumentParser8InstanceC2ERKNS_9ActionMapEPNS_11ParseResultEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEPv.exit.i.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14ArgumentParser8InstanceD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29, !noalias !1456
  br label %.body

bb.m:                                             ; preds = %bb.k, %_ZSt8_DestroyIPN14ArgumentParser11ParserStateES1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29, !noalias !1456
  %i.aq = load ptr, ptr %2, align 8, !tbaa !330, !nonnull !39, !align !236
  %i.ar = invoke noundef zeroext i1 @_ZNK14ArgumentParser11ParseResult16MaybeReportErrorER10cmMakefile(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(2952) %i.aq)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  br i1 %i.ar, label %bb.ap, label %bb.s

bb.o:                                             ; preds = %bb.c
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.d, %bb.e
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14ArgumentParser9ActionMapD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %4) #29
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.at, %bb.p ], [ %i.as, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN12_GLOBAL__N_127cmCTestDiscoverTestsCommand11InitialPassERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EER17cmExecutionStatusE6parser) #29
  br label %bb.ar

bb.r:                                             ; preds = %bb.m
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.s:                                             ; preds = %bb.n
  %i.av = load ptr, ptr %5, align 8, !tbaa !80    ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !80
  %i.ay = icmp eq ptr %i.av, %i.ax
  br i1 %i.ay, label %bb.ab, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !1464)
  %i.az = load ptr, ptr %i.av, align 8, !tbaa !51, !noalias !1464
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !45, !noalias !1464 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.bc, ptr %8, align 8, !tbaa !50, !alias.scope !1465
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store i64 0, ptr %i.bd, align 8, !tbaa !45, !alias.scope !1465
  store i8 0, ptr %i.bc, align 8, !tbaa !53, !alias.scope !1465
  %i.be = add i64 %i.bb, 25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.be)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !45, !alias.scope !1465
  %i.bg = add i64 %i.bf, -4611686018427387879
  %i.bh = icmp ult i64 %i.bg, 25
  br i1 %i.bh, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.u
  %i.bi = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.264, i64 noundef 25)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.v ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.bj = load i64, ptr %i.bd, align 8, !tbaa !45, !alias.scope !1465
  %i.bk = sub i64 4611686018427387903, %i.bj
  %i.bl = icmp ult i64 %i.bk, %i.bb
  br i1 %i.bl, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.280) #32
          to label %.cont.i.i unwind label %bb.v

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.bm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %i.az, i64 noundef %i.bb)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.t
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %8, align 8, !tbaa !51, !alias.scope !1465 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.bc
  br i1 %i.bp, label %.body35, label %.body35.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1466)
  %i.bq = load i64, ptr %i.bd, align 8, !tbaa !45, !noalias !1466
  %i.br = and i64 %i.bq, -2
  %i.bs = icmp eq i64 %i.br, 4611686018427387902
  br i1 %i.bs, label %bb.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.w:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.280) #32
          to label %.noexc unwind label %bb.z

.noexc:                                           ; preds = %bb.w
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.bt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.265, i64 noundef 2)
          to label %.noexc37 unwind label %bb.z   ; 6 uses

.noexc37:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.bu, ptr %7, align 8, !tbaa !50, !alias.scope !1466
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !51 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 5 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.x:                                             ; preds = %.noexc37
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !45 ; 3 uses
  %i.ca = icmp ult i64 %i.bz, 16
  call void @llvm.assume(i1 %i.ca)
  %i.cb = add nuw nsw i64 %i.bz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bu, ptr noundef nonnull align 8 dereferenceable(1) %i.bw, i64 %i.cb, i1 false)
  br label %bb.y

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc37
  store ptr %i.bv, ptr %7, align 8, !tbaa !51, !alias.scope !1466
  %i.cc = load i64, ptr %i.bw, align 8, !tbaa !53
  store i64 %i.cc, ptr %i.bu, align 8, !tbaa !53, !alias.scope !1466
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !45
  br label %bb.y

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.x
  %i.cd = phi i64 [ %i.bz, %bb.x ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.cd, ptr %i.cf, align 8, !tbaa !45, !alias.scope !1466
  store ptr %i.bw, ptr %i.bt, align 8, !tbaa !51
  store i64 0, ptr %i.ce, align 8, !tbaa !45
  store i8 0, ptr %i.bw, align 8, !tbaa !53
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.cg, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.aa

_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.y
  %i.ch = load ptr, ptr %7, align 8, !tbaa !51    ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.bu
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.cj = load i64, ptr %i.bu, align 8, !tbaa !53
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  %i.cl = load ptr, ptr %8, align 8, !tbaa !51    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bc
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cn = load i64, ptr %i.bc, align 8, !tbaa !53
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.ap

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.w
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

bb.aa:                                            ; preds = %bb.y
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cr = load ptr, ptr %7, align 8, !tbaa !51    ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.bu
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.aa
  %i.ct = load i64, ptr %i.bu, align 8, !tbaa !53
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43, %bb.z
  %.pn24 = phi { ptr, i32 } [ %i.cp, %bb.z ], [ %i.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ], [ %i.cq, %bb.aa ] ; 2 uses
  %i.cv = load ptr, ptr %8, align 8, !tbaa !51    ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.bc
  br i1 %i.cw, label %.body35, label %.body35.sink.split

.body35.sink.split:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %bb.v
  %.sink = phi ptr [ %i.bo, %bb.v ], [ %i.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ]
  %.pn24.pn.ph = phi { ptr, i32 } [ %i.bn, %bb.v ], [ %.pn24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ]
  %i.cx = load i64, ptr %i.bc, align 8, !tbaa !53
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cy) #31
  br label %.body35

.body35:                                          ; preds = %.body35.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %bb.v
  %.pn24.pn = phi { ptr, i32 } [ %i.bn, %bb.v ], [ %.pn24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ], [ %.pn24.pn.ph, %.body35.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %.body

bb.ab:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !258
  %i.db = invoke noundef zeroext i1 @_Z20cmCTestDiscoverTestsRK19cmTestDiscoveryArgsP18cmCTestTestHandlerRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EER17cmExecutionStatus(ptr noundef nonnull align 8 dereferenceable(232) %6, ptr noundef %i.da, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(80) %2)
          to label %bb.ac unwind label %bb.ad     ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %i.dc = load i64, ptr %i.v, align 8
  %i.dd = icmp ne i64 %i.dc, 0
  %or.cond.not = select i1 %i.db, i1 %i.dd, i1 false
  br i1 %or.cond.not, label %bb.ae, label %bb.am

bb.ad:                                            ; preds = %bb.ab
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ae:                                            ; preds = %bb.ac
  %i.df = load ptr, ptr %9, align 8, !tbaa !80    ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !80 ; 3 uses
  %.not7576 = icmp eq ptr %i.df, %i.dh
  br i1 %.not7576, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.ah
  %.pre.a = load ptr, ptr %i.dg, align 8, !tbaa !48, !noalias !1467
  %.pre78 = load ptr, ptr %9, align 8, !tbaa !79, !noalias !1467
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.ae
  %11 = phi ptr [ %.pre78, %._crit_edge.loopexit ], [ %i.df, %bb.ae ] ; 2 uses
  %12 = phi ptr [ %.pre.a, %._crit_edge.loopexit ], [ %i.dh, %bb.ae ] ; 2 uses
  %i.di = load ptr, ptr %2, align 8, !tbaa !330, !nonnull !39, !align !236
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !1468)
  %.sroa.0.0.copyload.i = load i64, ptr @_ZN6cmList17element_separatorE, align 8, !tbaa !52, !noalias !1468
  %.sroa.2.0.copyload.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6cmList17element_separatorE, i64 8), align 8, !tbaa !66, !noalias !1468
  call void @llvm.experimental.noalias.scope.decl(metadata !1469)
  %i.dj = icmp eq ptr %12, %11
  br i1 %i.dj, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %._crit_edge
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.dk, ptr %10, align 8, !tbaa !50, !alias.scope !1467
  %i.dl = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.dl, align 8, !tbaa !45, !alias.scope !1467
  store i8 0, ptr %i.dk, align 8, !tbaa !53, !alias.scope !1467
  br label %_ZN6cmList9to_stringISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EETnNSt9enable_ifIXsr2cm8is_rangeIT_EE5valueEiE4typeELi0EEES7_RKSB_.exit

bb.ag:                                            ; preds = %._crit_edge
  invoke void @_ZN6cmList4JoinIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEES8_T_SF_St17basic_string_viewIcS6_E(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr %11, ptr %12, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i)
          to label %._ZN6cmList9to_stringISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EETnNSt9enable_ifIXsr2cm8is_rangeIT_EE5valueEiE4typeELi0EEES7_RKSB_.exit_crit_edge unwind label %bb.ak

._ZN6cmList9to_stringISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EETnNSt9enable_ifIXsr2cm8is_rangeIT_EE5valueEiE4typeELi0EEES7_RKSB_.exit_crit_edge: ; preds = %bb.ag
  %.pre79 = load ptr, ptr %10, align 8, !tbaa !51
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.pre80 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !45
  br label %_ZN6cmList9to_stringISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EETnNSt9enable_ifIXsr2cm8is_rangeIT_EE5valueEiE4typeELi0EEES7_RKSB_.exit

.lr.ph:                                           ; preds = %bb.ae, %bb.ah
  %.sroa.068.077 = phi ptr [ %i.dm, %bb.ah ], [ %i.df, %bb.ae ] ; 2 uses
  invoke void @_ZN5cmsys11SystemTools13ReplaceStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcS9_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.068.077, ptr noundef nonnull @.str.266, ptr noundef nonnull @.str.267)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %.lr.ph
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.068.077, i64 32 ; 2 uses
  %.not75 = icmp eq ptr %i.dm, %i.dh
  br i1 %.not75, label %._crit_edge.loopexit, label %.lr.ph

bb.ai:                                            ; preds = %.lr.ph
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

_ZN6cmList9to_stringISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EETnNSt9enable_ifIXsr2cm8is_rangeIT_EE5valueEiE4typeELi0EEES7_RKSB_.exit: ; preds = %._ZN6cmList9to_stringISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EETnNSt9enable_ifIXsr2cm8is_rangeIT_EE5valueEiE4typeELi0EEES7_RKSB_.exit_crit_edge, %bb.af
  %i.do = phi i64 [ %.pre80, %._ZN6cmList9to_stringISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EETnNSt9enable_ifIXsr2cm8is_rangeIT_EE5valueEiE4typeELi0EEES7_RKSB_.exit_crit_edge ], [ 0, %bb.af ]
  %i.dp = phi ptr [ %.pre79, %._ZN6cmList9to_stringISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EETnNSt9enable_ifIXsr2cm8is_rangeIT_EE5valueEiE4typeELi0EEES7_RKSB_.exit_crit_edge ], [ %i.dk, %bb.af ]
  invoke void @_ZN10cmMakefile13AddDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(2952) %i.di, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 %i.do, ptr %i.dp)
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %_ZN6cmList9to_stringISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EETnNSt9enable_ifIXsr2cm8is_rangeIT_EE5valueEiE4typeELi0EEES7_RKSB_.exit
  %i.dq = load ptr, ptr %10, align 8, !tbaa !51   ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.aj
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !53
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.du) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %bb.am

bb.ak:                                            ; preds = %bb.ag
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

bb.al:                                            ; preds = %_ZN6cmList9to_stringISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EETnNSt9enable_ifIXsr2cm8is_rangeIT_EE5valueEiE4typeELi0EEES7_RKSB_.exit
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dx = load ptr, ptr %10, align 8, !tbaa !51   ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.al
  %i.ea = load i64, ptr %i.dy, align 8, !tbaa !53
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.eb) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53, %bb.ak
  %.pn27 = phi { ptr, i32 } [ %i.dv, %bb.ak ], [ %i.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53 ], [ %i.dw, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %bb.ao

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %bb.ac
  %i.ec = load ptr, ptr %9, align 8, !tbaa !79    ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !48 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ec, %i.ee
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.am, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ek, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.ec, %bb.am ] ; 3 uses
  %i.ef = load ptr, ptr %.05.i.i.i, align 8, !tbaa !51 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ei = load i64, ptr %i.eg, align 8, !tbaa !53
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ej) #31
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ek, %i.ee
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %9, align 8, !tbaa !79
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.am
  %i.el = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ec, %bb.am ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.el, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.em = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !49
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = ptrtoint ptr %i.el to i64
  %i.eq = sub i64 %i.eo, %i.ep
  call void @_ZdlPvm(ptr noundef nonnull %i.el, i64 noundef %i.eq) #31
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.ap

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %bb.ai, %bb.ad
  %.pn29 = phi { ptr, i32 } [ %i.dn, %bb.ai ], [ %.pn27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ], [ %i.de, %bb.ad ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %.body

bb.ap:                                            ; preds = %bb.n, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %.1 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ], [ %i.db, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ], [ true, %bb.n ]
  %i.er = load ptr, ptr %i.t, align 8, !tbaa !51  ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.u
  br i1 %i.es, label %_ZZN12_GLOBAL__N_127cmCTestDiscoverTestsCommand11InitialPassERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EER17cmExecutionStatusEN9ArgumentsD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ap
  %i.et = load i64, ptr %i.u, align 8, !tbaa !53
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.eu) #31
  br label %_ZZN12_GLOBAL__N_127cmCTestDiscoverTestsCommand11InitialPassERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EER17cmExecutionStatusEN9ArgumentsD2Ev.exit

_ZZN12_GLOBAL__N_127cmCTestDiscoverTestsCommand11InitialPassERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EER17cmExecutionStatusEN9ArgumentsD2Ev.exit: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @_ZN19cmTestDiscoveryArgsD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(264) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.ev = load ptr, ptr %5, align 8, !tbaa !79    ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !48 ; 2 uses
  %.not4.i.i.i56 = icmp eq ptr %i.ev, %i.ex
  br i1 %.not4.i.i.i56, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i64, label %.lr.ph.i.i.i57

.lr.ph.i.i.i57:                                   ; preds = %_ZZN12_GLOBAL__N_127cmCTestDiscoverTestsCommand11InitialPassERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EER17cmExecutionStatusEN9ArgumentsD2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i60
  %.05.i.i.i58 = phi ptr [ %i.fd, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i60 ], [ %i.ev, %_ZZN12_GLOBAL__N_127cmCTestDiscoverTestsCommand11InitialPassERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EER17cmExecutionStatusEN9ArgumentsD2Ev.exit ] ; 3 uses
  %i.ey = load ptr, ptr %.05.i.i.i58, align 8, !tbaa !51 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.05.i.i.i58, i64 16 ; 2 uses
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i59: ; preds = %.lr.ph.i.i.i57
  %i.fb = load i64, ptr %i.ez, align 8, !tbaa !53
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fc) #31
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i60

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i60: ; preds = %.lr.ph.i.i.i57, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i59
  %i.fd = getelementptr inbounds nuw i8, ptr %.05.i.i.i58, i64 32 ; 2 uses
  %.not.i.i.i61 = icmp eq ptr %i.fd, %i.ex
  br i1 %.not.i.i.i61, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i62, label %.lr.ph.i.i.i57, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i62: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i60
  %.pr.i63 = load ptr, ptr %5, align 8, !tbaa !79
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i64

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i64: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i62, %_ZZN12_GLOBAL__N_127cmCTestDiscoverTestsCommand11InitialPassERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EER17cmExecutionStatusEN9ArgumentsD2Ev.exit
  %i.fe = phi ptr [ %.pr.i63, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i62 ], [ %i.ev, %_ZZN12_GLOBAL__N_127cmCTestDiscoverTestsCommand11InitialPassERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EER17cmExecutionStatusEN9ArgumentsD2Ev.exit ] ; 3 uses
  %.not.i.i1.i65 = icmp eq ptr %i.fe, null
  br i1 %.not.i.i1.i65, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit67, label %bb.aq

bb.aq:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i64
  %i.ff = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !49
  %i.fh = ptrtoint ptr %i.fg to i64
  %i.fi = ptrtoint ptr %i.fe to i64
  %i.fj = sub i64 %i.fh, %i.fi
  call void @_ZdlPvm(ptr noundef nonnull %i.fe, i64 noundef %i.fj) #31
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit67

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit67: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i64, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret i1 %.1

.body:                                            ; preds = %bb.r, %.body35, %bb.ao, %bb.g, %bb.l
  %.pn29.pn.pn = phi { ptr, i32 } [ %i.y, %bb.g ], [ %i.ap, %bb.l ], [ %.pn29, %bb.ao ], [ %.pn24.pn, %.body35 ], [ %i.au, %bb.r ]
  call fastcc void @_ZZN12_GLOBAL__N_127cmCTestDiscoverTestsCommand11InitialPassERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EER17cmExecutionStatusEN9ArgumentsD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.ar

bb.ar:                                            ; preds = %.body, %bb.q
  %.pn29.pn.pn.pn = phi { ptr, i32 } [ %.pn29.pn.pn, %.body ], [ %.pn, %bb.q ]
  resume { ptr, i32 } %.pn29.pn.pn.pn
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_Z21cmTestDiscoveryParserIZN12_GLOBAL__N_127cmCTestDiscoverTestsCommand11InitialPassERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EER17cmExecutionStatusE9ArgumentsE16cmArgumentParserIT_Ev(ptr dead_on_unwind noalias nonnull writable align 8 %0) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::function.1060", align 8 ; 11 uses
  %2 = alloca %"class.std::function.1060", align 8 ; 11 uses
  %3 = alloca %"class.std::function.1060", align 8 ; 11 uses
  %4 = alloca %"class.std::function.1060", align 8 ; 11 uses
  %5 = alloca %"class.std::function.1060", align 8 ; 11 uses
  %6 = alloca %"class.std::function.1060", align 8 ; 11 uses
  %7 = alloca %"class.std::function.1060", align 8 ; 11 uses
  %8 = alloca %class.cmArgumentParser, align 8    ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %8, i8 0, i64 144, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.c, align 8
  store i64 48, ptr %7, align 8, !tbaa !53
  store ptr @_ZNSt17_Function_handlerIFvRN14ArgumentParser8InstanceEEZN16cmArgumentParserIZN12_GLOBAL__N_127cmCTestDiscoverTestsCommand11InitialPassERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EER17cmExecutionStatusE9ArgumentsE4BindIM19cmTestDiscoveryArgsNS0_8NonEmptyISF_EESN_SP_vvEERSL_N2cm18static_string_viewET_EUlS2_E_E9_M_invokeERKSt9_Any_dataS2_, ptr %i.b, align 8, !tbaa !332
  store ptr @_ZNSt17_Function_handlerIFvRN14ArgumentParser8InstanceEEZN16cmArgumentParserIZN12_GLOBAL__N_127cmCTestDiscoverTestsCommand11InitialPassERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EER17cmExecutionStatusE9ArgumentsE4BindIM19cmTestDiscoveryArgsNS0_8NonEmptyISF_EESN_SP_vvEERSL_N2cm18static_string_viewET_EUlS2_E_E10_M_managerERSt9_Any_dataRKSX_St18_Manager_operation, ptr %i.a, align 8, !tbaa !256
  invoke void @_ZN14ArgumentParser4Base4BindESt17basic_string_viewIcSt11char_traitsIcEESt8functionIFvRNS_8InstanceEEE(ptr noundef nonnull align 8 dereferenceable(144) %8, i64 7, ptr nonnull @.str.268, ptr noundef nonnull align 8 %7)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !256  ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.h, label %bb.c
end_hunk_0
