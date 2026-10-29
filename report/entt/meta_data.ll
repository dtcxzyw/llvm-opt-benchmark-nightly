Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/meta_data?download=true
inline.NumInlined: 7304
inline.NumDeleted: 1709
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4entt12meta_factoryIN8MetaData4baseEE4dataITnDaXadL_ZNS2_5valueEEENS_10as_value_tEEES3_jPKc:bb.a
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !43
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #28, !inline_history !3
  br label %_ZN4entt8internal14meta_data_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !87
  %.not.i.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !115
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.q, %bb.f ], [ %i.aa, %bb.g ]
  %i.ab = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ab, label %bb.h, label %_ZN4entt8internal14meta_data_nodeD2Ev.exit, !prof !126

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #28
  br label %_ZN4entt8internal14meta_data_nodeD2Ev.exit

_ZN4entt8internal14meta_data_nodeD2Ev.exit:       ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void

bb.i:                                             ; preds = %bb.a
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #29
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt12meta_factoryIN8MetaData4baseEE6customIiJiEEES3_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_factory.112") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.entt::internal::meta_custom_node", align 8 ; 5 uses
  %4 = alloca %"class.std::shared_ptr.305", align 8 ; 6 uses
  %i.a = load atomic i8, ptr @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit, !prof !199

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #28
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt9type_infoC2IiEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #28
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIiEERKNS_9type_infoEvE8instance) #28
  br label %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit

_ZN4entt7type_idIiEERKNS_9type_infoEv.exit:       ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4entt7type_idIiEERKNS_9type_infoEvE8instance, i64 4), align 4, !tbaa !202
  store i32 %i.e, ptr %3, align 8, !tbaa !136
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.h = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #32, !noalias !809 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 1, ptr %i.i, align 8, !tbaa !124, !noalias !810
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 1, ptr %i.j, align 4, !tbaa !125, !noalias !810
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIiSaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.h, align 8, !tbaa !43, !noalias !810
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.l = load i32, ptr %2, align 4, !tbaa !115, !noalias !810
  store i32 %i.l, ptr %i.k, align 8, !tbaa !115, !noalias !810
  store ptr %i.k, ptr %i.f, align 8, !tbaa !137
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !113
  store ptr %i.h, ptr %i.m, align 8, !tbaa !113
  store ptr null, ptr %4, align 8, !tbaa !812
  invoke void @_ZN4entt8internal18basic_meta_factory6customENS0_16meta_custom_nodeE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.d unwind label %bb.q

bb.d:                                             ; preds = %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !113  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZN4entt8internal16meta_custom_nodeD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.o, align 8, !tbaa !124
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !125
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !43
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #28, !inline_history !12
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #28, !inline_history !12
  br label %_ZN4entt8internal16meta_custom_nodeD2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !87
  %.not.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !115
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i = phi i32 [ %i.r, %bb.h ], [ %i.ab, %bb.i ]
  %i.ac = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ac, label %bb.j, label %_ZN4entt8internal16meta_custom_nodeD2Ev.exit, !prof !126

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #28
  br label %_ZN4entt8internal16meta_custom_nodeD2Ev.exit

_ZN4entt8internal16meta_custom_nodeD2Ev.exit:     ; preds = %bb.d, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.j
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !113 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIiLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4entt8internal16meta_custom_nodeD2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.ae, align 8, !tbaa !124
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !125
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !43
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #28, !inline_history !808
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !43
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #28, !inline_history !808
  br label %_ZNSt12__shared_ptrIiLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !87
  %.not.i.i.i3 = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i3, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !115
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i = phi i32 [ %i.ah, %bb.n ], [ %i.ar, %bb.o ]
  %i.as = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.as, label %bb.p, label %_ZNSt12__shared_ptrIiLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !126

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #28
  br label %_ZNSt12__shared_ptrIiLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIiLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN4entt8internal16meta_custom_nodeD2Ev.exit, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void

bb.q:                                             ; preds = %_ZN4entt7type_idIiEERKNS_9type_infoEv.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4entt8internal16meta_custom_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #28
  call void @_ZNSt12__shared_ptrIiLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %i.at
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN31MetaData_CollisionAndReuse_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::allocator", align 1    ; 3 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %3 = alloca %"class.testing::Message", align 8  ; 7 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %7 = alloca %"class.testing::Message", align 8  ; 7 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"struct.testing::internal::TrueWithString", align 8 ; 16 uses
  %15 = alloca %"class.entt::meta_factory", align 8 ; 4 uses
  %16 = alloca %"class.entt::meta_factory", align 8 ; 3 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.testing::Message", align 8 ; 7 uses
  %19 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"struct.testing::internal::TrueWithString", align 8 ; 16 uses
  %22 = alloca %"class.entt::meta_factory", align 8 ; 4 uses
  %23 = alloca %"class.entt::meta_factory", align 8 ; 3 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.testing::Message", align 8 ; 7 uses
  %26 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %28 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %29 = alloca %"class.entt::meta_type", align 8  ; 5 uses
  %30 = alloca %"class.testing::Message", align 8 ; 7 uses
  %31 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %33 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %34 = alloca %"class.entt::meta_type", align 8  ; 5 uses
  %35 = alloca %"class.testing::Message", align 8 ; 7 uses
  %36 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %38 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %39 = alloca %"class.entt::meta_type", align 8  ; 5 uses
  %40 = alloca %"class.testing::Message", align 8 ; 7 uses
  %41 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !59 ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #29
  unreachable

_ZNK4entt9meta_type10fetch_nodeEv.exit.i:         ; preds = %bb.b, %bb.a
  %i.e = phi ptr [ %i.a, %bb.a ], [ %i.b, %bb.b ] ; 2 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN8MetaData5clazzEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.e) #28
  %i.g = tail call noundef ptr @_ZN4entt8internal8look_forITnDaXadL_ZNS0_20meta_type_descriptor4dataEEEEEPDaRKNS0_12meta_contextERKNS0_14meta_type_nodeEjb(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(128) %i.f, i32 noundef -284411267, i1 noundef zeroext true)
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.d, label %_ZN7testing15AssertionResultD2Ev.exit.thread

bb.d:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i
  %i.h = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !59
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.i = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %bb.g unwind label %bb.f       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #29
  unreachable

_ZN7testing15AssertionResultD2Ev.exit.thread:     ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %43 = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !59 ; 2 uses
  %.not.i.i119 = icmp eq ptr %43, null
  br i1 %.not.i.i119, label %bb.s, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i123

bb.g:                                             ; preds = %bb.d, %bb.e
  store i8 0, ptr %2, align 8, !tbaa !78
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !143
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.242, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.m = load ptr, ptr %5, align 8, !tbaa !84
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 807, ptr noundef %i.m)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #28
  %i.n = load ptr, ptr %5, align 8, !tbaa !84     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.q = load i64, ptr %i.o, align 8, !tbaa !87
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.s = load ptr, ptr %3, align 8, !tbaa !86     ; 3 uses
  %.not.i.i111 = icmp eq ptr %i.s, null
  br i1 %.not.i.i111, label %bb.q, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(128) %i.s) #28, !inline_history !0
  br label %bb.q

bb.l:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit117

bb.m:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

bb.n:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #28
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.z, %bb.o ], [ %i.y, %bb.n ] ; 2 uses
  %i.aa = load ptr, ptr %5, align 8, !tbaa !84    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %bb.p
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !87
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.x, %bb.m ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112 ], [ %.pn, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.af = load ptr, ptr %3, align 8, !tbaa !86    ; 3 uses
  %.not.i.i115 = icmp eq ptr %i.af, null
  br i1 %.not.i.i115, label %_ZN7testing7MessageD2Ev.exit117, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i116

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i116: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !43
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(128) %i.af) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit117

_ZN7testing7MessageD2Ev.exit117:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i116, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %i.w, %bb.l ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ], [ %.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i116 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.eo

bb.q:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %.pr = load ptr, ptr %i.l, align 8, !tbaa !81   ; 4 uses
  %.not.i.i118 = icmp eq ptr %.pr, null
  br i1 %.not.i.i118, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aj = load ptr, ptr %.pr, align 8, !tbaa !84  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.pr, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.r
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !87
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 32) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.en

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.en

bb.s:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit.thread
  %i.ao = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i123 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  tail call void @__clang_call_terminate(ptr %i.aq) #29
  unreachable

_ZNK4entt9meta_type10fetch_nodeEv.exit.i123:      ; preds = %bb.s, %_ZN7testing15AssertionResultD2Ev.exit.thread
  %i.ar = phi ptr [ %43, %_ZN7testing15AssertionResultD2Ev.exit.thread ], [ %i.ao, %bb.s ] ; 2 uses
  %i.as = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN8MetaData5clazzEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.ar) #28
  %i.at = tail call noundef ptr @_ZN4entt8internal8look_forITnDaXadL_ZNS0_20meta_type_descriptor4dataEEEEEPDaRKNS0_12meta_contextERKNS0_14meta_type_nodeEjb(ptr noundef nonnull align 8 dereferenceable(56) %i.ar, ptr noundef nonnull align 8 dereferenceable(128) %i.as, i32 noundef 1563008040, i1 noundef zeroext true)
  %.not.i124 = icmp eq ptr %i.at, null            ; 3 uses
  %44 = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8
  %.not.i.i.i.i.i128.a = icmp eq ptr %44, null
  %or.cond = select i1 %.not.i124, i1 %.not.i.i.i.i.i128.a, i1 false
  br i1 %or.cond, label %bb.u, label %_ZNK4entt9meta_type4dataEjb.exit129

bb.u:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i123
  %i.au = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %.critedge unwind label %bb.v  ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  tail call void @__clang_call_terminate(ptr %i.aw) #29
  unreachable

_ZNK4entt9meta_type4dataEjb.exit129:              ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i123
  %45 = zext i1 %.not.i124 to i8
  store i8 %45, ptr %6, align 8, !tbaa !78
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr null, ptr %i.ax, align 8, !tbaa !143
  br i1 %.not.i124, label %.critedge, label %46

46:                                               ; preds = %_ZNK4entt9meta_type4dataEjb.exit129
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.w unwind label %bb.aa

bb.w:                                             ; preds = %46
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.244, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.59)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.ay = load ptr, ptr %9, align 8, !tbaa !84
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 808, ptr noundef %i.ay)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %bb.y
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #28
  %i.az = load ptr, ptr %9, align 8, !tbaa !84    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %bb.z
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !87
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.be = load ptr, ptr %7, align 8, !tbaa !86    ; 3 uses
  %.not.i.i133 = icmp eq ptr %i.be, null
  br i1 %.not.i.i133, label %bb.af, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i134

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i134: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !43
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(128) %i.be) #28, !inline_history !0
  br label %bb.af

bb.aa:                                            ; preds = %46
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit141

bb.ab:                                            ; preds = %bb.w
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

bb.ac:                                            ; preds = %bb.x
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.y
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #28
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn68 = phi { ptr, i32 } [ %i.bl, %bb.ad ], [ %i.bk, %bb.ac ] ; 2 uses
  %i.bm = load ptr, ptr %9, align 8, !tbaa !84    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %bb.ae
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !87
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136, %bb.ab
  %.pn68.pn = phi { ptr, i32 } [ %i.bj, %bb.ab ], [ %.pn68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136 ], [ %.pn68, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.br = load ptr, ptr %7, align 8, !tbaa !86    ; 3 uses
  %.not.i.i139 = icmp eq ptr %i.br, null
  br i1 %.not.i.i139, label %_ZN7testing7MessageD2Ev.exit141, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !43
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(128) %i.br) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit141

_ZN7testing7MessageD2Ev.exit141:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, %bb.aa
  %.pn68.pn.pn = phi { ptr, i32 } [ %i.bi, %bb.aa ], [ %.pn68.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ], [ %.pn68.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.eo

bb.af:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i134, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %.pr315 = load ptr, ptr %i.ax, align 8, !tbaa !81 ; 4 uses
  %.not.i.i142 = icmp eq ptr %.pr315, null
  br i1 %.not.i.i142, label %_ZN7testing15AssertionResultD2Ev.exit146, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bv = load ptr, ptr %.pr315, align 8, !tbaa !84 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.pr315, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i143: ; preds = %bb.ag
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !87
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i144

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i144: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i143
  call void @_ZdlPvm(ptr noundef nonnull %.pr315, i64 noundef 32) #30
  br label %_ZN7testing15AssertionResultD2Ev.exit146

_ZN7testing15AssertionResultD2Ev.exit146:         ; preds = %bb.af, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.en

.critedge:                                        ; preds = %bb.u, %_ZNK4entt9meta_type4dataEjb.exit129
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %47 = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !59 ; 2 uses
  %.not.i.i147 = icmp eq ptr %47, null
  br i1 %.not.i.i147, label %bb.ah, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i151

bb.ah:                                            ; preds = %.critedge
  %i.ca = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i151 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  tail call void @__clang_call_terminate(ptr %i.cc) #29
  unreachable

_ZNK4entt9meta_type10fetch_nodeEv.exit.i151:      ; preds = %bb.ah, %.critedge
  %48 = phi ptr [ %47, %.critedge ], [ %i.ca, %bb.ah ] ; 2 uses
  %i.cd = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN8MetaData5clazzEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %48) #28
  %i.ce = tail call noundef ptr @_ZN4entt8internal8look_forITnDaXadL_ZNS0_20meta_type_descriptor4dataEEEEEPDaRKNS0_12meta_contextERKNS0_14meta_type_nodeEjb(ptr noundef nonnull align 8 dereferenceable(56) %48, ptr noundef nonnull align 8 dereferenceable(128) %i.cd, i32 noundef -284411267, i1 noundef zeroext true) ; 2 uses
  %.not.i152 = icmp eq ptr %i.ce, null
  %i.cf = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8
  %.not.i.i.i.i.i156 = icmp eq ptr %i.cf, null
  %or.cond326 = select i1 %.not.i152, i1 %.not.i.i.i.i.i156, i1 false
  br i1 %or.cond326, label %bb.aj, label %_ZNK4entt9meta_type4dataEjb.exit157

bb.aj:                                            ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i151
  %i.cg = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type4dataEjb.exit157 unwind label %bb.ak ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  tail call void @__clang_call_terminate(ptr %i.ci) #29
  unreachable

_ZNK4entt9meta_type4dataEjb.exit157:              ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i151, %bb.aj
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !66 ; 2 uses
  %.not.i.i158 = trunc i32 %i.ck to i1
  %i.cl = trunc i32 %i.ck to i8
  %i.cm = and i8 %i.cl, 1
  store i8 %i.cm, ptr %10, align 8, !tbaa !78
  %i.cn = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr null, ptr %i.cn, align 8, !tbaa !143
  br i1 %.not.i.i158, label %bb.ax, label %bb.al

bb.al:                                            ; preds = %_ZNK4entt9meta_type4dataEjb.exit157
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.am unwind label %bb.aq

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull @.str.245, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60)
          to label %bb.an unwind label %bb.ar

bb.an:                                            ; preds = %bb.am
  %i.co = load ptr, ptr %13, align 8, !tbaa !84
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 809, ptr noundef %i.co)
          to label %bb.ao unwind label %bb.as

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ap unwind label %bb.at

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #28
  %i.cp = load ptr, ptr %13, align 8, !tbaa !84   ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159: ; preds = %bb.ap
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !87
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.cu = load ptr, ptr %11, align 8, !tbaa !86   ; 3 uses
  %.not.i.i162 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i162, label %bb.av, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i163

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i163: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !43
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(128) %i.cu) #28, !inline_history !0
  br label %bb.av

bb.aq:                                            ; preds = %bb.al
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit170

bb.ar:                                            ; preds = %bb.am
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167

bb.as:                                            ; preds = %bb.an
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.at:                                            ; preds = %bb.ao
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #28
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.pn72 = phi { ptr, i32 } [ %i.db, %bb.at ], [ %i.da, %bb.as ] ; 2 uses
  %i.dc = load ptr, ptr %13, align 8, !tbaa !84   ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165: ; preds = %bb.au
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !87
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.dg) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165, %bb.ar
  %.pn72.pn = phi { ptr, i32 } [ %i.cz, %bb.ar ], [ %.pn72, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165 ], [ %.pn72, %bb.au ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.dh = load ptr, ptr %11, align 8, !tbaa !86   ; 3 uses
  %.not.i.i168 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i168, label %_ZN7testing7MessageD2Ev.exit170, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i169

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i169: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !43
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(128) %i.dh) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit170

_ZN7testing7MessageD2Ev.exit170:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i169, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, %bb.aq
  %.pn72.pn.pn = phi { ptr, i32 } [ %i.cy, %bb.aq ], [ %.pn72.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167 ], [ %.pn72.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i169 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.eo

bb.av:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i163, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %.pr318 = load ptr, ptr %i.cn, align 8, !tbaa !81 ; 4 uses
  %.not.i.i171 = icmp eq ptr %.pr318, null
  br i1 %.not.i.i171, label %_ZN7testing15AssertionResultD2Ev.exit175.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dl = load ptr, ptr %.pr318, align 8, !tbaa !84 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.pr318, i64 16 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i172: ; preds = %bb.aw
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !87
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i173

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i173: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i172
  call void @_ZdlPvm(ptr noundef nonnull %.pr318, i64 noundef 32) #30
  br label %_ZN7testing15AssertionResultD2Ev.exit175.thread

_ZN7testing15AssertionResultD2Ev.exit175.thread:  ; preds = %bb.av, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i173
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.en

bb.ax:                                            ; preds = %_ZNK4entt9meta_type4dataEjb.exit157
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.dq = getelementptr inbounds nuw i8, ptr %14, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, i8 0, i64 16, i1 false)
  %i.dr = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  store ptr %i.dr, ptr %14, align 8, !tbaa !211
  %i.ds = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i64 0, ptr %i.ds, align 8, !tbaa !212
  %i.dt = invoke noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
          to label %bb.ay unwind label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  br i1 %i.dt, label %bb.az, label %bb.by

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  call void @_ZN4entt12meta_factoryIN8MetaData5clazzEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %15) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  call void @_ZN4entt12meta_factoryIN8MetaData5clazzEE4dataITnDaXadL_ZNS2_1iEEENS_10as_value_tEEES3_jPKc(ptr dead_on_unwind nonnull writable sret(%"class.entt::meta_factory") align 8 %16, ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef -284411267, ptr noundef null) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.by

bb.ba:                                            ; preds = %bb.ax
  %i.du = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  %i.dw = extractvalue { ptr, i32 } %i.du, 1
  %i.dx = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #28
  %i.dy = icmp eq i32 %i.dw, %i.dx
  %i.dz = call ptr @__cxa_begin_catch(ptr %i.dv) #28 ; 3 uses
  br i1 %i.dy, label %bb.bb, label %bb.bh

bb.bb:                                            ; preds = %bb.ba
  %i.ea = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.247)
          to label %bb.bc unwind label %bb.bj     ; 0 uses

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  %i.eb = load ptr, ptr %i.dz, align 8, !tbaa !43
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 -8
end_hunk_0
begin_hunk_1_@_ZN31MetaData_CollisionAndReuse_Test8TestBodyEv:bb.a
  br label %bb.ea

bb.dv:                                            ; preds = %bb.dq
  %i.lb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit244

bb.dw:                                            ; preds = %bb.dr
  %i.lc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241

bb.dx:                                            ; preds = %bb.ds
  %i.ld = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dt
  %i.le = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #28
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %.pn102 = phi { ptr, i32 } [ %i.le, %bb.dy ], [ %i.ld, %bb.dx ] ; 2 uses
  %i.lf = load ptr, ptr %37, align 8, !tbaa !84   ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 2 uses
  %i.lh = icmp eq ptr %i.lf, %i.lg
  br i1 %i.lh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239: ; preds = %bb.dz
  %i.li = load i64, ptr %i.lg, align 8, !tbaa !87
  %i.lj = add i64 %i.li, 1
  call void @_ZdlPvm(ptr noundef %i.lf, i64 noundef %i.lj) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241: ; preds = %bb.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239, %bb.dw
  %.pn102.pn = phi { ptr, i32 } [ %i.lc, %bb.dw ], [ %.pn102, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239 ], [ %.pn102, %bb.dz ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28
  %i.lk = load ptr, ptr %35, align 8, !tbaa !86   ; 3 uses
  %.not.i.i242 = icmp eq ptr %i.lk, null
  br i1 %.not.i.i242, label %_ZN7testing7MessageD2Ev.exit244, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i243

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i243: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !43
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %i.ln = load ptr, ptr %i.lm, align 8
  call void %i.ln(ptr noundef nonnull align 8 dereferenceable(128) %i.lk) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit244

_ZN7testing7MessageD2Ev.exit244:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i243, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, %bb.dv
  %.pn102.pn.pn = phi { ptr, i32 } [ %i.lb, %bb.dv ], [ %.pn102.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241 ], [ %.pn102.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i243 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  br label %bb.eo

bb.ea:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i237, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  br label %bb.en

bb.eb:                                            ; preds = %bb.dp
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #28
  %i.lo = call { ptr, ptr } @_ZN4entt7resolveIN8MetaData5clazzEEENS_9meta_typeEv() #28 ; 2 uses
  %i.lp = extractvalue { ptr, ptr } %i.lo, 0
  store ptr %i.lp, ptr %39, align 8
  %i.lq = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.lr = extractvalue { ptr, ptr } %i.lo, 1
  store ptr %i.lr, ptr %i.lq, align 8
  %i.ls = call { ptr, ptr } @_ZNK4entt9meta_type4dataEjb(ptr noundef nonnull align 8 dereferenceable(16) %39, i32 noundef -284411267, i1 noundef zeroext true)
  %i.lt = extractvalue { ptr, ptr } %i.ls, 0
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %i.lv = load i32, ptr %i.lu, align 8, !tbaa !66
  %.not.i.i245 = trunc i32 %i.lv to i1            ; 2 uses
  %i.lw = xor i1 %.not.i.i245, true
  %i.lx = zext i1 %i.lw to i8
  store i8 %i.lx, ptr %38, align 8, !tbaa !78
  %i.ly = getelementptr inbounds nuw i8, ptr %38, i64 8
  store ptr null, ptr %i.ly, align 8, !tbaa !143
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #28
  br i1 %.not.i.i245, label %bb.ec, label %bb.em

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %40)
          to label %bb.ed unwind label %bb.eh

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #28
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %42, ptr noundef nonnull align 8 dereferenceable(16) %38, ptr noundef nonnull @.str.245, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.59)
          to label %bb.ee unwind label %bb.ei

bb.ee:                                            ; preds = %bb.ed
  %i.lz = load ptr, ptr %42, align 8, !tbaa !84
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %41, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 816, ptr noundef %i.lz)
          to label %bb.ef unwind label %bb.ej

bb.ef:                                            ; preds = %bb.ee
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef nonnull align 8 dereferenceable(8) %40)
          to label %bb.eg unwind label %bb.ek

bb.eg:                                            ; preds = %bb.ef
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %41) #28
  %i.ma = load ptr, ptr %42, align 8, !tbaa !84   ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.mc = icmp eq ptr %i.ma, %i.mb
  br i1 %i.mc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246: ; preds = %bb.eg
  %i.md = load i64, ptr %i.mb, align 8, !tbaa !87
  %i.me = add i64 %i.md, 1
  call void @_ZdlPvm(ptr noundef %i.ma, i64 noundef %i.me) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248: ; preds = %bb.eg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #28
  %i.mf = load ptr, ptr %40, align 8, !tbaa !86   ; 3 uses
  %.not.i.i249 = icmp eq ptr %i.mf, null
  br i1 %.not.i.i249, label %_ZN7testing7MessageD2Ev.exit251, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i250

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i250: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !43
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  %i.mi = load ptr, ptr %i.mh, align 8
  call void %i.mi(ptr noundef nonnull align 8 dereferenceable(128) %i.mf) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit251

_ZN7testing7MessageD2Ev.exit251:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i250
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #28
  br label %bb.em

bb.eh:                                            ; preds = %bb.ec
  %i.mj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit257

bb.ei:                                            ; preds = %bb.ed
  %i.mk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254

bb.ej:                                            ; preds = %bb.ee
  %i.ml = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.ek:                                            ; preds = %bb.ef
  %i.mm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %41) #28
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %.pn106 = phi { ptr, i32 } [ %i.mm, %bb.ek ], [ %i.ml, %bb.ej ] ; 2 uses
  %i.mn = load ptr, ptr %42, align 8, !tbaa !84   ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.mp = icmp eq ptr %i.mn, %i.mo
  br i1 %i.mp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252: ; preds = %bb.el
  %i.mq = load i64, ptr %i.mo, align 8, !tbaa !87
  %i.mr = add i64 %i.mq, 1
  call void @_ZdlPvm(ptr noundef %i.mn, i64 noundef %i.mr) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254: ; preds = %bb.el, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252, %bb.ei
  %.pn106.pn = phi { ptr, i32 } [ %i.mk, %bb.ei ], [ %.pn106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252 ], [ %.pn106, %bb.el ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #28
  %i.ms = load ptr, ptr %40, align 8, !tbaa !86   ; 3 uses
  %.not.i.i255 = icmp eq ptr %i.ms, null
  br i1 %.not.i.i255, label %_ZN7testing7MessageD2Ev.exit257, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i256

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i256: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !43
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.mv = load ptr, ptr %i.mu, align 8
  call void %i.mv(ptr noundef nonnull align 8 dereferenceable(128) %i.ms) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit257

_ZN7testing7MessageD2Ev.exit257:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i256, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, %bb.eh
  %.pn106.pn.pn = phi { ptr, i32 } [ %i.mj, %bb.eh ], [ %.pn106.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254 ], [ %.pn106.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i256 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %38) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  br label %bb.eo

bb.em:                                            ; preds = %bb.eb, %_ZN7testing7MessageD2Ev.exit251
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %38) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  br label %bb.en

bb.en:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit146, %_ZN7testing15AssertionResultD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %bb.ea, %bb.do, %_ZN7testing15AssertionResultD2Ev.exit175.thread, %_ZN7testing8internal14TrueWithStringD2Ev.exit217, %_ZN7testing8internal14TrueWithStringD2Ev.exit, %bb.em
  ret void

bb.eo:                                            ; preds = %_ZN7testing7MessageD2Ev.exit257, %_ZN7testing7MessageD2Ev.exit244, %_ZN7testing7MessageD2Ev.exit232, %_ZN7testing8internal14TrueWithStringD2Ev.exit220, %_ZN7testing8internal14TrueWithStringD2Ev.exit196, %_ZN7testing7MessageD2Ev.exit170, %_ZN7testing7MessageD2Ev.exit141, %_ZN7testing7MessageD2Ev.exit117
  %.pn106.pn.pn.pn = phi { ptr, i32 } [ %.pn106.pn.pn, %_ZN7testing7MessageD2Ev.exit257 ], [ %.pn102.pn.pn, %_ZN7testing7MessageD2Ev.exit244 ], [ %.pn98.pn.pn, %_ZN7testing7MessageD2Ev.exit232 ], [ %.pn93.pn.pn.pn, %_ZN7testing8internal14TrueWithStringD2Ev.exit220 ], [ %.pn82.pn.pn.pn, %_ZN7testing8internal14TrueWithStringD2Ev.exit196 ], [ %.pn72.pn.pn, %_ZN7testing7MessageD2Ev.exit170 ], [ %.pn68.pn.pn, %_ZN7testing7MessageD2Ev.exit141 ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit117 ]
  resume { ptr, i32 } %.pn106.pn.pn.pn

bb.ep:                                            ; preds = %bb.cq, %bb.cl, %bb.bn, %bb.bi
  %i.mw = landingpad { ptr, i32 }
          catch ptr null
  %i.mx = extractvalue { ptr, i32 } %i.mw, 0
  call void @__clang_call_terminate(ptr %i.mx) #29
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !212
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28
  %i.d = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef %i.b, ptr noundef nonnull %1, i64 noundef %i.c)
  ret ptr %i.d
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal11GetTypeNameB5cxx11ERKSt9type_info(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !214  ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !87
  %i.e = icmp eq i8 %i.d, 42
  %.idx.i = zext i1 %i.e to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 0, ptr %i.a, align 4, !tbaa !115
  %i.g = call ptr @__cxa_demangle(ptr noundef nonnull %i.f, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.h = load i32, ptr %i.a, align 4, !tbaa !115
  %i.i = icmp eq i32 %i.h, 0
  %i.j = select i1 %i.i, ptr %i.g, ptr %i.f       ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !211
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.253) #33
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.m = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #28 ; 8 uses
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %bb.b
  %i.o = icmp slt i64 %i.m, 0
  br i1 %i.o, label %.noexc.i, label %bb.d

.noexc.i:                                         ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.254) #33
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw i64 %i.m, 1                      ; 2 uses
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !126

.noexc11.i:                                       ; preds = %bb.d
  call void @_ZSt17__throw_bad_allocv() #33
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.d
  %i.r = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #32 ; 2 uses
  store ptr %i.r, ptr %2, align 8, !tbaa !84
  store i64 %i.m, ptr %i.k, align 8, !tbaa !87
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.b
  %i.s = phi ptr [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.k, %bb.b ] ; 3 uses
  switch i64 %i.m, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.t = load i8, ptr %i.j, align 1, !tbaa !87
  store i8 %i.t, ptr %i.s, align 1, !tbaa !87
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull align 1 %i.j, i64 %i.m, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.m, ptr %i.u, align 8, !tbaa !212
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.m
  store i8 0, ptr %i.v, align 1, !tbaa !87
  call void @free(ptr noundef %i.g) #28
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.w, ptr %3, align 8, !tbaa !211
  %i.x = load ptr, ptr %2, align 8, !tbaa !84     ; 2 uses
  %i.y = load i64, ptr %i.u, align 8, !tbaa !212  ; 8 uses
  %i.z = icmp ugt i64 %i.y, 15
  br i1 %i.z, label %bb.h, label %._crit_edge.i.i13

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp slt i64 %i.y, 0
  br i1 %i.aa, label %.noexc.i15, label %bb.i

.noexc.i15:                                       ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.254) #33
          to label %.noexc16 unwind label %bb.n

.noexc16:                                         ; preds = %.noexc.i15
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.ab = add nuw i64 %i.y, 1                     ; 2 uses
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i14, !prof !126

.noexc6.i:                                        ; preds = %bb.i
  invoke void @_ZSt17__throw_bad_allocv() #33
          to label %.noexc17 unwind label %bb.n

.noexc17:                                         ; preds = %.noexc6.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i14: ; preds = %bb.i
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #32
          to label %.noexc18 unwind label %bb.n   ; 2 uses

.noexc18:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i14
  store ptr %i.ad, ptr %3, align 8, !tbaa !84
  store i64 %i.y, ptr %i.w, align 8, !tbaa !87
  br label %._crit_edge.i.i13

._crit_edge.i.i13:                                ; preds = %.noexc18, %bb.g
  %i.ae = phi ptr [ %i.ad, %.noexc18 ], [ %i.w, %bb.g ] ; 3 uses
  switch i64 %i.y, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i13
  %i.af = load i8, ptr %i.x, align 1, !tbaa !87
  store i8 %i.af, ptr %i.ae, align 1, !tbaa !87
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i13
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr align 1 %i.x, i64 %i.y, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i13
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.y, ptr %i.ag, align 8, !tbaa !212
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.y
  store i8 0, ptr %i.ah, align 1, !tbaa !87
  invoke void @_ZN7testing8internal31CanonicalizeForStdLibVersioningENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ai = load ptr, ptr %3, align 8, !tbaa !84    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.w
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.ak = load i64, ptr %i.w, align 8, !tbaa !87
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.am = load ptr, ptr %2, align 8, !tbaa !84    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.k
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ao = load i64, ptr %i.k, align 8, !tbaa !87
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i14, %.noexc6.i, %.noexc.i15
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

bb.o:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
end_hunk_1
