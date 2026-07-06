inline.NumInlined: 4138
inline.NumDeleted: 2071
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN5folly21CPUThreadPoolExecutorC1EmaSt10shared_ptrINS_13ThreadFactoryEENS0_7OptionsE:bb.a
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #30, !call_target !824, !inline_history !15049
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #30, !call_target !825, !inline_history !15049
  br label %_ZNSt12__shared_ptrIN5folly13ThreadFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZNSt12__shared_ptrIN5folly13ThreadFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5439

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #30
  br label %_ZNSt12__shared_ptrIN5folly13ThreadFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5folly13ThreadFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  %i.t = load ptr, ptr %5, align 8, !tbaa !5400   ; 3 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5folly13BlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN5folly13BlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEEEclEPS4_.exit.i

_ZNKSt14default_deleteIN5folly13BlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEEEclEPS4_.exit.i: ; preds = %_ZNSt12__shared_ptrIN5folly13ThreadFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !29
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.t) #30, !call_target !502, !inline_history !15050
  br label %_ZNSt10unique_ptrIN5folly13BlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN5folly13BlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5folly13ThreadFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt14default_deleteIN5folly13BlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEEEclEPS4_.exit.i
  ret void

bb.i:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5folly13ThreadFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #30
  %i.y = load ptr, ptr %5, align 8, !tbaa !5400   ; 3 uses
  %.not.i5 = icmp eq ptr %i.y, null
  br i1 %.not.i5, label %_ZNSt10unique_ptrIN5folly13BlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEESt14default_deleteIS4_EED2Ev.exit7, label %_ZNKSt14default_deleteIN5folly13BlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEEEclEPS4_.exit.i6

_ZNKSt14default_deleteIN5folly13BlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEEEclEPS4_.exit.i6: ; preds = %bb.i
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !29
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.y) #30, !call_target !502, !inline_history !15050
  br label %_ZNSt10unique_ptrIN5folly13BlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEESt14default_deleteIS4_EED2Ev.exit7

_ZNSt10unique_ptrIN5folly13BlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEESt14default_deleteIS4_EED2Ev.exit7: ; preds = %bb.i, %_ZNKSt14default_deleteIN5folly13BlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEEEclEPS4_.exit.i6
  resume { ptr, i32 } %i.x
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly21CPUThreadPoolExecutorC2EmamSt10shared_ptrINS_13ThreadFactoryEENS0_7OptionsE(ptr noundef nonnull align 64 dereferenceable(2580) %0, ptr noundef %1, i64 noundef %2, i8 noundef signext %3, i64 noundef %4, ptr nofree noundef captures(none) %5, i32 %6) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.folly::detail::LifoSemBase<folly::SaturatingSemaphore<>>::Options", align 1 ; 4 uses
  %8 = alloca %"class.std::unique_ptr.24", align 8 ; 4 uses
  %9 = alloca %"class.std::shared_ptr.6", align 16 ; 4 uses
  %i.a = tail call noalias noundef nonnull align 64 dereferenceable(192) ptr @_ZnwmSt11align_val_t(i64 noundef 192, i64 noundef 64) #41, !noalias !15354 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30, !noalias !15354
  invoke void @_ZN5folly24PriorityLifoSemMPMCQueueINS_21CPUThreadPoolExecutor7CPUTaskELNS_19QueueBehaviorIfFullE0ENS_11LifoSemImplISt6atomicNS_19SaturatingSemaphoreILb1ES5_EEEEEC2EhmRKNS_6detail11LifoSemBaseIS7_S5_E7OptionsE(ptr noundef nonnull align 64 dereferenceable(152) %i.a, i8 noundef zeroext %3, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %_ZSt11make_uniqueIN5folly24PriorityLifoSemMPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskELNS0_19QueueBehaviorIfFullE0ENS0_11LifoSemImplISt6atomicNS0_19SaturatingSemaphoreILb1ES6_EEEEEEJRaRmEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !15354

common.resume:                                    ; preds = %bb.j, %_ZNKSt14default_deleteIN5folly13BlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEEEclEPS4_.exit.i7, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.z, %_ZNKSt14default_deleteIN5folly13BlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEEEclEPS4_.exit.i7 ], [ %i.z, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30, !noalias !15354
  call void @_ZdlPvSt11align_val_t(ptr noundef nonnull %i.a, i64 noundef 64) #42, !noalias !15354
  br label %common.resume

_ZSt11make_uniqueIN5folly24PriorityLifoSemMPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskELNS0_19QueueBehaviorIfFullE0ENS0_11LifoSemImplISt6atomicNS0_19SaturatingSemaphoreILb1ES6_EEEEEEJRaRmEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30, !noalias !15354
  store ptr %i.a, ptr %8, align 8, !tbaa !5574
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = load <2 x ptr>, ptr %5, align 8, !tbaa !58
  store ptr null, ptr %i.c, align 8, !tbaa !52
  store <2 x ptr> %i.d, ptr %9, align 16, !tbaa !58
  store ptr null, ptr %5, align 8, !tbaa !15048
  invoke void @_ZN5folly21CPUThreadPoolExecutorC2EmSt10unique_ptrINS_13BlockingQueueINS0_7CPUTaskEEESt14default_deleteIS4_EESt10shared_ptrINS_13ThreadFactoryEENS0_7OptionsE(ptr noundef nonnull align 64 dereferenceable(2580) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 %6)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %_ZSt11make_uniqueIN5folly24PriorityLifoSemMPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskELNS0_19QueueBehaviorIfFullE0ENS0_11LifoSemImplISt6atomicNS0_19SaturatingSemaphoreILb1ES6_EEEEEEJRaRmEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52   ; 8 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5folly13ThreadFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.g, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !28
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #30, !call_target !824, !inline_history !15049
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #30, !call_target !825, !inline_history !15049
  br label %_ZNSt12__shared_ptrIN5folly13ThreadFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.j, %bb.g ], [ %i.t, %bb.h ]
  %i.u = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.u, label %bb.i, label %_ZNSt12__shared_ptrIN5folly13ThreadFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5439

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #30
  br label %_ZNSt12__shared_ptrIN5folly13ThreadFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5folly13ThreadFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.c, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  %i.v = load ptr, ptr %8, align 8, !tbaa !5400   ; 3 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5folly24PriorityLifoSemMPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskELNS0_19QueueBehaviorIfFullE0ENS0_11LifoSemImplISt6atomicNS0_19SaturatingSemaphoreILb1ES6_EEEEEESt14default_deleteISA_EED2Ev.exit, label %_ZNKSt14default_deleteIN5folly13BlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEEEclEPS4_.exit.i

_ZNKSt14default_deleteIN5folly13BlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEEEclEPS4_.exit.i: ; preds = %_ZNSt12__shared_ptrIN5folly13ThreadFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #30, !call_target !502, !inline_history !15050
  br label %_ZNSt10unique_ptrIN5folly24PriorityLifoSemMPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskELNS0_19QueueBehaviorIfFullE0ENS0_11LifoSemImplISt6atomicNS0_19SaturatingSemaphoreILb1ES6_EEEEEESt14default_deleteISA_EED2Ev.exit

_ZNSt10unique_ptrIN5folly24PriorityLifoSemMPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskELNS0_19QueueBehaviorIfFullE0ENS0_11LifoSemImplISt6atomicNS0_19SaturatingSemaphoreILb1ES6_EEEEEESt14default_deleteISA_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN5folly13BlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEEEclEPS4_.exit.i, %_ZNSt12__shared_ptrIN5folly13ThreadFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void

bb.j:                                             ; preds = %_ZSt11make_uniqueIN5folly24PriorityLifoSemMPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskELNS0_19QueueBehaviorIfFullE0ENS0_11LifoSemImplISt6atomicNS0_19SaturatingSemaphoreILb1ES6_EEEEEEJRaRmEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt12__shared_ptrIN5folly13ThreadFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #30
  %i.aa = load ptr, ptr %8, align 8, !tbaa !5400  ; 3 uses
  %.not.i6 = icmp eq ptr %i.aa, null
  br i1 %.not.i6, label %common.resume, label %_ZNKSt14default_deleteIN5folly13BlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEEEclEPS4_.exit.i7

_ZNKSt14default_deleteIN5folly13BlockingQueueINS0_21CPUThreadPoolExecutor7CPUTaskEEEEclEPS4_.exit.i7: ; preds = %bb.j
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !29
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aa) #30, !call_target !502, !inline_history !15050
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly24PriorityLifoSemMPMCQueueINS_21CPUThreadPoolExecutor7CPUTaskELNS_19QueueBehaviorIfFullE0ENS_11LifoSemImplISt6atomicNS_19SaturatingSemaphoreILb1ES5_EEEEEC2EhmRKNS_6detail11LifoSemBaseIS7_S5_E7OptionsE(ptr noundef nonnull align 64 dereferenceable(152) %0, i8 noundef zeroext %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %4 = alloca %"struct.google::CheckOpString", align 8 ; 5 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"class.google::LogMessageFatal", align 8 ; 6 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !5560
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5folly24PriorityLifoSemMPMCQueueINS_21CPUThreadPoolExecutor7CPUTaskELNS_19QueueBehaviorIfFullE0ENS_11LifoSemImplISt6atomicNS_19SaturatingSemaphoreILb1ES5_EEEEEE, i64 16), ptr %0, align 64, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.d, align 64, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i8 %1, ptr %i.b, align 1, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store i32 0, ptr %i.c, align 4, !tbaa !7
  %.not = icmp eq i8 %1, 0                        ; 2 uses
  br i1 %.not, label %bb.b, label %_ZN6google12Check_GTImplIhiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread, !prof !5439

_ZN6google12Check_GTImplIhiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = invoke noundef ptr @_ZN6google17MakeCheckOpStringIhiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull @.str.91)
          to label %_ZN6google12Check_GTImplIhiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit unwind label %bb.d ; 2 uses

_ZN6google12Check_GTImplIhiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit: ; preds = %bb.b
  store ptr %i.f, ptr %4, align 8, !tbaa !5541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %.not18 = icmp eq ptr %i.f, null
  br i1 %.not18, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN6google12Check_GTImplIhiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread, %_ZN6google12Check_GTImplIhiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.g = zext i8 %1 to i64
  invoke void @_ZNSt6vectorIN5folly9MPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS3_EEESaIS6_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.g)
          to label %.preheader unwind label %bb.l

.preheader:                                       ; preds = %bb.c
  %6 = zext i8 %1 to i16
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.k

bb.e:                                             ; preds = %_ZN6google12Check_GTImplIhiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  invoke void @_ZN6google15LogMessageFatalC1EPKciRKNS_13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef nonnull @.str.117, i32 noundef 43, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %5)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.92)
          to label %bb.h unwind label %bb.j       ; 0 uses

bb.h:                                             ; preds = %bb.g
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %5) #40
  unreachable

bb.i:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.k

bb.j:                                             ; preds = %bb.g, %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %5) #40
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.d
  %.pn = phi { ptr, i32 } [ %i.m, %bb.i ], [ %i.j, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.q

._crit_edge:                                      ; preds = %_ZNSt6vectorIN5folly9MPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS3_EEESaIS6_EE12emplace_backIJRmEEERS6_DpOT_.exit, %.preheader
  ret void

bb.l:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.m:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN5folly9MPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS3_EEESaIS6_EE12emplace_backIJRmEEERS6_DpOT_.exit
  %.019 = phi i8 [ 0, %.lr.ph ], [ %i.u, %_ZNSt6vectorIN5folly9MPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS3_EEESaIS6_EE12emplace_backIJRmEEERS6_DpOT_.exit ]
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !15357 ; 3 uses
  %i.q = load ptr, ptr %i.i, align 16, !tbaa !15360
  %.not.i = icmp eq ptr %i.p, %i.q
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.r = load i64, ptr %i.a, align 8, !tbaa !5560
  invoke void @_ZN5folly9MPMCQueueINS_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS2_EEC2Em(ptr noundef nonnull align 64 dereferenceable(320) %i.p, i64 noundef %i.r)
          to label %.noexc15 unwind label %bb.p

.noexc15:                                         ; preds = %bb.n
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !15357
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 320
  store ptr %i.t, ptr %i.h, align 8, !tbaa !15357
  br label %_ZNSt6vectorIN5folly9MPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS3_EEESaIS6_EE12emplace_backIJRmEEERS6_DpOT_.exit

bb.o:                                             ; preds = %bb.m
  invoke void @_ZNSt6vectorIN5folly9MPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS3_EEESaIS6_EE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNSt6vectorIN5folly9MPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS3_EEESaIS6_EE12emplace_backIJRmEEERS6_DpOT_.exit unwind label %bb.p

_ZNSt6vectorIN5folly9MPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS3_EEESaIS6_EE12emplace_backIJRmEEERS6_DpOT_.exit: ; preds = %bb.o, %.noexc15
  %i.u = add i8 %.019, 1                          ; 2 uses
  %7 = sext i8 %i.u to i16
  %i.v = icmp slt i16 %7, %6
  br i1 %i.v, label %bb.m, label %._crit_edge, !llvm.loop !15361

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.l, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.k ], [ %i.w, %bb.p ], [ %i.o, %bb.l ]
  call void @_ZNSt6vectorIN5folly9MPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS3_EEESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.e) #30
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5folly9MPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS3_EEESaIS6_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 28823037615171174
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.118) #43
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15360
  %i.d = load ptr, ptr %0, align 8, !tbaa !15362  ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 320
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseIN5folly9MPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS3_EEESaIS6_EE11_M_allocateEm.exit, label %bb.e

_ZNSt12_Vector_baseIN5folly9MPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS3_EEESaIS6_EE11_M_allocateEm.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15357 ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = mul nuw nsw i64 %1, 320
  %i.o = tail call noalias noundef nonnull align 64 ptr @_ZnwmSt11align_val_t(i64 noundef %i.n, i64 noundef 64) #41 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.d, %i.k
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5folly9MPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS3_EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseIN5folly9MPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS3_EEESaIS6_EE11_M_allocateEm.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseIN5folly9MPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS3_EEESaIS6_EE11_M_allocateEm.exit ] ; 10 uses
  %.0911.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseIN5folly9MPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS3_EEESaIS6_EE11_M_allocateEm.exit ] ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15366)
  %i.p = load i64, ptr %.0911.i.i.i, align 64, !tbaa !15368, !alias.scope !15366, !noalias !15363
  store i64 %i.p, ptr %.012.i.i.i, align 64, !tbaa !15368, !alias.scope !15363, !noalias !15366
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !55, !alias.scope !15366, !noalias !15363
  store ptr %i.s, ptr %i.q, align 8, !tbaa !55, !alias.scope !15363, !noalias !15366
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.v = load i32, ptr %i.u, align 16, !tbaa !55, !alias.scope !15366, !noalias !15363
  store i32 %i.v, ptr %i.t, align 16, !tbaa !55, !alias.scope !15363, !noalias !15366
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.y = load atomic i64, ptr %i.x monotonic, align 8, !alias.scope !15366, !noalias !15363
  store i64 %i.y, ptr %i.w, align 8, !tbaa !50, !alias.scope !15363, !noalias !15366
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ab = load atomic i64, ptr %i.aa monotonic, align 32, !alias.scope !15366, !noalias !15363
  store i64 %i.ab, ptr %i.z, align 32, !tbaa !50, !alias.scope !15363, !noalias !15366
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 2 uses
  %i.ae = load atomic i64, ptr %i.ad monotonic, align 64, !alias.scope !15366, !noalias !15363
  store i64 %i.ae, ptr %i.ac, align 64, !tbaa !50, !alias.scope !15363, !noalias !15366
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 128
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 128 ; 2 uses
  %i.ah = load atomic i64, ptr %i.ag monotonic, align 64, !alias.scope !15366, !noalias !15363
  store i64 %i.ah, ptr %i.af, align 64, !tbaa !50, !alias.scope !15363, !noalias !15366
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 192
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 192 ; 2 uses
  %i.ak = load atomic i32, ptr %i.aj monotonic, align 64, !alias.scope !15366, !noalias !15363
  store i32 %i.ak, ptr %i.ai, align 64, !tbaa !51, !alias.scope !15363, !noalias !15366
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 256
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 256 ; 2 uses
  %i.an = load atomic i32, ptr %i.am monotonic, align 64, !alias.scope !15366, !noalias !15363
  store i32 %i.an, ptr %i.al, align 64, !tbaa !51, !alias.scope !15363, !noalias !15366
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(320) %.0911.i.i.i, i8 0, i64 20, i1 false), !alias.scope !15366, !noalias !15363
  store atomic i64 0, ptr %i.x monotonic, align 8, !alias.scope !15366, !noalias !15363
  store atomic i64 0, ptr %i.aa monotonic, align 32, !alias.scope !15366, !noalias !15363
  store atomic i64 0, ptr %i.ad monotonic, align 64, !alias.scope !15366, !noalias !15363
  store atomic i64 0, ptr %i.ag monotonic, align 64, !alias.scope !15366, !noalias !15363
  store atomic i32 0, ptr %i.aj monotonic, align 64, !alias.scope !15366, !noalias !15363
  store atomic i32 0, ptr %i.am monotonic, align 64, !alias.scope !15366, !noalias !15363
  store ptr null, ptr %i.r, align 8, !tbaa !55, !alias.scope !15366, !noalias !15363
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 320 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 320
  %.not.i.i.i = icmp eq ptr %i.ao, %i.k
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5folly9MPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS3_EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !15370

_ZNSt6vectorIN5folly9MPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS3_EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit: ; preds = %.lr.ph.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !15362
  br label %_ZNSt6vectorIN5folly9MPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS3_EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit

_ZNSt6vectorIN5folly9MPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS3_EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit: ; preds = %_ZNSt6vectorIN5folly9MPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS3_EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit, %_ZNSt12_Vector_baseIN5folly9MPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS3_EEESaIS6_EE11_M_allocateEm.exit
  %i.aq = phi ptr [ %.pre, %_ZNSt6vectorIN5folly9MPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS3_EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit ], [ %i.d, %_ZNSt12_Vector_baseIN5folly9MPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS3_EEESaIS6_EE11_M_allocateEm.exit ] ; 3 uses
  %.not.i8 = icmp eq ptr %i.aq, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseIN5folly9MPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS3_EEESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN5folly9MPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS3_EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %i.ar = load ptr, ptr %i.b, align 8, !tbaa !15360
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %i.aq, i64 noundef %i.au, i64 noundef 64) #42
  br label %_ZNSt12_Vector_baseIN5folly9MPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS3_EEESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseIN5folly9MPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS3_EEESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorIN5folly9MPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS3_EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, %bb.d
  store ptr %i.o, ptr %0, align 8, !tbaa !15362
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.av, ptr %i.j, align 8, !tbaa !15357
  %i.aw = getelementptr inbounds nuw [320 x i8], ptr %i.o, i64 %1
  store ptr %i.aw, ptr %i.b, align 8, !tbaa !15360
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN5folly9MPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS3_EEESaIS6_EE13_M_deallocateEPS6_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN5folly9MPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS3_EEESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15362
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15357
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5folly9MPMCQueueINS2_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS5_EEEEEvT_SA_(ptr noundef %i.a, ptr noundef %i.c)
          to label %_ZSt8_DestroyIPN5folly9MPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS3_EEES6_EvT_S8_RSaIT0_E.exit unwind label %bb.c

_ZSt8_DestroyIPN5folly9MPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS3_EEES6_EvT_S8_RSaIT0_E.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !15362  ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN5folly9MPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS3_EEESaIS6_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5folly9MPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS3_EEES6_EvT_S8_RSaIT0_E.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15360
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %i.d, i64 noundef %i.i, i64 noundef 64) #42
  br label %_ZNSt12_Vector_baseIN5folly9MPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS3_EEESaIS6_EED2Ev.exit

_ZNSt12_Vector_baseIN5folly9MPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS3_EEESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5folly9MPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS3_EEES6_EvT_S8_RSaIT0_E.exit, %bb.b
  ret void

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #40
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly24PriorityLifoSemMPMCQueueINS_21CPUThreadPoolExecutor7CPUTaskELNS_19QueueBehaviorIfFullE0ENS_11LifoSemImplISt6atomicNS_19SaturatingSemaphoreILb1ES5_EEEEED2Ev(ptr noundef nonnull align 64 dereferenceable(152) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5folly24PriorityLifoSemMPMCQueueINS_21CPUThreadPoolExecutor7CPUTaskELNS_19QueueBehaviorIfFullE0ENS_11LifoSemImplISt6atomicNS_19SaturatingSemaphoreILb1ES5_EEEEEE, i64 16), ptr %0, align 64, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 64, !tbaa !15362
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15357
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5folly9MPMCQueueINS2_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS5_EEEEEvT_SA_(ptr noundef %i.b, ptr noundef %i.d)
          to label %_ZSt8_DestroyIPN5folly9MPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS3_EEES6_EvT_S8_RSaIT0_E.exit.i unwind label %bb.c

_ZSt8_DestroyIPN5folly9MPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS3_EEES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 64, !tbaa !15362 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5folly9MPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS3_EEESaIS6_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5folly9MPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS3_EEES6_EvT_S8_RSaIT0_E.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !15360
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %i.e, i64 noundef %i.j, i64 noundef 64) #42
  br label %_ZNSt6vectorIN5folly9MPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS3_EEESaIS6_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #40
  unreachable

_ZNSt6vectorIN5folly9MPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS3_EEESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5folly9MPMCQueueINS0_21CPUThreadPoolExecutor7CPUTaskESt6atomicLb0ESaIS3_EEES6_EvT_S8_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly24PriorityLifoSemMPMCQueueINS_21CPUThreadPoolExecutor7CPUTaskELNS_19QueueBehaviorIfFullE0ENS_11LifoSemImplISt6atomicNS_19SaturatingSemaphoreILb1ES5_EEEEED0Ev(ptr noundef nonnull align 64 dereferenceable(152) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5folly24PriorityLifoSemMPMCQueueINS_21CPUThreadPoolExecutor7CPUTaskELNS_19QueueBehaviorIfFullE0ENS_11LifoSemImplISt6atomicNS_19SaturatingSemaphoreILb1ES5_EEEEEE, i64 16), ptr %0, align 64, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
end_hunk_0
