Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmInstrumentation?download=true
inline.NumInlined: 3224
inline.NumDeleted: 1201
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_:bb.a
bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.t

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #30
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @"_ZNSt17_Function_handlerIFivEZN17cmInstrumentation23CollectTimingAfterBuildEiE3$_0E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #4 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !1274
  %i.b = tail call i32 @uv_kill(i32 noundef %i.a, i32 noundef 0)
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i.i.i, label %"_ZSt10__invoke_rIiRZN17cmInstrumentation23CollectTimingAfterBuildEiE3$_0JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  tail call void @_ZN5cmsys11SystemTools5DelayEj(i32 noundef 100)
  %i.d = load i32, ptr %0, align 8, !tbaa !1274
  %i.e = tail call i32 @uv_kill(i32 noundef %i.d, i32 noundef 0)
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.lr.ph.i.i.i, label %"_ZSt10__invoke_rIiRZN17cmInstrumentation23CollectTimingAfterBuildEiE3$_0JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit", !llvm.loop !1272

"_ZSt10__invoke_rIiRZN17cmInstrumentation23CollectTimingAfterBuildEiE3$_0JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit": ; preds = %.lr.ph.i.i.i, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFivEZN17cmInstrumentation23CollectTimingAfterBuildEiE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #21 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN17cmInstrumentation23CollectTimingAfterBuildEiE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN17cmInstrumentation23CollectTimingAfterBuildEiE3$_0", ptr %0, align 8, !tbaa !186
  br label %"_ZNSt14_Function_base13_Base_managerIZN17cmInstrumentation23CollectTimingAfterBuildEiE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !167
  br label %"_ZNSt14_Function_base13_Base_managerIZN17cmInstrumentation23CollectTimingAfterBuildEiE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i32, ptr %1, align 8, !tbaa !135
  store i32 %.val.i, ptr %0, align 8, !tbaa !135
  br label %"_ZNSt14_Function_base13_Base_managerIZN17cmInstrumentation23CollectTimingAfterBuildEiE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN17cmInstrumentation23CollectTimingAfterBuildEiE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare i32 @uv_kill(i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN5cmsys11SystemTools5DelayEj(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFN17cmInstrumentation13CommandResultEvEZNS0_23CollectTimingAfterBuildEiE3$_1E9_M_invokeERKSt9_Any_data"(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.cmInstrumentation::CommandResult") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) #4 align 2 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !tbaa !167   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1284)
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149, !noalias !1285
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %bb.b, label %"_ZSt10__invoke_rIN17cmInstrumentation13CommandResultERZNS0_23CollectTimingAfterBuildEiE3$_1JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES5_E4typeEOS6_DpOS7_.exit"

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #33, !noalias !1285
  unreachable

"_ZSt10__invoke_rIN17cmInstrumentation13CommandResultERZNS0_23CollectTimingAfterBuildEiE3$_1JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES5_E4typeEOS6_DpOS7_.exit": ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !166, !noalias !1285
  %i.e = tail call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %.val), !noalias !1285, !inline_history !1281
  store i32 %i.e, ptr %0, align 8, !tbaa !157, !alias.scope !1285
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.f, align 8, !tbaa !95, !alias.scope !1285
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.g, align 8, !tbaa !95, !alias.scope !1285
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFN17cmInstrumentation13CommandResultEvEZNS0_23CollectTimingAfterBuildEiE3$_1E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN17cmInstrumentation23CollectTimingAfterBuildEiE3$_1", ptr %0, align 8, !tbaa !186
  br label %"_ZNSt14_Function_base13_Base_managerIZN17cmInstrumentation23CollectTimingAfterBuildEiE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !167
  store ptr %.val, ptr %0, align 8, !tbaa !167
  br label %"_ZNSt14_Function_base13_Base_managerIZN17cmInstrumentation23CollectTimingAfterBuildEiE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8              ; 2 uses
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN17cmInstrumentation23CollectTimingAfterBuildEiE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit" [
    i32 3, label %bb.k
    i32 2, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val6, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !149  ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %"_ZNSt14_Function_base13_Base_managerIZN17cmInstrumentation23CollectTimingAfterBuildEiE3$_1E15_M_init_functorIRKS2_EEvRSt9_Any_dataOT_.exit.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = invoke noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %.val6, i32 noundef 2)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.f = load <2 x ptr>, ptr %i.c, align 8, !tbaa !167
  store <2 x ptr> %i.f, ptr %i.b, align 8, !tbaa !167
  br label %"_ZNSt14_Function_base13_Base_managerIZN17cmInstrumentation23CollectTimingAfterBuildEiE3$_1E15_M_init_functorIRKS2_EEvRSt9_Any_dataOT_.exit.i"

bb.h:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !149  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i, label %.body.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef 3)
          to label %.body.i.i.i unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #30
  unreachable

.body.i.i.i:                                      ; preds = %bb.i, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #29
  resume { ptr, i32 } %i.g

"_ZNSt14_Function_base13_Base_managerIZN17cmInstrumentation23CollectTimingAfterBuildEiE3$_1E15_M_init_functorIRKS2_EEvRSt9_Any_dataOT_.exit.i": ; preds = %bb.g, %bb.e
  store ptr %i.a, ptr %0, align 8, !tbaa !167
  br label %"_ZNSt14_Function_base13_Base_managerIZN17cmInstrumentation23CollectTimingAfterBuildEiE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

bb.k:                                             ; preds = %bb.d
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !167 ; 5 uses
  %i.l = icmp eq ptr %.val7.i, null
  br i1 %i.l, label %"_ZNSt14_Function_base13_Base_managerIZN17cmInstrumentation23CollectTimingAfterBuildEiE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.m = getelementptr inbounds nuw i8, ptr %.val7.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !149  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %"_ZZN17cmInstrumentation23CollectTimingAfterBuildEiEN3$_1D2Ev.exit.i.i", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %.val7.i, ptr noundef nonnull align 8 dereferenceable(32) %.val7.i, i32 noundef 3)
          to label %"_ZZN17cmInstrumentation23CollectTimingAfterBuildEiEN3$_1D2Ev.exit.i.i" unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #30
  unreachable

"_ZZN17cmInstrumentation23CollectTimingAfterBuildEiEN3$_1D2Ev.exit.i.i": ; preds = %bb.m, %bb.l
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 32) #29
  br label %"_ZNSt14_Function_base13_Base_managerIZN17cmInstrumentation23CollectTimingAfterBuildEiE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN17cmInstrumentation23CollectTimingAfterBuildEiE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit": ; preds = %"_ZZN17cmInstrumentation23CollectTimingAfterBuildEiEN3$_1D2Ev.exit.i.i", %bb.k, %"_ZNSt14_Function_base13_Base_managerIZN17cmInstrumentation23CollectTimingAfterBuildEiE3$_1E15_M_init_functorIRKS2_EEvRSt9_Any_dataOT_.exit.i", %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKS7_E3$_1EEEvT_SO_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 5                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKS7_E3$_1EEEvT_SO_SO_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph83

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKS7_E3$_1EEET_SO_SO_T0_.exit"
  %i.h = icmp eq i64 %i.cx, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph83, !llvm.loop !1286

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa79 = phi i64 [ %i.d, %.lr.ph ], [ %i.dl, %bb.b ] ; 2 uses
  %.lcssa77 = phi i64 [ %i.c, %.lr.ph ], [ %i.dk, %bb.b ]
  %storemerge34.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.i = add nsw i64 %.lcssa79, -2
  %i.j = lshr i64 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i, %._crit_edge
  %.010.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.o = getelementptr inbounds [32 x i8], ptr %0, i64 %.010.i.i.i ; 6 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !28   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 7 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !30   ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1                  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.v, i1 false)
  store ptr %i.q, ptr %i.o, align 8, !tbaa !28
  store i64 0, ptr %i.s, align 8, !tbaa !30
  store i8 0, ptr %i.q, align 8, !tbaa !29
  store ptr %i.m, ptr %6, align 8, !tbaa !24
  br label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %bb.c
  %i.w = load i64, ptr %i.q, align 8, !tbaa !29   ; 2 uses
  store i64 %i.w, ptr %i.k, align 8, !tbaa !29
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !30 ; 3 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !28
  store i64 0, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !30
  store i8 0, ptr %i.q, align 8, !tbaa !29
  store ptr %i.m, ptr %6, align 8, !tbaa !24
  %i.x = icmp eq ptr %i.p, %i.k
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %.pre.i.i = add nuw nsw i64 %.pre.i.i.i, 1
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i ]
  %i.y = phi i64 [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i ] ; 2 uses
  %i.z = icmp ult i64 %i.y, 16
  call void @llvm.assume(i1 %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %.pre-phi.i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  store ptr %i.p, ptr %6, align 8, !tbaa !28
  store i64 %i.w, ptr %i.m, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11.i.i.i, %bb.d
  %i.aa = phi i64 [ %i.y, %bb.d ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11.i.i.i ]
  store i64 %i.aa, ptr %i.n, align 8, !tbaa !30
  store ptr %i.k, ptr %5, align 8, !tbaa !28
  store i64 0, ptr %i.l, align 8, !tbaa !30
  store i8 0, ptr %i.k, align 8, !tbaa !29
  invoke fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKS7_E3$_1EEEvT_T0_SP_T1_T2_"(ptr nonnull %0, i64 noundef %.010.i.i.i, i64 noundef %.lcssa79, ptr noundef align 8 %6)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i
  %i.ab = load ptr, ptr %6, align 8, !tbaa !28    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.m
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.e
  %i.ad = load i64, ptr %i.m, align 8, !tbaa !29
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.af = add nsw i64 %.010.i.i.i, -1
  %i.ag = load ptr, ptr %5, align 8, !tbaa !28    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.k
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.ai = load i64, ptr %i.k, align 8, !tbaa !29
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKS7_E3$_1EEEvT_SO_RT0_.exit.i.i", label %bb.c, !llvm.loop !1287

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = load ptr, ptr %6, align 8, !tbaa !28    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.m
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i.i.i: ; preds = %bb.f
  %i.an = load i64, ptr %i.m, align 8, !tbaa !29
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i.i.i
  %i.ap = load ptr, ptr %5, align 8, !tbaa !28    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.k
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i
  %i.ar = load i64, ptr %i.k, align 8, !tbaa !29
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i ], [ %i.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %common.resume

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKS7_E3$_1EEEvT_SO_RT0_.exit.i.i": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %7 = icmp sgt i64 %.lcssa77, 32
  br i1 %7, label %.lr.ph.i9.i.preheader, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKS7_E3$_1EEEvT_SO_SO_T0_.exit"

.lr.ph.i9.i.preheader:                            ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKS7_E3$_1EEEvT_SO_RT0_.exit.i.i"
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i.preheader, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKS7_E3$_1EEEvT_SO_SO_RT0_.exit"
  %.sroa.0.03.i.i = phi ptr [ %i.az, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKS7_E3$_1EEEvT_SO_SO_RT0_.exit" ], [ %storemerge34.lcssa, %.lr.ph.i9.i.preheader ] ; 5 uses
  %i.az = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -32 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %i.at, ptr %3, align 8, !tbaa !24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !28 ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -16 ; 9 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %.lr.ph.i9.i
  %i.bd = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !30 ; 3 uses
  %i.bf = icmp ult i64 %i.be, 16
  call void @llvm.assume(i1 %i.bf)
  %i.bg = add nuw nsw i64 %i.be, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.bb, i64 %i.bg, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.lr.ph.i9.i
  store ptr %i.ba, ptr %3, align 8, !tbaa !28
  %i.bh = load i64, ptr %i.bb, align 8, !tbaa !29
  store i64 %i.bh, ptr %i.at, align 8, !tbaa !29
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %i.bi = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.be, %bb.g ]
  %i.bj = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24 ; 3 uses
  store i64 %i.bi, ptr %i.au, align 8, !tbaa !30
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !28
  store i64 0, ptr %i.bj, align 8, !tbaa !30
  store i8 0, ptr %i.bb, align 8, !tbaa !29
  %i.bk = load ptr, ptr %0, align 8, !tbaa !28    ; 5 uses
  %i.bl = icmp eq ptr %i.bk, %i.av
  br i1 %i.bl, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i
  %i.bm = load i64, ptr %i.aw, align 8, !tbaa !30 ; 3 uses
  %i.bn = icmp ult i64 %i.bm, 16
  call void @llvm.assume(i1 %i.bn)
  %.not21.i.i = icmp eq ptr %0, %i.az
  br i1 %.not21.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, label %bb.i, !prof !118

bb.i:                                             ; preds = %bb.h
  switch i64 %i.bm, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.bo = load i8, ptr %i.bk, align 1, !tbaa !29
  store i8 %i.bo, ptr %i.bb, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr align 1 %i.bk, i64 %i.bm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.bp = load i64, ptr %i.aw, align 8, !tbaa !30 ; 2 uses
  store i64 %i.bp, ptr %i.bj, align 8, !tbaa !30
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bp
  store i8 0, ptr %i.bq, align 1, !tbaa !29
  %.pre.i.i16 = load ptr, ptr %0, align 8, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i
  store ptr %i.bk, ptr %i.az, align 8, !tbaa !28
  %i.br = load i64, ptr %i.aw, align 8, !tbaa !30
  store i64 %i.br, ptr %i.bj, align 8, !tbaa !30
  %i.bs = load i64, ptr %i.av, align 8, !tbaa !29
  store i64 %i.bs, ptr %i.bb, align 8, !tbaa !29
  store ptr %i.av, ptr %0, align 8, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.h
  %i.bt = phi ptr [ %.pre.i.i16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.bk, %bb.h ], [ %i.av, %bb.l ]
  store i64 0, ptr %i.aw, align 8, !tbaa !30
  store i8 0, ptr %i.bt, align 1, !tbaa !29
  %i.bu = ptrtoint ptr %i.az to i64
  %i.bv = sub i64 %i.bu, %i.a                     ; 2 uses
  %i.bw = ashr exact i64 %i.bv, 5
  store ptr %i.ax, ptr %4, align 8, !tbaa !24
  %i.bx = load ptr, ptr %3, align 8, !tbaa !28    ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.at
  br i1 %i.by, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.bz = load i64, ptr %i.au, align 8, !tbaa !30 ; 3 uses
  %i.ca = icmp ult i64 %i.bz, 16
  call void @llvm.assume(i1 %i.ca)
  %i.cb = add nuw nsw i64 %i.bz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.cb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  store ptr %i.bx, ptr %4, align 8, !tbaa !28
  %i.cc = load i64, ptr %i.at, align 8, !tbaa !29
  store i64 %i.cc, ptr %i.ax, align 8, !tbaa !29
  %.pre5.i = load i64, ptr %i.au, align 8, !tbaa !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i, %bb.m
  %i.cd = phi i64 [ %i.bz, %bb.m ], [ %.pre5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i ]
  store i64 %i.cd, ptr %i.ay, align 8, !tbaa !30
  store ptr %i.at, ptr %3, align 8, !tbaa !28
  store i64 0, ptr %i.au, align 8, !tbaa !30
  store i8 0, ptr %i.at, align 8, !tbaa !29
  invoke fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKS7_E3$_1EEEvT_T0_SP_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.bw, ptr noundef align 8 %4)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i
  %i.ce = load ptr, ptr %4, align 8, !tbaa !28    ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.ax
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.n
  %i.cg = load i64, ptr %i.ax, align 8, !tbaa !29
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ci = load ptr, ptr %3, align 8, !tbaa !28    ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.at
  br i1 %i.cj, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKS7_E3$_1EEEvT_SO_SO_RT0_.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ck = load i64, ptr %i.at, align 8, !tbaa !29
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #29
  br label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKS7_E3$_1EEEvT_SO_SO_RT0_.exit"

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i
  %i.cm = landingpad { ptr, i32 }
          cleanup
  %i.cn = load ptr, ptr %4, align 8, !tbaa !28    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.ax
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i: ; preds = %bb.o
  %i.cp = load i64, ptr %i.ax, align 8, !tbaa !29
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i
  %i.cr = load ptr, ptr %3, align 8, !tbaa !28    ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.at
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i
  %i.ct = load i64, ptr %i.at, align 8, !tbaa !29
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKS7_E3$_1EEEvT_SO_SO_RT0_.exit": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.cv = icmp sgt i64 %i.bv, 32
  br i1 %i.cv, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKS7_E3$_1EEEvT_SO_SO_T0_.exit", !llvm.loop !1288

.lr.ph83:                                         ; preds = %.lr.ph, %bb.b
  %storemerge3482 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.03581 = phi i64 [ %i.cx, %bb.b ], [ %2, %.lr.ph ]
  %i.cw = phi i64 [ %i.dl, %bb.b ], [ %i.d, %.lr.ph ]
  %i.cx = add nsw i64 %.03581, -1                 ; 3 uses
  %i.cy = lshr i64 %i.cw, 1
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.cy ; 4 uses
  %i.da = getelementptr inbounds i8, ptr %storemerge3482, i64 -32 ; 4 uses
  %i.db = tail call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1EclINS_17__normal_iteratorIPSC_St6vectorISC_SaISC_EEEESN_EEbT_T0_"(ptr nonnull %i.f, ptr %i.cz)
  br i1 %i.db, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph83
  %i.dc = tail call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1EclINS_17__normal_iteratorIPSC_St6vectorISC_SaISC_EEEESN_EEbT_T0_"(ptr %i.cz, ptr nonnull %i.da)
  br i1 %i.dc, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKS7_E3$_1EEEvT_SO_SO_SO_T0_.exit.i", label %.sink.split.i.i

bb.q:                                             ; preds = %.lr.ph83
  %i.dd = tail call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1EclINS_17__normal_iteratorIPSC_St6vectorISC_SaISC_EEEESN_EEbT_T0_"(ptr nonnull %i.f, ptr nonnull %i.da)
  br i1 %i.dd, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKS7_E3$_1EEEvT_SO_SO_SO_T0_.exit.i", label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.q, %bb.p
  %.sink29.i.i = phi ptr [ %i.f, %bb.p ], [ %i.cz, %bb.q ] ; 2 uses
  %i.de = tail call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1EclINS_17__normal_iteratorIPSC_St6vectorISC_SaISC_EEEESN_EEbT_T0_"(ptr %.sink29.i.i, ptr nonnull %i.da)
  %.26.i.i = select i1 %i.de, ptr %i.da, ptr %.sink29.i.i
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKS7_E3$_1EEEvT_SO_SO_SO_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKS7_E3$_1EEEvT_SO_SO_SO_T0_.exit.i": ; preds = %.sink.split.i.i, %bb.q, %bb.p
  %.sink.i.i = phi ptr [ %i.cz, %bb.p ], [ %i.f, %bb.q ], [ %.26.i.i, %.sink.split.i.i ]
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sink.i.i) #28
  br label %bb.r

bb.r:                                             ; preds = %bb.u, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKS7_E3$_1EEEvT_SO_SO_SO_T0_.exit.i"
  %.sroa.010.0.i.i = phi ptr [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKS7_E3$_1EEEvT_SO_SO_SO_T0_.exit.i" ], [ %i.dg, %bb.u ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge3482, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKS7_E3$_1EEEvT_SO_SO_SO_T0_.exit.i" ], [ %.sroa.0.1.i.i, %bb.u ]
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %bb.r ], [ %i.dg, %bb.s ] ; 8 uses
  %i.df = tail call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1EclINS_17__normal_iteratorIPSC_St6vectorISC_SaISC_EEEESN_EEbT_T0_"(ptr nonnull %.sroa.010.1.i.i, ptr nonnull readonly %0)
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 32 ; 2 uses
  br i1 %i.df, label %bb.s, label %.preheader.i.i, !llvm.loop !1289

.preheader.i.i:                                   ; preds = %bb.s, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.s ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32 ; 5 uses
  %i.dh = tail call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1EclINS_17__normal_iteratorIPSC_St6vectorISC_SaISC_EEEESN_EEbT_T0_"(ptr nonnull readonly %0, ptr nonnull %.sroa.0.1.i.i)
  br i1 %i.dh, label %.preheader.i.i, label %bb.t, !llvm.loop !1290

bb.t:                                             ; preds = %.preheader.i.i
  %i.di = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.di, label %bb.u, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKS7_E3$_1EEET_SO_SO_T0_.exit"

bb.u:                                             ; preds = %bb.t
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.010.1.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.1.i.i) #28
  br label %bb.r, !llvm.loop !1291

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKS7_E3$_1EEET_SO_SO_T0_.exit": ; preds = %bb.t
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKS7_E3$_1EEEvT_SO_T0_T1_"(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge3482, i64 noundef %i.cx)
  %i.dj = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.dk = sub i64 %i.dj, %i.a                     ; 2 uses
  %i.dl = ashr exact i64 %i.dk, 5                 ; 3 uses
  %i.dm = icmp sgt i64 %i.dl, 16
  br i1 %i.dm, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKS7_E3$_1EEEvT_SO_SO_T0_.exit", !llvm.loop !1286

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKS7_E3$_1EEEvT_SO_SO_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKS7_E3$_1EEET_SO_SO_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKS7_E3$_1EEEvT_SO_SO_RT0_.exit", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKS7_E3$_1EEEvT_SO_RT0_.exit.i.i"
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1EclINS_17__normal_iteratorIPSC_St6vectorISC_SaISC_EEEESN_EEbT_T0_"(ptr nofree readonly captures(none) %0, ptr nofree readonly captures(none) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !24
  %i.d = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !30   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 %i.f, ptr %i.b, align 8, !tbaa !26
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !28
  %i.i = load i64, ptr %i.b, align 8, !tbaa !26
  store i64 %i.i, ptr %i.c, align 8, !tbaa !29
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !29
  store i8 %i.k, ptr %i.j, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.l, ptr %i.m, align 8, !tbaa !30
  %i.n = load ptr, ptr %2, align 8, !tbaa !28
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.p, ptr %3, align 8, !tbaa !24
  %i.q = load ptr, ptr %1, align 8, !tbaa !28     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !30   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.s, ptr %i.a, align 8, !tbaa !26
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %.noexc.i6, label %._crit_edge.i.i5

.noexc.i6:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %.noexc.i6
  store ptr %i.u, ptr %3, align 8, !tbaa !28
  %i.v = load i64, ptr %i.a, align 8, !tbaa !26
  store i64 %i.v, ptr %i.p, align 8, !tbaa !29
  br label %._crit_edge.i.i5

._crit_edge.i.i5:                                 ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.w = phi ptr [ %i.u, %.noexc ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.s, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i5
  %i.x = load i8, ptr %i.q, align 1, !tbaa !29
  store i8 %i.x, ptr %i.w, align 1, !tbaa !29
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.q, i64 %i.s, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i5
  %i.y = load i64, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !30
  %i.aa = load ptr, ptr %3, align 8, !tbaa !28
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %.val = load ptr, ptr %2, align 8, !tbaa !28
  %.val4 = load i64, ptr %i.m, align 8, !tbaa !30
  %i.ac = invoke fastcc noundef zeroext i1 @"_ZZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_1clES9_S9_"(ptr %.val, i64 %.val4, ptr noundef align 8 %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %3, align 8, !tbaa !28    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.p
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.af = load i64, ptr %i.p, align 8, !tbaa !29
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ah = load ptr, ptr %2, align 8, !tbaa !28    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.c
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aj = load i64, ptr %i.c, align 8, !tbaa !29
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  ret i1 %i.ac

bb.h:                                             ; preds = %.noexc.i6
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

bb.i:                                             ; preds = %bb.f
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %3, align 8, !tbaa !28    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.p
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.i
  %i.ap = load i64, ptr %i.p, align 8, !tbaa !29
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11, %bb.h
  %.pn = phi { ptr, i32 } [ %i.al, %bb.h ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11 ], [ %i.am, %bb.i ]
  %i.ar = load ptr, ptr %2, align 8, !tbaa !28    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.c
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
  %i.at = load i64, ptr %i.c, align 8, !tbaa !29
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKS7_E3$_1EEEvT_T0_SP_T1_T2_"(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = add nsw i64 %2, -1
  %i.d = sdiv i64 %i.c, 2                         ; 2 uses
  %i.e = icmp slt i64 %1, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %.051 = phi i64 [ %spec.select, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit ], [ %1, %bb.a ] ; 3 uses
  %i.f = shl i64 %.051, 1                         ; 2 uses
  %i.g = add i64 %i.f, 2                          ; 2 uses
  %i.h = getelementptr inbounds [32 x i8], ptr %0, i64 %i.g
  %i.i = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.j = getelementptr inbounds [32 x i8], ptr %0, i64 %i.i
  %i.k = tail call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN17cmInstrumentation14WriteTraceFileERKN4Json5ValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_1EclINS_17__normal_iteratorIPSC_St6vectorISC_SaISC_EEEESN_EEbT_T0_"(ptr %i.h, ptr nonnull %i.j)
  %spec.select = select i1 %i.k, i64 %i.i, i64 %i.g ; 5 uses
  %i.l = getelementptr inbounds [32 x i8], ptr %0, i64 %spec.select ; 9 uses
  %i.m = getelementptr inbounds [32 x i8], ptr %0, i64 %.051 ; 8 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !28   ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !28   ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 4 uses
  %i.s = icmp eq ptr %i.q, %i.r                   ; 2 uses
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %.lr.ph
  br i1 %i.s, label %bb.b, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %.lr.ph
  br i1 %i.s, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !30   ; 3 uses
end_hunk_0
