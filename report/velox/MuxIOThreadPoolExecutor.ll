inline.NumInlined: 3362
inline.NumDeleted: 1743
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN5folly9EventBase7OptionsC2ERKS1_:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = load <2 x ptr>, ptr %i.d, align 8, !tbaa !58
  store <2 x ptr> %i.h, ptr %i.c, align 8, !tbaa !58
  br label %_ZNSt8functionIFSt10unique_ptrIN5folly20EventBaseBackendBaseESt14default_deleteIS2_EEvEEC2ERKS7_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !12850 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #40
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.i

_ZNSt8functionIFSt10unique_ptrIN5folly20EventBaseBackendBaseESt14default_deleteIS2_EEvEEC2ERKS7_.exit: ; preds = %bb.a, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false)
  ret void
}

declare void @_ZN5folly9EventBaseC1ENS0_7OptionsE(ptr noundef nonnull align 16 dereferenceable(632), ptr noundef) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly9EventBase7OptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12850 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #40
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #36

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(56) ptr @_ZN5folly9EventBase7Options17setBackendFactoryESt8functionIFSt10unique_ptrINS_20EventBaseBackendBaseESt14default_deleteIS4_EEvEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.375", align 16 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load <2 x ptr>, ptr %i.b, align 8, !tbaa !58
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !12850
  %.not.i.i.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFSt10unique_ptrIN5folly20EventBaseBackendBaseESt14default_deleteIS2_EEvEEC2EOS7_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false), !tbaa.struct !14424
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFSt10unique_ptrIN5folly20EventBaseBackendBaseESt14default_deleteIS2_EEvEEC2EOS7_.exit.i

_ZNSt8functionIFSt10unique_ptrIN5folly20EventBaseBackendBaseESt14default_deleteIS2_EEvEEC2EOS7_.exit.i: ; preds = %bb.b, %bb.a
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 16, i1 false), !tbaa.struct !14424
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.a, align 8, !tbaa !55
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !58
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !58   ; 2 uses
  store <2 x ptr> %i.g, ptr %i.e, align 16, !tbaa !58
  store <2 x ptr> %i.c, ptr %i.f, align 8, !tbaa !58
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt8functionIFSt10unique_ptrIN5folly20EventBaseBackendBaseESt14default_deleteIS2_EEvEEaSEOS7_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt8functionIFSt10unique_ptrIN5folly20EventBaseBackendBaseESt14default_deleteIS2_EEvEEC2EOS7_.exit.i
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt8functionIFSt10unique_ptrIN5folly20EventBaseBackendBaseESt14default_deleteIS2_EEvEEaSEOS7_.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #40
  unreachable

_ZNSt8functionIFSt10unique_ptrIN5folly20EventBaseBackendBaseESt14default_deleteIS2_EEvEEaSEOS7_.exit: ; preds = %_ZNSt8functionIFSt10unique_ptrIN5folly20EventBaseBackendBaseESt14default_deleteIS2_EEvEEC2EOS7_.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret ptr %0
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #36

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #36

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #36

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFSt10unique_ptrIN5folly20EventBaseBackendBaseESt14default_deleteIS2_EEvEZNS1_23MuxIOThreadPoolExecutor8EvbState10evbOptionsEvEUlvE_E9_M_invokeERKSt9_Any_data(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.138") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14425)
  %i.a = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #41, !noalias !14428 ; 3 uses
  invoke void @_ZN5folly12EpollBackendC1ENS0_7OptionsE(ptr noundef nonnull align 8 dereferenceable(160) %i.a, i64 128)
          to label %_ZSt10__invoke_rISt10unique_ptrIN5folly20EventBaseBackendBaseESt14default_deleteIS2_EERZNS1_23MuxIOThreadPoolExecutor8EvbState10evbOptionsEvEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit unwind label %bb.b, !noalias !14428

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 160) #42, !noalias !14428
  resume { ptr, i32 } %i.b

_ZSt10__invoke_rISt10unique_ptrIN5folly20EventBaseBackendBaseESt14default_deleteIS2_EERZNS1_23MuxIOThreadPoolExecutor8EvbState10evbOptionsEvEUlvE_JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !14435, !alias.scope !14425
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFSt10unique_ptrIN5folly20EventBaseBackendBaseESt14default_deleteIS2_EEvEZNS1_23MuxIOThreadPoolExecutor8EvbState10evbOptionsEvEUlvE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN5folly23MuxIOThreadPoolExecutor8EvbState10evbOptionsEvEUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIZN5folly23MuxIOThreadPoolExecutor8EvbState10evbOptionsEvEUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN5folly23MuxIOThreadPoolExecutor8EvbState10evbOptionsEvEUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN5folly23MuxIOThreadPoolExecutor8EvbState10evbOptionsEvEUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @_ZTIZN5folly23MuxIOThreadPoolExecutor8EvbState10evbOptionsEvEUlvE_, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !58
  br label %_ZNSt14_Function_base13_Base_managerIZN5folly23MuxIOThreadPoolExecutor8EvbState10evbOptionsEvEUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN5folly23MuxIOThreadPoolExecutor8EvbState10evbOptionsEvEUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN5folly23MuxIOThreadPoolExecutor8EvbState10evbOptionsEvEUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

declare void @_ZN5folly12EpollBackendC1ENS0_7OptionsE(ptr noundef nonnull align 8 dereferenceable(160), i64) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN5folly9EventBaseD1Ev(ptr noundef nonnull align 16 dereferenceable(632)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN5folly6detail8function5call_IZNS_23MuxIOThreadPoolExecutorC1EmNS3_7OptionsESt10shared_ptrINS_13ThreadFactoryEEPNS_16EventBaseManagerEE3$_1Lb1ELb0EvJEEET2_DpT3_RNS1_4DataE"(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(48) %0) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %0, align 16, !tbaa !14437 ; 2 uses
  %i.a = atomicrmw sub ptr %.val, i32 1 acq_rel, align 4 ; 2 uses
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN5folly5Latch12terminate_ifEb.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail15terminate_with_ISt16invalid_argumentJPKcEEEvDpT0_(ptr noundef nonnull @.str.88) #44
  unreachable

_ZN5folly5Latch12terminate_ifEb.exit.i.i:         ; preds = %bb.a
  %i.c = icmp eq i32 %i.a, 1
  br i1 %i.c, label %bb.c, label %"_ZZN5folly23MuxIOThreadPoolExecutorC1EmNS0_7OptionsESt10shared_ptrINS_13ThreadFactoryEEPNS_16EventBaseManagerEENK3$_1clEv.exit", !prof !12586

bb.c:                                             ; preds = %_ZN5folly5Latch12terminate_ifEb.exit.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 4 ; 2 uses
  %i.e = cmpxchg ptr %i.d, i32 0, i32 1 release monotonic, align 4 ; 2 uses
  %i.f = extractvalue { i32, i1 } %i.e, 1
  br i1 %i.f, label %"_ZZN5folly23MuxIOThreadPoolExecutorC1EmNS0_7OptionsESt10shared_ptrINS_13ThreadFactoryEEPNS_16EventBaseManagerEENK3$_1clEv.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = extractvalue { i32, i1 } %i.e, 0
  tail call void @_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE22postSlowWaiterMayBlockEj(ptr noundef nonnull align 4 dereferenceable(4) %i.d, i32 noundef %i.g) #31
  br label %"_ZZN5folly23MuxIOThreadPoolExecutorC1EmNS0_7OptionsESt10shared_ptrINS_13ThreadFactoryEEPNS_16EventBaseManagerEENK3$_1clEv.exit"

"_ZZN5folly23MuxIOThreadPoolExecutorC1EmNS0_7OptionsESt10shared_ptrINS_13ThreadFactoryEEPNS_16EventBaseManagerEENK3$_1clEv.exit": ; preds = %_ZN5folly5Latch12terminate_ifEb.exit.i.i, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5folly17ExecutorKeepAliveINS0_9EventBaseEEESaIS3_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12832 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !12632  ; 12 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5folly17ExecutorKeepAliveINS0_9EventBaseEEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.89) #43
  unreachable

_ZNKSt6vectorIN5folly17ExecutorKeepAliveINS0_9EventBaseEEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #41 ; 12 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load ptr, ptr %2, align 8, !tbaa !14051  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %bb.c, label %_ZN5folly8Executor17getKeepAliveTokenINS_9EventBaseEEENS_17ExecutorKeepAliveIT_EEPS4_.exit.i.i

_ZN5folly8Executor17getKeepAliveTokenINS_9EventBaseEEENS_17ExecutorKeepAliveIT_EEPS4_.exit.i.i: ; preds = %_ZNKSt6vectorIN5folly17ExecutorKeepAliveINS0_9EventBaseEEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.s = load ptr, ptr %i.r, align 16, !tbaa !29, !noalias !14439
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8, !noalias !14439
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 %i.u ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !29, !noalias !14439
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !noalias !14439
  %i.z = tail call noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v) #31, !noalias !14439, !call_target !12837, !inline_history !14442
  %i.aa = ptrtoint ptr %i.r to i64
  %not..i.i.i = xor i1 %i.z, true
  %i.ab = zext i1 %not..i.i.i to i64
  %spec.select.i.i.i = or i64 %i.ab, %i.aa
  br label %bb.c

bb.c:                                             ; preds = %_ZN5folly8Executor17getKeepAliveTokenINS_9EventBaseEEENS_17ExecutorKeepAliveIT_EEPS4_.exit.i.i, %_ZNKSt6vectorIN5folly17ExecutorKeepAliveINS0_9EventBaseEEESaIS3_EE12_M_check_lenEmPKc.exit
  %.sink.i6.i.i = phi i64 [ %spec.select.i.i.i, %_ZN5folly8Executor17getKeepAliveTokenINS_9EventBaseEEENS_17ExecutorKeepAliveIT_EEPS4_.exit.i.i ], [ 0, %_ZNKSt6vectorIN5folly17ExecutorKeepAliveINS0_9EventBaseEEESaIS3_EE12_M_check_lenEmPKc.exit ]
  store i64 %.sink.i6.i.i, ptr %i.q, align 8, !tbaa !12635
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5folly17ExecutorKeepAliveINS0_9EventBaseEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %iter.check

iter.check:                                       ; preds = %bb.c
  %i.ac = add i64 %i.m, -8
  %i.ad = sub i64 %i.ac, %i.e                     ; 3 uses
  %i.ae = lshr i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ad, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ag = add i64 %i.m, -8
  %i.ah = sub i64 %i.ag, %i.e
  %i.ai = and i64 %i.ah, -8
  %i.aj = add i64 %i.ai, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.c, i64 %i.aj
  %scevgep49 = getelementptr i8, ptr %i.p, i64 %i.aj
  %bound0 = icmp ult ptr %i.c, %scevgep49
  %bound1 = icmp ult ptr %i.p, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check50 = icmp ult i64 %i.ad, 120
  br i1 %min.iters.check50, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.af, 12
  %n.vec = and i64 %i.af, 4611686018427387888     ; 4 uses
  %i.ak = shl i64 %n.vec, 3                       ; 2 uses
  %i.al = getelementptr i8, ptr %i.p, i64 %i.ak   ; 2 uses
  %i.am = getelementptr i8, ptr %i.c, i64 %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.an ; 4 uses
  %next.gep51 = getelementptr i8, ptr %i.c, i64 %i.an ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14446)
  %i.ao = getelementptr i8, ptr %next.gep51, i64 32 ; 2 uses
  %i.ap = getelementptr i8, ptr %next.gep51, i64 64 ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep51, i64 96 ; 2 uses
  %wide.load = load <4 x i64>, ptr %next.gep51, align 8, !tbaa !12579, !alias.scope !14448, !noalias !14451
  %wide.load52 = load <4 x i64>, ptr %i.ao, align 8, !tbaa !12579, !alias.scope !14448, !noalias !14451
  %wide.load53 = load <4 x i64>, ptr %i.ap, align 8, !tbaa !12579, !alias.scope !14448, !noalias !14451
  %wide.load54 = load <4 x i64>, ptr %i.aq, align 8, !tbaa !12579, !alias.scope !14448, !noalias !14451
  store <4 x i64> zeroinitializer, ptr %next.gep51, align 8, !tbaa !12579, !alias.scope !14448, !noalias !14451
  store <4 x i64> zeroinitializer, ptr %i.ao, align 8, !tbaa !12579, !alias.scope !14448, !noalias !14451
  store <4 x i64> zeroinitializer, ptr %i.ap, align 8, !tbaa !12579, !alias.scope !14448, !noalias !14451
  store <4 x i64> zeroinitializer, ptr %i.aq, align 8, !tbaa !12579, !alias.scope !14448, !noalias !14451
  %i.ar = getelementptr i8, ptr %next.gep, i64 32
  %i.as = getelementptr i8, ptr %next.gep, i64 64
  %i.at = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !12635, !alias.scope !14451, !noalias !14446
  store <4 x i64> %wide.load52, ptr %i.ar, align 8, !tbaa !12635, !alias.scope !14451, !noalias !14446
  store <4 x i64> %wide.load53, ptr %i.as, align 8, !tbaa !12635, !alias.scope !14451, !noalias !14446
  store <4 x i64> %wide.load54, ptr %i.at, align 8, !tbaa !12635, !alias.scope !14451, !noalias !14446
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !14453

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN5folly17ExecutorKeepAliveINS0_9EventBaseEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !14029

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec57 = and i64 %i.af, 4611686018427387900   ; 3 uses
  %i.av = shl i64 %n.vec57, 3                     ; 2 uses
  %i.aw = getelementptr i8, ptr %i.p, i64 %i.av   ; 2 uses
  %i.ax = getelementptr i8, ptr %i.c, i64 %i.av
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index58 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next62, %vec.epilog.vector.body ] ; 2 uses
  %i.ay = shl i64 %index58, 3                     ; 2 uses
  %next.gep59 = getelementptr i8, ptr %i.p, i64 %i.ay
  %next.gep60 = getelementptr i8, ptr %i.c, i64 %i.ay ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14446)
  %wide.load61 = load <4 x i64>, ptr %next.gep60, align 8, !tbaa !12579, !alias.scope !14448, !noalias !14451
  store <4 x i64> zeroinitializer, ptr %next.gep60, align 8, !tbaa !12579, !alias.scope !14448, !noalias !14451
  store <4 x i64> %wide.load61, ptr %next.gep59, align 8, !tbaa !12635, !alias.scope !14451, !noalias !14446
  %index.next62 = add nuw i64 %index58, 4         ; 2 uses
  %i.az = icmp eq i64 %index.next62, %n.vec57
  br i1 %i.az, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !14454

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n63 = icmp eq i64 %i.af, %n.vec57
  br i1 %cmp.n63, label %_ZNSt6vectorIN5folly17ExecutorKeepAliveINS0_9EventBaseEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %iter.check ], [ %i.p, %vector.memcheck ], [ %i.al, %vec.epilog.iter.check ], [ %i.aw, %vec.epilog.middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %iter.check ], [ %i.c, %vector.memcheck ], [ %i.am, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14446)
  %i.ba = load i64, ptr %.0911.i.i.i, align 8, !tbaa !12579, !alias.scope !14446, !noalias !14443
  store i64 0, ptr %.0911.i.i.i, align 8, !tbaa !12579, !alias.scope !14446, !noalias !14443
  store i64 %i.ba, ptr %.012.i.i.i, align 8, !tbaa !12635, !alias.scope !14443, !noalias !14446
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %i.bb, %1
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIN5folly17ExecutorKeepAliveINS0_9EventBaseEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !14455

_ZNSt6vectorIN5folly17ExecutorKeepAliveINS0_9EventBaseEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.c
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.aw, %vec.epilog.middle.block ], [ %i.al, %middle.block ], [ %i.bc, %.lr.ph.i.i.i ] ; 2 uses
  %i.bd = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 8 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorIN5folly17ExecutorKeepAliveINS0_9EventBaseEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33, label %iter.check91

iter.check91:                                     ; preds = %_ZNSt6vectorIN5folly17ExecutorKeepAliveINS0_9EventBaseEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.be = add i64 %i.d, -8
  %i.bf = sub i64 %i.be, %i.m                     ; 3 uses
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = add nuw nsw i64 %i.bg, 1                ; 5 uses
  %min.iters.check72 = icmp ult i64 %i.bf, 24
  br i1 %min.iters.check72, label %.lr.ph.i.i.i28.preheader, label %vector.memcheck66

vector.memcheck66:                                ; preds = %iter.check91
  %i.bi = add i64 %i.d, -8
  %i.bj = sub i64 %i.bi, %i.m
  %i.bk = and i64 %i.bj, -8                       ; 2 uses
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %scevgep67 = getelementptr i8, ptr %i.bl, i64 8
  %i.bm = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.bk
  %scevgep68 = getelementptr i8, ptr %i.bm, i64 16
  %bound069 = icmp ult ptr %1, %scevgep68
  %bound170 = icmp ult ptr %i.bd, %scevgep67
  %found.conflict71 = and i1 %bound069, %bound170
  br i1 %found.conflict71, label %.lr.ph.i.i.i28.preheader, label %vector.main.loop.iter.check73

vector.main.loop.iter.check73:                    ; preds = %vector.memcheck66
  %min.iters.check74 = icmp ult i64 %i.bf, 120
  br i1 %min.iters.check74, label %vec.epilog.ph95, label %vector.ph75

vector.ph75:                                      ; preds = %vector.main.loop.iter.check73
  %n.mod.vf76 = and i64 %i.bh, 12
  %n.vec77 = and i64 %i.bh, 4611686018427387888   ; 4 uses
  %i.bn = shl i64 %n.vec77, 3                     ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bd, i64 %i.bn  ; 2 uses
  %i.bp = getelementptr i8, ptr %1, i64 %i.bn
  br label %vector.body78

vector.body78:                                    ; preds = %vector.body78, %vector.ph75
  %index79 = phi i64 [ 0, %vector.ph75 ], [ %index.next86, %vector.body78 ] ; 2 uses
  %i.bq = shl i64 %index79, 3                     ; 2 uses
  %next.gep80 = getelementptr i8, ptr %i.bd, i64 %i.bq ; 4 uses
  %next.gep81 = getelementptr i8, ptr %1, i64 %i.bq ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14459)
  %i.br = getelementptr i8, ptr %next.gep81, i64 32 ; 2 uses
  %i.bs = getelementptr i8, ptr %next.gep81, i64 64 ; 2 uses
  %i.bt = getelementptr i8, ptr %next.gep81, i64 96 ; 2 uses
  %wide.load82 = load <4 x i64>, ptr %next.gep81, align 8, !tbaa !12579, !alias.scope !14461, !noalias !14464
  %wide.load83 = load <4 x i64>, ptr %i.br, align 8, !tbaa !12579, !alias.scope !14461, !noalias !14464
  %wide.load84 = load <4 x i64>, ptr %i.bs, align 8, !tbaa !12579, !alias.scope !14461, !noalias !14464
  %wide.load85 = load <4 x i64>, ptr %i.bt, align 8, !tbaa !12579, !alias.scope !14461, !noalias !14464
  store <4 x i64> zeroinitializer, ptr %next.gep81, align 8, !tbaa !12579, !alias.scope !14461, !noalias !14464
  store <4 x i64> zeroinitializer, ptr %i.br, align 8, !tbaa !12579, !alias.scope !14461, !noalias !14464
  store <4 x i64> zeroinitializer, ptr %i.bs, align 8, !tbaa !12579, !alias.scope !14461, !noalias !14464
  store <4 x i64> zeroinitializer, ptr %i.bt, align 8, !tbaa !12579, !alias.scope !14461, !noalias !14464
  %i.bu = getelementptr i8, ptr %next.gep80, i64 32
  %i.bv = getelementptr i8, ptr %next.gep80, i64 64
  %i.bw = getelementptr i8, ptr %next.gep80, i64 96
  store <4 x i64> %wide.load82, ptr %next.gep80, align 8, !tbaa !12635, !alias.scope !14464, !noalias !14459
  store <4 x i64> %wide.load83, ptr %i.bu, align 8, !tbaa !12635, !alias.scope !14464, !noalias !14459
  store <4 x i64> %wide.load84, ptr %i.bv, align 8, !tbaa !12635, !alias.scope !14464, !noalias !14459
  store <4 x i64> %wide.load85, ptr %i.bw, align 8, !tbaa !12635, !alias.scope !14464, !noalias !14459
  %index.next86 = add nuw i64 %index79, 16        ; 2 uses
  %i.bx = icmp eq i64 %index.next86, %n.vec77
  br i1 %i.bx, label %middle.block87, label %vector.body78, !llvm.loop !14466

middle.block87:                                   ; preds = %vector.body78
  %cmp.n88 = icmp eq i64 %i.bh, %n.vec77
  br i1 %cmp.n88, label %_ZNSt6vectorIN5folly17ExecutorKeepAliveINS0_9EventBaseEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33, label %vec.epilog.iter.check93

vec.epilog.iter.check93:                          ; preds = %middle.block87
  %min.epilog.iters.check94 = icmp eq i64 %n.mod.vf76, 0
  br i1 %min.epilog.iters.check94, label %.lr.ph.i.i.i28.preheader, label %vec.epilog.ph95, !prof !14029

vec.epilog.ph95:                                  ; preds = %vector.main.loop.iter.check73, %vec.epilog.iter.check93
  %vec.epilog.resume.val89 = phi i64 [ %n.vec77, %vec.epilog.iter.check93 ], [ 0, %vector.main.loop.iter.check73 ]
  %n.vec97 = and i64 %i.bh, 4611686018427387900   ; 3 uses
  %i.by = shl i64 %n.vec97, 3                     ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bd, i64 %i.by  ; 2 uses
  %i.ca = getelementptr i8, ptr %1, i64 %i.by
  br label %vec.epilog.vector.body98

vec.epilog.vector.body98:                         ; preds = %vec.epilog.vector.body98, %vec.epilog.ph95
  %index99 = phi i64 [ %vec.epilog.resume.val89, %vec.epilog.ph95 ], [ %index.next103, %vec.epilog.vector.body98 ] ; 2 uses
  %i.cb = shl i64 %index99, 3                     ; 2 uses
  %next.gep100 = getelementptr i8, ptr %i.bd, i64 %i.cb
  %next.gep101 = getelementptr i8, ptr %1, i64 %i.cb ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14459)
  %wide.load102 = load <4 x i64>, ptr %next.gep101, align 8, !tbaa !12579, !alias.scope !14461, !noalias !14464
  store <4 x i64> zeroinitializer, ptr %next.gep101, align 8, !tbaa !12579, !alias.scope !14461, !noalias !14464
  store <4 x i64> %wide.load102, ptr %next.gep100, align 8, !tbaa !12635, !alias.scope !14464, !noalias !14459
  %index.next103 = add nuw i64 %index99, 4        ; 2 uses
  %i.cc = icmp eq i64 %index.next103, %n.vec97
  br i1 %i.cc, label %vec.epilog.middle.block104, label %vec.epilog.vector.body98, !llvm.loop !14467

vec.epilog.middle.block104:                       ; preds = %vec.epilog.vector.body98
  %cmp.n105 = icmp eq i64 %i.bh, %n.vec97
  br i1 %cmp.n105, label %_ZNSt6vectorIN5folly17ExecutorKeepAliveINS0_9EventBaseEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33, label %.lr.ph.i.i.i28.preheader

.lr.ph.i.i.i28.preheader:                         ; preds = %vector.memcheck66, %iter.check91, %vec.epilog.iter.check93, %vec.epilog.middle.block104
  %.012.i.i.i29.ph = phi ptr [ %i.bd, %iter.check91 ], [ %i.bd, %vector.memcheck66 ], [ %i.bo, %vec.epilog.iter.check93 ], [ %i.bz, %vec.epilog.middle.block104 ]
  %.0911.i.i.i30.ph = phi ptr [ %1, %iter.check91 ], [ %1, %vector.memcheck66 ], [ %i.bp, %vec.epilog.iter.check93 ], [ %i.ca, %vec.epilog.middle.block104 ]
  br label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %.lr.ph.i.i.i28.preheader, %.lr.ph.i.i.i28
  %.012.i.i.i29 = phi ptr [ %i.cf, %.lr.ph.i.i.i28 ], [ %.012.i.i.i29.ph, %.lr.ph.i.i.i28.preheader ] ; 2 uses
  %.0911.i.i.i30 = phi ptr [ %i.ce, %.lr.ph.i.i.i28 ], [ %.0911.i.i.i30.ph, %.lr.ph.i.i.i28.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14459)
  %i.cd = load i64, ptr %.0911.i.i.i30, align 8, !tbaa !12579, !alias.scope !14459, !noalias !14456
  store i64 0, ptr %.0911.i.i.i30, align 8, !tbaa !12579, !alias.scope !14459, !noalias !14456
  store i64 %i.cd, ptr %.012.i.i.i29, align 8, !tbaa !12635, !alias.scope !14456, !noalias !14459
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 8 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.ce, %i.b
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIN5folly17ExecutorKeepAliveINS0_9EventBaseEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33, label %.lr.ph.i.i.i28, !llvm.loop !14468

_ZNSt6vectorIN5folly17ExecutorKeepAliveINS0_9EventBaseEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33: ; preds = %.lr.ph.i.i.i28, %middle.block87, %vec.epilog.middle.block104, %_ZNSt6vectorIN5folly17ExecutorKeepAliveINS0_9EventBaseEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i32 = phi ptr [ %i.bd, %_ZNSt6vectorIN5folly17ExecutorKeepAliveINS0_9EventBaseEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.bz, %vec.epilog.middle.block104 ], [ %i.bo, %middle.block87 ], [ %i.cf, %.lr.ph.i.i.i28 ]
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseIN5folly17ExecutorKeepAliveINS0_9EventBaseEEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN5folly17ExecutorKeepAliveINS0_9EventBaseEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !12833
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = sub i64 %i.ci, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cj) #42
  br label %_ZNSt12_Vector_baseIN5folly17ExecutorKeepAliveINS0_9EventBaseEEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN5folly17ExecutorKeepAliveINS0_9EventBaseEEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN5folly17ExecutorKeepAliveINS0_9EventBaseEEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33, %bb.d
  store ptr %i.p, ptr %0, align 8, !tbaa !12632
  store ptr %.0.lcssa.i.i.i32, ptr %i.a, align 8, !tbaa !12832
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ck, ptr %i.cg, align 8, !tbaa !12833
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowINSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEEbRKNS4_10time_pointIT_T0_EERKNS_11WaitOptionsE(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(9) %2) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::chrono::time_point", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !12579
  %i.b = icmp slt i64 %.sroa.0.0.copyload.i.i, 1
  br i1 %i.b, label %_ZN5folly6detail16spin_pause_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEZNS_19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowIS4_S8_EEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsEEUlvE_EENS0_11spin_resultESI_SL_T1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i32, ptr %0 acquire, align 4
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %_ZN5folly6detail16spin_pause_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEZNS_19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowIS4_S8_EEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsEEUlvE_EENS0_11spin_resultESI_SL_T1_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %1, align 8, !tbaa !12579
  %i.e = icmp eq i64 %.sroa.0.0.copyload.i.i.i, -9223372036854775808
  br i1 %i.e, label %_ZN5folly6detail16spin_pause_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEZNS_19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowIS4_S8_EEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsEEUlvE_EENS0_11spin_resultESI_SL_T1_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #31
  %i.g = load atomic i32, ptr %0 acquire, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %_ZN5folly6detail16spin_pause_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEZNS_19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowIS4_S8_EEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsEEUlvE_EENS0_11spin_resultESI_SL_T1_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.f
  %.sroa.025.037.i = phi i64 [ %.sroa.speculated.i, %bb.f ], [ %i.f, %bb.d ]
  %i.i = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #31 ; 3 uses
  %.sroa.0.0.copyload.i2.i15.i = load i64, ptr %1, align 8, !tbaa !12579
  %.not.i = icmp slt i64 %i.i, %.sroa.0.0.copyload.i2.i15.i ; 3 uses
  br i1 %.not.i, label %bb.e, label %_ZN5folly6detail16spin_pause_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEZNS_19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowIS4_S8_EEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsEEUlvE_EENS0_11spin_resultESI_SL_T1_.exit.thread

bb.e:                                             ; preds = %.lr.ph.i
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.i, i64 %.sroa.025.037.i) ; 2 uses
  %.sroa.0.0.copyload.i16.i = load i64, ptr %2, align 8, !tbaa !12579
  %i.j = add nsw i64 %.sroa.0.0.copyload.i16.i, %.sroa.speculated.i
  %.not36.i = icmp slt i64 %i.i, %i.j
  br i1 %.not36.i, label %bb.f, label %_ZN5folly6detail16spin_pause_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEZNS_19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowIS4_S8_EEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsEEUlvE_EENS0_11spin_resultESI_SL_T1_.exit

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #31, !srcloc !14304
  %i.k = load atomic i32, ptr %0 acquire, align 4
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %_ZN5folly6detail16spin_pause_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEZNS_19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowIS4_S8_EEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsEEUlvE_EENS0_11spin_resultESI_SL_T1_.exit.thread, label %.lr.ph.i, !llvm.loop !14469

_ZN5folly6detail16spin_pause_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEZNS_19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowIS4_S8_EEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsEEUlvE_EENS0_11spin_resultESI_SL_T1_.exit: ; preds = %bb.e, %bb.a
  %i.m = load atomic i32, ptr %0 monotonic, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %_ZN5folly6detail16spin_pause_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEZNS_19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowIS4_S8_EEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsEEUlvE_EENS0_11spin_resultESI_SL_T1_.exit
  %.010 = phi i32 [ %i.m, %_ZN5folly6detail16spin_pause_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEZNS_19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowIS4_S8_EEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsEEUlvE_EENS0_11spin_resultESI_SL_T1_.exit ], [ %i.q, %bb.i ]
  %i.n = icmp eq i32 %.010, 0
  br i1 %i.n, label %bb.h, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.h, %bb.g
  br label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.o = cmpxchg weak ptr %0, i32 0, i32 2 monotonic acquire, align 4 ; 2 uses
  %i.p = extractvalue { i32, i1 } %i.o, 1
  br i1 %i.p, label %.critedge.preheader, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = extractvalue { i32, i1 } %i.o, 0         ; 2 uses
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %_ZN5folly6detail16spin_pause_untilINSt6chrono3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEZNS_19SaturatingSemaphoreILb1ESt6atomicE11tryWaitSlowIS4_S8_EEbRKNS2_10time_pointIT_T0_EERKNS_11WaitOptionsEEUlvE_EENS0_11spin_resultESI_SL_T1_.exit.thread, label %bb.g, !llvm.loop !14470

.critedge:                                        ; preds = %.critedge.preheader, %bb.l
  %i.s = load atomic i64, ptr @_ZN5folly6detail11MemoryIdler18defaultIdleTimeoutE acquire, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.t = invoke noundef zeroext i1 @_ZN5folly6detail11MemoryIdler16futexWaitPreIdleISt6atomicIjENSt6chrono10time_pointINS5_3_V212steady_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEESC_EEbRNS0_11FutexResultERT_jRKT0_jT1_mf(ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef -1, i64 %i.s, i64 noundef 1024, float noundef 5.000000e-01)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.critedge
  br i1 %i.t, label %bb.j, label %_ZN5folly6detail14futexWaitUntilISt6atomicIjENSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEENS0_11FutexResultEPKT_jRKNS4_10time_pointIT0_T1_EEj.exit.i

end_hunk_0
