Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/process?download=true
inline.NumInlined: 1996
inline.NumDeleted: 458
begin_hunk_0_@_ZN26Process_AbortNextTick_Test8TestBodyEv:_ZN4entt13basic_processIiSaIvEED2Ev.exit

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN29Process_AbortImmediately_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
_ZN4entt13basic_processIN4test8internal10empty_typeESaIvEED2Ev.exit:
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN17Process_Data_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZN4entt13basic_processIN4test8internal10empty_typeESaIvEE4tickES3_Pv.exit113:
  %1 = alloca %class.test_process.24, align 8     ; 8 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %3 = alloca %"class.testing::Message", align 8  ; 7 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV12test_processIN4test8internal10empty_typeEE, i64 16), ptr %1, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i16 262, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 42
  store i8 1, ptr %i.c, align 2, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2)
          to label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.a

_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %_ZN4entt13basic_processIN4test8internal10empty_typeESaIvEE4tickES3_Pv.exit113
  %.pre = load i8, ptr %2, align 8, !tbaa !56, !range !86
  %i.d = trunc nuw i8 %.pre to i1
  br i1 %i.d, label %.critedge98, label %bb.b

bb.a:                                             ; preds = %_ZN4entt13basic_processIN4test8internal10empty_typeESaIvEE4tickES3_Pv.exit113
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.b:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !73   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !61
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.d, %bb.c
  %i.i = phi ptr [ %i.h, %bb.d ], [ @.str.54, %bb.c ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 281, ptr noundef %i.i)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.j = load ptr, ptr %3, align 8, !tbaa !64     ; 3 uses
  %.not.i.i202 = icmp eq ptr %i.j, null
  br i1 %.not.i.i202, label %_ZN7testing7MessageD2Ev.exit204, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i203

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i203: ; preds = %bb.f
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(128) %i.j) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit204

_ZN7testing7MessageD2Ev.exit204:                  ; preds = %bb.f, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i203
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !73   ; 5 uses
  %.not.i.i205 = icmp eq ptr %i.n, null
  br i1 %.not.i.i205, label %_ZN4entt13basic_processIN4test8internal10empty_typeESaIvEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN7testing7MessageD2Ev.exit204
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !61   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZN4entt13basic_processIN4test8internal10empty_typeESaIvEED2Ev.exit.sink.split, label %_ZN4entt13basic_processIN4test8internal10empty_typeESaIvEED2Ev.exit.sink.split.sink.split

bb.h:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit212

bb.i:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #20
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn70 = phi { ptr, i32 } [ %i.t, %bb.j ], [ %i.s, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.u = load ptr, ptr %3, align 8, !tbaa !64     ; 3 uses
  %.not.i.i210 = icmp eq ptr %i.u, null
  br i1 %.not.i.i210, label %_ZN7testing7MessageD2Ev.exit212, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i211

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i211: ; preds = %bb.k
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !19
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(128) %i.u) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit212

_ZN7testing7MessageD2Ev.exit212:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i211, %bb.k, %bb.h
  %.pn70.pn = phi { ptr, i32 } [ %i.r, %bb.h ], [ %.pn70, %bb.k ], [ %.pn70, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i211 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #20
  br label %bb.m

.critedge98:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !73   ; 5 uses
  %.not.i.i213 = icmp eq ptr %i.z, null
  br i1 %.not.i.i213, label %_ZN4entt13basic_processIN4test8internal10empty_typeESaIvEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %.critedge98
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !61  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN4entt13basic_processIN4test8internal10empty_typeESaIvEED2Ev.exit.sink.split, label %_ZN4entt13basic_processIN4test8internal10empty_typeESaIvEED2Ev.exit.sink.split.sink.split

_ZN4entt13basic_processIN4test8internal10empty_typeESaIvEED2Ev.exit.sink.split.sink.split: ; preds = %bb.l, %bb.g
  %.sink550.in = phi ptr [ %i.p, %bb.g ], [ %i.ab, %bb.l ]
  %.sink548 = phi ptr [ %i.o, %bb.g ], [ %i.aa, %bb.l ]
  %.sink.ph = phi ptr [ %i.n, %bb.g ], [ %i.z, %bb.l ]
  %.sink550 = load i64, ptr %.sink550.in, align 8, !tbaa !62
  %i.ad = add i64 %.sink550, 1
  call void @_ZdlPvm(ptr noundef %.sink548, i64 noundef %i.ad) #21
  br label %_ZN4entt13basic_processIN4test8internal10empty_typeESaIvEED2Ev.exit.sink.split

_ZN4entt13basic_processIN4test8internal10empty_typeESaIvEED2Ev.exit.sink.split: ; preds = %_ZN4entt13basic_processIN4test8internal10empty_typeESaIvEED2Ev.exit.sink.split.sink.split, %bb.l, %bb.g
  %.sink = phi ptr [ %i.n, %bb.g ], [ %i.z, %bb.l ], [ %.sink.ph, %_ZN4entt13basic_processIN4test8internal10empty_typeESaIvEED2Ev.exit.sink.split.sink.split ]
  call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 32) #21
  br label %_ZN4entt13basic_processIN4test8internal10empty_typeESaIvEED2Ev.exit

_ZN4entt13basic_processIN4test8internal10empty_typeESaIvEED2Ev.exit: ; preds = %_ZN4entt13basic_processIN4test8internal10empty_typeESaIvEED2Ev.exit.sink.split, %.critedge98, %_ZN7testing7MessageD2Ev.exit204
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret void

bb.m:                                             ; preds = %bb.a, %_ZN7testing7MessageD2Ev.exit212
  %.pn70.pn.pn = phi { ptr, i32 } [ %.pn70.pn, %_ZN7testing7MessageD2Ev.exit212 ], [ %i.e, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @_ZN4entt13basic_processIN4test8internal10empty_typeESaIvEED2Ev(ptr noundef nonnull align 8 dead_on_return(45) dereferenceable(45) %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  resume { ptr, i32 } %.pn70.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN21Process_ThenPeek_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.test_process, align 8        ; 11 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 11 uses
  %3 = alloca %"class.testing::Message", align 8  ; 7 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 11 uses
  %7 = alloca %"class.testing::Message", align 8  ; 7 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 11 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %15 = alloca %"class.testing::Message", align 8 ; 7 uses
  %16 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i8 0, i64 40, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV12test_processIiE, i64 16), ptr %1, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.d = invoke noundef nonnull align 8 dereferenceable(41) ptr @_ZN4entt13basic_processIiSaIvEE4thenI12test_processIiEJEEERS2_DpOT0_(ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %bb.b unwind label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.e = invoke noundef nonnull align 8 dereferenceable(41) ptr @_ZN4entt13basic_processIiSaIvEE4thenI12test_processIiEJEEERS2_DpOT0_(ptr noundef nonnull align 8 dereferenceable(41) %i.d)
          to label %bb.c unwind label %bb.m       ; 0 uses

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !87, !noalias !126 ; 2 uses
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !65, !noalias !126 ; 8 uses
  %.not.i.i.i.i70 = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i70, label %_ZN4entt13basic_processIiSaIvEE4peekEv.exit72, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 7 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62, !noalias !126
  %.not.i.i.i.i.i71 = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i.i71, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %i.h, align 4, !tbaa !69, !noalias !126
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !69, !noalias !126
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.l = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4, !noalias !126 ; 0 uses
  br label %bb.g

_ZN4entt13basic_processIiSaIvEE4peekEv.exit72:    ; preds = %bb.c
  %18 = icmp ne ptr %i.f, null
  %19 = zext i1 %18 to i8
  store i8 %19, ptr %2, align 8, !tbaa !56
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr null, ptr %20, align 8, !tbaa !57
  br label %_ZNSt12__shared_ptrIN4entt13basic_processIiSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit77

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.m = icmp ne ptr %i.f, null
  %i.n = zext i1 %i.m to i8
  store i8 %i.n, ptr %2, align 8, !tbaa !56
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store ptr null, ptr %i.o, align 8, !tbaa !57
  %i.p = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.h, align 8, !tbaa !67
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !68
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #20, !inline_history !3
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #20, !inline_history !3
  br label %_ZNSt12__shared_ptrIN4entt13basic_processIiSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit77

bb.i:                                             ; preds = %bb.g
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i74 = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i74, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.h, align 8, !tbaa !69
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i75

bb.k:                                             ; preds = %bb.i
  %i.ab = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i75

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i75: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i76 = phi i32 [ %i.r, %bb.j ], [ %i.ab, %bb.k ]
  %i.ac = icmp eq i32 %.0.i.i.i.i76, 1
  br i1 %i.ac, label %bb.l, label %_ZNSt12__shared_ptrIN4entt13basic_processIiSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit77, !prof !70

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i75
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #20
  br label %_ZNSt12__shared_ptrIN4entt13basic_processIiSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit77

_ZNSt12__shared_ptrIN4entt13basic_processIiSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit77: ; preds = %_ZN4entt13basic_processIiSaIvEE4peekEv.exit72, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i75, %bb.l
  %21 = phi ptr [ %20, %_ZN4entt13basic_processIiSaIvEE4peekEv.exit72 ], [ %i.o, %bb.h ], [ %i.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i75 ], [ %i.o, %bb.l ] ; 2 uses
  %22 = load i8, ptr %2, align 8, !tbaa !56, !range !86, !noundef !88
  %23 = trunc nuw i8 %22 to i1
  br i1 %23, label %.critedge52, label %bb.n

bb.m:                                             ; preds = %bb.b, %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIN4entt13basic_processIiSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit77
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.ae = load ptr, ptr %5, align 8, !tbaa !61
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 295, ptr noundef %i.ae)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %bb.p
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.r unwind label %bb.w

bb.r:                                             ; preds = %bb.q
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #20
  %i.af = load ptr, ptr %5, align 8, !tbaa !61    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %bb.r
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !62
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.ak = load ptr, ptr %3, align 8, !tbaa !64    ; 3 uses
  %.not.i.i81 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i81, label %_ZN7testing7MessageD2Ev.exit83, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i82

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !19
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(128) %i.ak) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit83

_ZN7testing7MessageD2Ev.exit83:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.ao = load ptr, ptr %21, align 8, !tbaa !73   ; 4 uses
  %.not.i.i84 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i84, label %_ZN7testing15AssertionResultD2Ev.exit88, label %bb.s

bb.s:                                             ; preds = %_ZN7testing7MessageD2Ev.exit83
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !61 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i85: ; preds = %bb.s
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !62
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #21
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i86

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i86: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i85
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef 32) #21
  br label %_ZN7testing15AssertionResultD2Ev.exit88

_ZN7testing15AssertionResultD2Ev.exit88:          ; preds = %_ZN7testing7MessageD2Ev.exit83, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.do

bb.t:                                             ; preds = %bb.n
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit94

bb.u:                                             ; preds = %bb.o
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

bb.v:                                             ; preds = %bb.p
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.q
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #20
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn34 = phi { ptr, i32 } [ %i.ax, %bb.w ], [ %i.aw, %bb.v ] ; 2 uses
  %i.ay = load ptr, ptr %5, align 8, !tbaa !61    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %bb.x
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !62
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89, %bb.u
  %.pn34.pn = phi { ptr, i32 } [ %i.av, %bb.u ], [ %.pn34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89 ], [ %.pn34, %bb.x ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.bd = load ptr, ptr %3, align 8, !tbaa !64    ; 3 uses
  %.not.i.i92 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i92, label %_ZN7testing7MessageD2Ev.exit94, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !19
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(128) %i.bd) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit94

_ZN7testing7MessageD2Ev.exit94:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %bb.t
  %.pn34.pn.pn = phi { ptr, i32 } [ %i.au, %bb.t ], [ %.pn34.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ], [ %.pn34.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.dz

.critedge52:                                      ; preds = %_ZNSt12__shared_ptrIN4entt13basic_processIiSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit77
  %i.bh = load ptr, ptr %21, align 8, !tbaa !73   ; 4 uses
  %.not.i.i95 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i95, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.critedge52
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !61 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i96: ; preds = %bb.y
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !62
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #21
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i96
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef 32) #21
  br label %bb.z

bb.z:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97, %.critedge52
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !87, !noalias !127 ; 2 uses
  %i.bo = load ptr, ptr %i.c, align 8, !tbaa !65, !noalias !127 ; 9 uses
  %.not.i.i.i.i100 = icmp eq ptr %i.bo, null      ; 2 uses
  br i1 %.not.i.i.i.i100, label %_ZN4entt13basic_processIiSaIvEE4peekEv.exit102, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 3 uses
  %i.bq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62, !noalias !127
  %.not.i.i.i.i.i101 = icmp eq i8 %i.bq, 0
  br i1 %.not.i.i.i.i.i101, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !69, !noalias !127
  %i.bs = add nsw i32 %i.br, 1
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !69, !noalias !127
  br label %_ZN4entt13basic_processIiSaIvEE4peekEv.exit102

bb.ac:                                            ; preds = %bb.aa
  %i.bt = atomicrmw volatile add ptr %i.bp, i32 1 acq_rel, align 4, !noalias !127 ; 0 uses
  br label %_ZN4entt13basic_processIiSaIvEE4peekEv.exit102

_ZN4entt13basic_processIiSaIvEE4peekEv.exit102:   ; preds = %bb.z, %bb.ab, %bb.ac
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !87, !noalias !128 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !65, !noalias !128 ; 8 uses
  %.not.i.i.i.i103 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i103, label %_ZN4entt13basic_processIiSaIvEE4peekEv.exit105, label %bb.ad

bb.ad:                                            ; preds = %_ZN4entt13basic_processIiSaIvEE4peekEv.exit102
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 7 uses
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62, !noalias !128
  %.not.i.i.i.i.i104 = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i.i104, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !69, !noalias !128
  %i.cb = add nsw i32 %i.ca, 1
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !69, !noalias !128
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.cc = atomicrmw volatile add ptr %i.by, i32 1 acq_rel, align 4, !noalias !128 ; 0 uses
  br label %bb.ag

_ZN4entt13basic_processIiSaIvEE4peekEv.exit105:   ; preds = %_ZN4entt13basic_processIiSaIvEE4peekEv.exit102
  %i.cd = icmp ne ptr %i.bv, null
  %i.ce = zext i1 %i.cd to i8
  store i8 %i.ce, ptr %6, align 8, !tbaa !56
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr null, ptr %i.cf, align 8, !tbaa !57
  br label %_ZNSt12__shared_ptrIN4entt13basic_processIiSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit110

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.cg = icmp ne ptr %i.bv, null
  %i.ch = zext i1 %i.cg to i8
  store i8 %i.ch, ptr %6, align 8, !tbaa !56
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store ptr null, ptr %i.ci, align 8, !tbaa !57
  %i.cj = load atomic i64, ptr %i.by acquire, align 8 ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 4294967297
  %i.cl = trunc i64 %i.cj to i32                  ; 2 uses
  br i1 %i.ck, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.by, align 8, !tbaa !67
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  store i32 0, ptr %i.cm, align 4, !tbaa !68
  %i.cn = load ptr, ptr %i.bx, align 8, !tbaa !19
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #20, !inline_history !3
  %i.cq = load ptr, ptr %i.bx, align 8, !tbaa !19
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #20, !inline_history !3
  br label %_ZNSt12__shared_ptrIN4entt13basic_processIiSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit110

bb.ai:                                            ; preds = %bb.ag
  %i.ct = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i107 = icmp eq i8 %i.ct, 0
  br i1 %.not.i.i.i107, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cu = add nsw i32 %i.cl, -1
  store i32 %i.cu, ptr %i.by, align 8, !tbaa !69
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i108

bb.ak:                                            ; preds = %bb.ai
  %i.cv = atomicrmw volatile add ptr %i.by, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i108

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i108: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i109 = phi i32 [ %i.cl, %bb.aj ], [ %i.cv, %bb.ak ]
  %i.cw = icmp eq i32 %.0.i.i.i.i109, 1
  br i1 %i.cw, label %bb.al, label %_ZNSt12__shared_ptrIN4entt13basic_processIiSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit110, !prof !70

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i108
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #20
  br label %_ZNSt12__shared_ptrIN4entt13basic_processIiSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit110

_ZNSt12__shared_ptrIN4entt13basic_processIiSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit110: ; preds = %_ZN4entt13basic_processIiSaIvEE4peekEv.exit105, %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i108, %bb.al
  %i.cx = phi ptr [ %i.cf, %_ZN4entt13basic_processIiSaIvEE4peekEv.exit105 ], [ %i.ci, %bb.ah ], [ %i.ci, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i108 ], [ %i.ci, %bb.al ] ; 2 uses
  br i1 %.not.i.i.i.i100, label %_ZNSt12__shared_ptrIN4entt13basic_processIiSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit115, label %bb.am

bb.am:                                            ; preds = %_ZNSt12__shared_ptrIN4entt13basic_processIiSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit110
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 4 uses
  %i.cz = load atomic i64, ptr %i.cy acquire, align 8 ; 2 uses
  %i.da = icmp eq i64 %i.cz, 4294967297
  %i.db = trunc i64 %i.cz to i32                  ; 2 uses
  br i1 %i.da, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.cy, align 8, !tbaa !67
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  store i32 0, ptr %i.dc, align 4, !tbaa !68
  %i.dd = load ptr, ptr %i.bo, align 8, !tbaa !19
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #20, !inline_history !3
  %i.dg = load ptr, ptr %i.bo, align 8, !tbaa !19
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #20, !inline_history !3
  br label %_ZNSt12__shared_ptrIN4entt13basic_processIiSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit115

bb.ao:                                            ; preds = %bb.am
  %i.dj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i112 = icmp eq i8 %i.dj, 0
  br i1 %.not.i.i.i112, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dk = add nsw i32 %i.db, -1
  store i32 %i.dk, ptr %i.cy, align 8, !tbaa !69
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i113

bb.aq:                                            ; preds = %bb.ao
  %i.dl = atomicrmw volatile add ptr %i.cy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i113

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i113: ; preds = %bb.aq, %bb.ap
  %.0.i.i.i.i114 = phi i32 [ %i.db, %bb.ap ], [ %i.dl, %bb.aq ]
  %i.dm = icmp eq i32 %.0.i.i.i.i114, 1
  br i1 %i.dm, label %bb.ar, label %_ZNSt12__shared_ptrIN4entt13basic_processIiSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit115, !prof !70

bb.ar:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i113
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #20
  br label %_ZNSt12__shared_ptrIN4entt13basic_processIiSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit115

_ZNSt12__shared_ptrIN4entt13basic_processIiSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit115: ; preds = %_ZNSt12__shared_ptrIN4entt13basic_processIiSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit110, %bb.an, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i113, %bb.ar
  %i.dn = load i8, ptr %6, align 8, !tbaa !56, !range !86, !noundef !88
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %.critedge54, label %bb.as

bb.as:                                            ; preds = %_ZNSt12__shared_ptrIN4entt13basic_processIiSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit115
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.at unwind label %bb.ay

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4)
          to label %bb.au unwind label %bb.az

bb.au:                                            ; preds = %bb.at
  %i.dp = load ptr, ptr %9, align 8, !tbaa !61
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 296, ptr noundef %i.dp)
          to label %bb.av unwind label %bb.ba

bb.av:                                            ; preds = %bb.au
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.aw unwind label %bb.bb

bb.aw:                                            ; preds = %bb.av
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #20
  %i.dq = load ptr, ptr %9, align 8, !tbaa !61    ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %bb.aw
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !62
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.du) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.dv = load ptr, ptr %7, align 8, !tbaa !64    ; 3 uses
  %.not.i.i119 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i119, label %_ZN7testing7MessageD2Ev.exit121, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !19
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8
end_hunk_0
begin_hunk_1_@_ZN21Process_ThenPeek_Test8TestBodyEv:bb.a
  br i1 %i.hh, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  store i32 0, ptr %i.hf, align 8, !tbaa !67
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  store i32 0, ptr %i.hj, align 4, !tbaa !68
  %i.hk = load ptr, ptr %i.ez, align 8, !tbaa !19
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %i.hm = load ptr, ptr %i.hl, align 8
  call void %i.hm(ptr noundef nonnull align 8 dereferenceable(16) %i.ez) #20, !inline_history !3
  %i.hn = load ptr, ptr %i.ez, align 8, !tbaa !19
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  %i.hp = load ptr, ptr %i.ho, align 8
  call void %i.hp(ptr noundef nonnull align 8 dereferenceable(16) %i.ez) #20, !inline_history !3
  br label %_ZNSt12__shared_ptrIN4entt13basic_processIiSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit161

bb.cc:                                            ; preds = %bb.ca
  %i.hq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i158 = icmp eq i8 %i.hq, 0
  br i1 %.not.i.i.i158, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.hr = add nsw i32 %i.hi, -1
  store i32 %i.hr, ptr %i.hf, align 8, !tbaa !69
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i159

bb.ce:                                            ; preds = %bb.cc
  %i.hs = atomicrmw volatile add ptr %i.hf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i159

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i159: ; preds = %bb.ce, %bb.cd
  %.0.i.i.i.i160 = phi i32 [ %i.hi, %bb.cd ], [ %i.hs, %bb.ce ]
  %i.ht = icmp eq i32 %.0.i.i.i.i160, 1
  br i1 %i.ht, label %bb.cf, label %_ZNSt12__shared_ptrIN4entt13basic_processIiSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit161, !prof !70

bb.cf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i159
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ez) #20
  br label %_ZNSt12__shared_ptrIN4entt13basic_processIiSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit161

_ZNSt12__shared_ptrIN4entt13basic_processIiSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit161: ; preds = %_ZNSt12__shared_ptrIN4entt13basic_processIiSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit156, %bb.cb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i159, %bb.cf
  %i.hu = load i8, ptr %10, align 8, !tbaa !56, !range !86, !noundef !88
  %i.hv = trunc nuw i8 %i.hu to i1
  br i1 %i.hv, label %.critedge56, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt12__shared_ptrIN4entt13basic_processIiSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit161
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ch unwind label %bb.cm

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
          to label %bb.ci unwind label %bb.cn

bb.ci:                                            ; preds = %bb.ch
  %i.hw = load ptr, ptr %13, align 8, !tbaa !61
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 297, ptr noundef %i.hw)
          to label %bb.cj unwind label %bb.co

bb.cj:                                            ; preds = %bb.ci
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ck unwind label %bb.cp

bb.ck:                                            ; preds = %bb.cj
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #20
  %i.hx = load ptr, ptr %13, align 8, !tbaa !61   ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.hz = icmp eq ptr %i.hx, %i.hy
  br i1 %i.hz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162: ; preds = %bb.ck
  %i.ia = load i64, ptr %i.hy, align 8, !tbaa !62
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.ib) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164: ; preds = %bb.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.ic = load ptr, ptr %11, align 8, !tbaa !64   ; 3 uses
  %.not.i.i165 = icmp eq ptr %i.ic, null
  br i1 %.not.i.i165, label %_ZN7testing7MessageD2Ev.exit167, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i166

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i166: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !19
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.if = load ptr, ptr %i.ie, align 8
  call void %i.if(ptr noundef nonnull align 8 dereferenceable(128) %i.ic) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit167

_ZN7testing7MessageD2Ev.exit167:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i166
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.ig = load ptr, ptr %i.gp, align 8, !tbaa !73 ; 4 uses
  %.not.i.i168 = icmp eq ptr %i.ig, null
  br i1 %.not.i.i168, label %_ZN7testing15AssertionResultD2Ev.exit172, label %bb.cl

bb.cl:                                            ; preds = %_ZN7testing7MessageD2Ev.exit167
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !61 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 16 ; 2 uses
  %i.ij = icmp eq ptr %i.ih, %i.ii
  br i1 %i.ij, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i169: ; preds = %bb.cl
  %i.ik = load i64, ptr %i.ii, align 8, !tbaa !62
  %i.il = add i64 %i.ik, 1
  call void @_ZdlPvm(ptr noundef %i.ih, i64 noundef %i.il) #21
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i170

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i170: ; preds = %bb.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i169
  call void @_ZdlPvm(ptr noundef nonnull %i.ig, i64 noundef 32) #21
  br label %_ZN7testing15AssertionResultD2Ev.exit172

_ZN7testing15AssertionResultD2Ev.exit172:         ; preds = %_ZN7testing7MessageD2Ev.exit167, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i170
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.do

bb.cm:                                            ; preds = %bb.cg
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit178

bb.cn:                                            ; preds = %bb.ch
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

bb.co:                                            ; preds = %bb.ci
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cj
  %i.ip = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #20
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.pn42 = phi { ptr, i32 } [ %i.ip, %bb.cp ], [ %i.io, %bb.co ] ; 2 uses
  %i.iq = load ptr, ptr %13, align 8, !tbaa !61   ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.is = icmp eq ptr %i.iq, %i.ir
  br i1 %i.is, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173: ; preds = %bb.cq
  %i.it = load i64, ptr %i.ir, align 8, !tbaa !62
  %i.iu = add i64 %i.it, 1
  call void @_ZdlPvm(ptr noundef %i.iq, i64 noundef %i.iu) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175: ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173, %bb.cn
  %.pn42.pn = phi { ptr, i32 } [ %i.in, %bb.cn ], [ %.pn42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173 ], [ %.pn42, %bb.cq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.iv = load ptr, ptr %11, align 8, !tbaa !64   ; 3 uses
  %.not.i.i176 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i176, label %_ZN7testing7MessageD2Ev.exit178, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i177

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i177: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !19
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8
  call void %i.iy(ptr noundef nonnull align 8 dereferenceable(128) %i.iv) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit178

_ZN7testing7MessageD2Ev.exit178:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i177, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, %bb.cm
  %.pn42.pn.pn = phi { ptr, i32 } [ %i.im, %bb.cm ], [ %.pn42.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ %.pn42.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i177 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.dz

.critedge56:                                      ; preds = %_ZNSt12__shared_ptrIN4entt13basic_processIiSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit161
  %i.iz = load ptr, ptr %i.gp, align 8, !tbaa !73 ; 4 uses
  %.not.i.i179 = icmp eq ptr %i.iz, null
  br i1 %.not.i.i179, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %.critedge56
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !61 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 16 ; 2 uses
  %i.jc = icmp eq ptr %i.ja, %i.jb
  br i1 %i.jc, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i180: ; preds = %bb.cr
  %i.jd = load i64, ptr %i.jb, align 8, !tbaa !62
  %i.je = add i64 %i.jd, 1
  call void @_ZdlPvm(ptr noundef %i.ja, i64 noundef %i.je) #21
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i181

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i181: ; preds = %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i180
  call void @_ZdlPvm(ptr noundef nonnull %i.iz, i64 noundef 32) #21
  br label %bb.cs

bb.cs:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i181, %.critedge56
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.jf = load ptr, ptr %i.a, align 8, !tbaa !87, !noalias !132 ; 2 uses
  %i.jg = load ptr, ptr %i.c, align 8, !tbaa !65, !noalias !132 ; 8 uses
  %.not.i.i.i.i184 = icmp eq ptr %i.jg, null
  br i1 %.not.i.i.i.i184, label %_ZN4entt13basic_processIiSaIvEE4peekEv.exit186, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8 ; 7 uses
  %i.ji = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62, !noalias !132
  %.not.i.i.i.i.i185 = icmp eq i8 %i.ji, 0
  br i1 %.not.i.i.i.i.i185, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.jj = load i32, ptr %i.jh, align 4, !tbaa !69, !noalias !132
  %i.jk = add nsw i32 %i.jj, 1
  store i32 %i.jk, ptr %i.jh, align 4, !tbaa !69, !noalias !132
  br label %bb.cw

bb.cv:                                            ; preds = %bb.ct
  %i.jl = atomicrmw volatile add ptr %i.jh, i32 1 acq_rel, align 4, !noalias !132 ; 0 uses
  br label %bb.cw

_ZN4entt13basic_processIiSaIvEE4peekEv.exit186:   ; preds = %bb.cs
  %24 = icmp ne ptr %i.jf, null
  %25 = zext i1 %24 to i8
  store i8 %25, ptr %14, align 8, !tbaa !56
  %26 = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr null, ptr %26, align 8, !tbaa !57
  br label %_ZNSt12__shared_ptrIN4entt13basic_processIiSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit191

bb.cw:                                            ; preds = %bb.cu, %bb.cv
  %i.jm = icmp ne ptr %i.jf, null
  %i.jn = zext i1 %i.jm to i8
  store i8 %i.jn, ptr %14, align 8, !tbaa !56
  %i.jo = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  store ptr null, ptr %i.jo, align 8, !tbaa !57
  %i.jp = load atomic i64, ptr %i.jh acquire, align 8 ; 2 uses
  %i.jq = icmp eq i64 %i.jp, 4294967297
  %i.jr = trunc i64 %i.jp to i32                  ; 2 uses
  br i1 %i.jq, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  store i32 0, ptr %i.jh, align 8, !tbaa !67
  %i.js = getelementptr inbounds nuw i8, ptr %i.jg, i64 12
  store i32 0, ptr %i.js, align 4, !tbaa !68
  %i.jt = load ptr, ptr %i.jg, align 8, !tbaa !19
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.jv = load ptr, ptr %i.ju, align 8
  call void %i.jv(ptr noundef nonnull align 8 dereferenceable(16) %i.jg) #20, !inline_history !3
  %i.jw = load ptr, ptr %i.jg, align 8, !tbaa !19
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 24
  %i.jy = load ptr, ptr %i.jx, align 8
  call void %i.jy(ptr noundef nonnull align 8 dereferenceable(16) %i.jg) #20, !inline_history !3
  br label %_ZNSt12__shared_ptrIN4entt13basic_processIiSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit191

bb.cy:                                            ; preds = %bb.cw
  %i.jz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i188 = icmp eq i8 %i.jz, 0
  br i1 %.not.i.i.i188, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ka = add nsw i32 %i.jr, -1
  store i32 %i.ka, ptr %i.jh, align 8, !tbaa !69
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i189

bb.da:                                            ; preds = %bb.cy
  %i.kb = atomicrmw volatile add ptr %i.jh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i189

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i189: ; preds = %bb.da, %bb.cz
  %.0.i.i.i.i190 = phi i32 [ %i.jr, %bb.cz ], [ %i.kb, %bb.da ]
  %i.kc = icmp eq i32 %.0.i.i.i.i190, 1
  br i1 %i.kc, label %bb.db, label %_ZNSt12__shared_ptrIN4entt13basic_processIiSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit191, !prof !70

bb.db:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i189
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jg) #20
  br label %_ZNSt12__shared_ptrIN4entt13basic_processIiSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit191

_ZNSt12__shared_ptrIN4entt13basic_processIiSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit191: ; preds = %_ZN4entt13basic_processIiSaIvEE4peekEv.exit186, %bb.cx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i189, %bb.db
  %27 = phi ptr [ %26, %_ZN4entt13basic_processIiSaIvEE4peekEv.exit186 ], [ %i.jo, %bb.cx ], [ %i.jo, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i189 ], [ %i.jo, %bb.db ]
  %28 = load i8, ptr %14, align 8, !tbaa !56, !range !86, !noundef !88
  %29 = trunc nuw i8 %28 to i1
  br i1 %29, label %bb.dm, label %bb.dc

bb.dc:                                            ; preds = %_ZNSt12__shared_ptrIN4entt13basic_processIiSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit191
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.dd unwind label %bb.dh

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4)
          to label %bb.de unwind label %bb.di

bb.de:                                            ; preds = %bb.dd
  %i.kd = load ptr, ptr %17, align 8, !tbaa !61
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 299, ptr noundef %i.kd)
          to label %bb.df unwind label %bb.dj

bb.df:                                            ; preds = %bb.de
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.dg unwind label %bb.dk

bb.dg:                                            ; preds = %bb.df
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #20
  %i.ke = load ptr, ptr %17, align 8, !tbaa !61   ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.kg = icmp eq ptr %i.ke, %i.kf
  br i1 %i.kg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192: ; preds = %bb.dg
  %i.kh = load i64, ptr %i.kf, align 8, !tbaa !62
  %i.ki = add i64 %i.kh, 1
  call void @_ZdlPvm(ptr noundef %i.ke, i64 noundef %i.ki) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194: ; preds = %bb.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  %i.kj = load ptr, ptr %15, align 8, !tbaa !64   ; 3 uses
  %.not.i.i195 = icmp eq ptr %i.kj, null
  br i1 %.not.i.i195, label %_ZN7testing7MessageD2Ev.exit197, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i196

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i196: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !19
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.km = load ptr, ptr %i.kl, align 8
  call void %i.km(ptr noundef nonnull align 8 dereferenceable(128) %i.kj) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit197

_ZN7testing7MessageD2Ev.exit197:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i196
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %bb.dm

bb.dh:                                            ; preds = %bb.dc
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit203

bb.di:                                            ; preds = %bb.dd
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200

bb.dj:                                            ; preds = %bb.de
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.dk:                                            ; preds = %bb.df
  %i.kq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #20
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.pn46 = phi { ptr, i32 } [ %i.kq, %bb.dk ], [ %i.kp, %bb.dj ] ; 2 uses
  %i.kr = load ptr, ptr %17, align 8, !tbaa !61   ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.kt = icmp eq ptr %i.kr, %i.ks
  br i1 %i.kt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198: ; preds = %bb.dl
  %i.ku = load i64, ptr %i.ks, align 8, !tbaa !62
  %i.kv = add i64 %i.ku, 1
  call void @_ZdlPvm(ptr noundef %i.kr, i64 noundef %i.kv) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200: ; preds = %bb.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198, %bb.di
  %.pn46.pn = phi { ptr, i32 } [ %i.ko, %bb.di ], [ %.pn46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198 ], [ %.pn46, %bb.dl ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  %i.kw = load ptr, ptr %15, align 8, !tbaa !64   ; 3 uses
  %.not.i.i201 = icmp eq ptr %i.kw, null
  br i1 %.not.i.i201, label %_ZN7testing7MessageD2Ev.exit203, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i202

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i202: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !19
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %i.kz = load ptr, ptr %i.ky, align 8
  call void %i.kz(ptr noundef nonnull align 8 dereferenceable(128) %i.kw) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit203

_ZN7testing7MessageD2Ev.exit203:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i202, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200, %bb.dh
  %.pn46.pn.pn = phi { ptr, i32 } [ %i.kn, %bb.dh ], [ %.pn46.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200 ], [ %.pn46.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i202 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %bb.dz

bb.dm:                                            ; preds = %_ZNSt12__shared_ptrIN4entt13basic_processIiSaIvEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit191, %_ZN7testing7MessageD2Ev.exit197
  %i.la = load ptr, ptr %27, align 8, !tbaa !73   ; 4 uses
  %.not.i.i204 = icmp eq ptr %i.la, null
  br i1 %.not.i.i204, label %_ZN7testing15AssertionResultD2Ev.exit208, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !61 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 16 ; 2 uses
  %i.ld = icmp eq ptr %i.lb, %i.lc
  br i1 %i.ld, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i206, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i205

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i205: ; preds = %bb.dn
  %i.le = load i64, ptr %i.lc, align 8, !tbaa !62
  %i.lf = add i64 %i.le, 1
  call void @_ZdlPvm(ptr noundef %i.lb, i64 noundef %i.lf) #21
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i206

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i206: ; preds = %bb.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i205
  call void @_ZdlPvm(ptr noundef nonnull %i.la, i64 noundef 32) #21
  br label %_ZN7testing15AssertionResultD2Ev.exit208

_ZN7testing15AssertionResultD2Ev.exit208:         ; preds = %bb.dm, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i206
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %bb.do

bb.do:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit172, %_ZN7testing15AssertionResultD2Ev.exit126, %_ZN7testing15AssertionResultD2Ev.exit88, %_ZN7testing15AssertionResultD2Ev.exit208
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4entt13basic_processIiSaIvEEE, i64 16), ptr %1, align 8, !tbaa !19
  %i.lg = load ptr, ptr %i.c, align 8, !tbaa !65  ; 8 uses
  %.not.i.i.i.i209 = icmp eq ptr %i.lg, null
  br i1 %.not.i.i.i.i209, label %_ZN4entt8internal23compressed_pair_elementISt10shared_ptrINS_13basic_processIiSaIvEEEELm0EED2Ev.exit.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8 ; 4 uses
  %i.li = load atomic i64, ptr %i.lh acquire, align 8 ; 2 uses
  %i.lj = icmp eq i64 %i.li, 4294967297
  %i.lk = trunc i64 %i.li to i32                  ; 2 uses
  br i1 %i.lj, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  store i32 0, ptr %i.lh, align 8, !tbaa !67
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lg, i64 12
  store i32 0, ptr %i.ll, align 4, !tbaa !68
  %i.lm = load ptr, ptr %i.lg, align 8, !tbaa !19
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  %i.lo = load ptr, ptr %i.ln, align 8
  call void %i.lo(ptr noundef nonnull align 8 dereferenceable(16) %i.lg) #20, !inline_history !1
  %i.lp = load ptr, ptr %i.lg, align 8, !tbaa !19
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 24
  %i.lr = load ptr, ptr %i.lq, align 8
  call void %i.lr(ptr noundef nonnull align 8 dereferenceable(16) %i.lg) #20, !inline_history !1
  br label %_ZN4entt8internal23compressed_pair_elementISt10shared_ptrINS_13basic_processIiSaIvEEEELm0EED2Ev.exit.i

bb.dr:                                            ; preds = %bb.dp
  %i.ls = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i.i210 = icmp eq i8 %i.ls, 0
  br i1 %.not.i.i.i.i.i210, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.lt = add nsw i32 %i.lk, -1
  store i32 %i.lt, ptr %i.lh, align 8, !tbaa !69
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.dt:                                            ; preds = %bb.dr
  %i.lu = atomicrmw volatile add ptr %i.lh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.dt, %bb.ds
  %.0.i.i.i.i.i.i = phi i32 [ %i.lk, %bb.ds ], [ %i.lu, %bb.dt ]
  %i.lv = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.lv, label %bb.du, label %_ZN4entt8internal23compressed_pair_elementISt10shared_ptrINS_13basic_processIiSaIvEEEELm0EED2Ev.exit.i, !prof !70

bb.du:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lg) #20, !inline_history !71
  br label %_ZN4entt8internal23compressed_pair_elementISt10shared_ptrINS_13basic_processIiSaIvEEEELm0EED2Ev.exit.i

_ZN4entt8internal23compressed_pair_elementISt10shared_ptrINS_13basic_processIiSaIvEEEELm0EED2Ev.exit.i: ; preds = %bb.du, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.dq, %bb.do
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !72 ; 4 uses
  %.not.i.i.i1.i = icmp eq ptr %i.lx, null
  br i1 %.not.i.i.i1.i, label %_ZN4entt13basic_processIiSaIvEED2Ev.exit, label %bb.dv

bb.dv:                                            ; preds = %_ZN4entt8internal23compressed_pair_elementISt10shared_ptrINS_13basic_processIiSaIvEEEELm0EED2Ev.exit.i
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 12 ; 3 uses
  %i.lz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i2.i = icmp eq i8 %i.lz, 0
  br i1 %.not.i.i.i.i2.i, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.ma = load i32, ptr %i.ly, align 4, !tbaa !69 ; 2 uses
  %i.mb = add nsw i32 %i.ma, -1
  store i32 %i.mb, ptr %i.ly, align 4, !tbaa !69
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i

bb.dx:                                            ; preds = %bb.dv
  %i.mc = atomicrmw volatile add ptr %i.ly, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i: ; preds = %bb.dx, %bb.dw
  %.0.i.i.i.i.i4.i = phi i32 [ %i.ma, %bb.dw ], [ %i.mc, %bb.dx ]
  %i.md = icmp eq i32 %.0.i.i.i.i.i4.i, 1
  br i1 %i.md, label %bb.dy, label %_ZN4entt13basic_processIiSaIvEED2Ev.exit

bb.dy:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i
  %i.me = load ptr, ptr %i.lx, align 8, !tbaa !19
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 24
  %i.mg = load ptr, ptr %i.mf, align 8
  call void %i.mg(ptr noundef nonnull align 8 dereferenceable(16) %i.lx) #20, !inline_history !2
  br label %_ZN4entt13basic_processIiSaIvEED2Ev.exit

_ZN4entt13basic_processIiSaIvEED2Ev.exit:         ; preds = %_ZN4entt8internal23compressed_pair_elementISt10shared_ptrINS_13basic_processIiSaIvEEEELm0EED2Ev.exit.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3.i, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret void

bb.dz:                                            ; preds = %_ZN7testing7MessageD2Ev.exit203, %_ZN7testing7MessageD2Ev.exit178, %_ZN7testing7MessageD2Ev.exit132, %_ZN7testing7MessageD2Ev.exit94, %bb.m
  %.pn46.pn.pn.pn = phi { ptr, i32 } [ %.pn46.pn.pn, %_ZN7testing7MessageD2Ev.exit203 ], [ %.pn42.pn.pn, %_ZN7testing7MessageD2Ev.exit178 ], [ %.pn38.pn.pn, %_ZN7testing7MessageD2Ev.exit132 ], [ %.pn34.pn.pn, %_ZN7testing7MessageD2Ev.exit94 ], [ %i.ad, %bb.m ]
  call void @_ZN4entt13basic_processIiSaIvEED2Ev(ptr noundef nonnull align 8 dead_on_return(45) dereferenceable(45) %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  resume { ptr, i32 } %.pn46.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(41) ptr @_ZN4entt13basic_processIiSaIvEE4thenI12test_processIiEJEEERS2_DpOT0_(ptr noundef nonnull align 8 dereferenceable(41) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #22, !noalias !139 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 1, ptr %i.c, align 8, !tbaa !67, !noalias !140
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  store i32 1, ptr %i.d, align 4, !tbaa !68, !noalias !140
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceI12test_processIiESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.b, align 8, !tbaa !19, !noalias !140
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.g, i8 0, i64 25, i1 false), !noalias !140
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV12test_processIiE, i64 16), ptr %i.e, align 8, !tbaa !19, !noalias !140
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 57
  store i32 0, ptr %i.h, align 1, !noalias !140
  store ptr %i.e, ptr %i.f, align 8, !tbaa !89, !noalias !140
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62, !noalias !140
  %.not.i.i3.i.i.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i3.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i.i: ; preds = %bb.a
  store i32 2, ptr %i.d, align 4, !tbaa !69, !noalias !140
  br label %_ZSt15allocate_sharedI12test_processIiESaIvEJRKS2_EESt10shared_ptrIT_ERKT0_DpOT1_.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.j = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4, !noalias !140 ; 0 uses
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !72, !noalias !140 ; 4 uses
  %.not6.i.i.i.i.i.i.i = icmp eq ptr %.pre.i.i.i.i.i.i, null
  br i1 %.not6.i.i.i.i.i.i.i, label %_ZSt15allocate_sharedI12test_processIiESaIvEJRKS2_EESt10shared_ptrIT_ERKT0_DpOT1_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i, i64 12 ; 3 uses
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62, !noalias !140
  %.not.i7.i.i.i.i.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i7.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.k, align 4, !tbaa !69, !noalias !140 ; 2 uses
  %i.n = add nsw i32 %i.m, -1
  store i32 %i.n, ptr %i.k, align 4, !tbaa !69, !noalias !140
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.o = atomicrmw volatile add ptr %i.k, i32 -1 acq_rel, align 4, !noalias !140
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.m, %bb.c ], [ %i.o, %bb.d ]
  %i.p = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.p, label %bb.e, label %_ZSt15allocate_sharedI12test_processIiESaIvEJRKS2_EESt10shared_ptrIT_ERKT0_DpOT1_.exit

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  %i.q = load ptr, ptr %.pre.i.i.i.i.i.i, align 8, !tbaa !19, !noalias !140
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !noalias !140
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i.i.i.i.i.i) #20, !noalias !140, !inline_history !137
  br label %_ZSt15allocate_sharedI12test_processIiESaIvEJRKS2_EESt10shared_ptrIT_ERKT0_DpOT1_.exit

_ZSt15allocate_sharedI12test_processIiESaIvEJRKS2_EESt10shared_ptrIT_ERKT0_DpOT1_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.e
  store ptr %i.b, ptr %i.g, align 8, !tbaa !72, !noalias !140
  store ptr %i.e, ptr %i.a, align 8, !tbaa !90
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !65   ; 8 uses
  store ptr %i.b, ptr %i.t, align 8, !tbaa !65
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrI12test_processIiELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt15allocate_sharedI12test_processIiESaIvEJRKS2_EESt10shared_ptrIT_ERKT0_DpOT1_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.v, align 8, !tbaa !67
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !68
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !19
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #20, !inline_history !138
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #20, !inline_history !138
  br label %_ZNSt12__shared_ptrI12test_processIiELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !69
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
end_hunk_1
