Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/Demosaic?download=true
inline.NumInlined: 6129
inline.NumDeleted: 2278
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 75
begin_hunk_0_@_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE:bb.a
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %bb.f, label %_ZN3tev5Latch9countDownEv.exit.thread

bb.f:                                             ; preds = %.noexc.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !90   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !91   ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not12.i.i.i.i, label %_ZN3tev5Latch9countDownEv.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 33
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  br label %bb.g

bb.g:                                             ; preds = %.noexc2.i, %.lr.ph.i.i.i.i
  %.sroa.09.013.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i ], [ %i.ae, %.noexc2.i ] ; 2 uses
  %i.t = load ptr, ptr %.sroa.09.013.i.i.i.i, align 8, !tbaa !94 ; 2 uses
  %i.u = load i8, ptr %i.p, align 8               ; 2 uses
  %i.v = trunc i8 %i.u to i1                      ; 2 uses
  %i.w = load ptr, ptr %i.q, align 8
  %i.x = select i1 %i.v, ptr %i.w, ptr %i.r
  %i.y = load i64, ptr %i.s, align 8
  %i.z = lshr i8 %i.u, 1
  %i.aa = zext nneg i8 %i.z to i64
  %i.ab = select i1 %i.v, i64 %i.y, i64 %i.aa
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !64
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr %i.x, i64 %i.ab, i32 noundef 8, ptr nonnull @.str.3, i64 36)
          to label %.noexc2.i unwind label %.loopexit.i, !inline_history !0

.noexc2.i:                                        ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ae, %i.o
  br i1 %.not.i.i.i.i, label %_ZN3tev5Latch9countDownEv.exit, label %bb.g

.loopexit.i:                                      ; preds = %bb.g
  %lpad.loopexit.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

.loopexit.split-lp.i:                             ; preds = %bb.e
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.af = extractvalue { ptr, i32 } %lpad.phi.i, 0
  tail call void @__clang_call_terminate(ptr %i.af) #34
  unreachable

_ZN3tev5Latch9countDownEv.exit:                   ; preds = %.noexc2.i, %bb.d
  %i.ag = icmp slt i32 %i.f, 2
  br i1 %i.ag, label %_ZN3tev5Latch9countDownEv.exit.thread, label %bb.i

_ZN3tev5Latch9countDownEv.exit.thread:            ; preds = %bb.f, %.noexc.i, %_ZN3tev5Latch9countDownEv.exit
  store ptr null, ptr %0, align 8, !tbaa !96
  br label %bb.i

bb.i:                                             ; preds = %_ZN3tev5Latch9countDownEv.exit.thread, %_ZN3tev5Latch9countDownEv.exit
  %i.ah = phi i1 [ false, %_ZN3tev5Latch9countDownEv.exit.thread ], [ true, %_ZN3tev5Latch9countDownEv.exit ]
  ret i1 %i.ah

bb.j:                                             ; preds = %bb.b
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #34
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !96
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !78   ; 7 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !89
  %i.e = and i32 %i.d, 8
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit

bb.c:                                             ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !90   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !91   ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not12.i.i.i, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 33
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  br label %bb.d

bb.d:                                             ; preds = %.noexc1, %.lr.ph.i.i.i
  %.sroa.09.013.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %i.y, %.noexc1 ] ; 2 uses
  %i.n = load ptr, ptr %.sroa.09.013.i.i.i, align 8, !tbaa !94 ; 2 uses
  %i.o = load i8, ptr %i.j, align 8               ; 2 uses
  %i.p = trunc i8 %i.o to i1                      ; 2 uses
  %i.q = load ptr, ptr %i.k, align 8
  %i.r = select i1 %i.p, ptr %i.q, ptr %i.l
  %i.s = load i64, ptr %i.m, align 8
  %i.t = lshr i8 %i.o, 1
  %i.u = zext nneg i8 %i.t to i64
  %i.v = select i1 %i.p, i64 %i.s, i64 %i.u
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !64
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr %i.r, i64 %i.v, i32 noundef 8, ptr nonnull @.str.89, i64 39)
          to label %.noexc1 unwind label %.loopexit, !inline_history !0

.noexc1:                                          ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %i.i
  br i1 %.not.i.i.i, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, label %bb.d

_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit: ; preds = %.noexc1, %bb.c, %.noexc, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !71  ; 5 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = atomicrmw add ptr %i.ab, i64 -1 acq_rel, align 8
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.f, label %_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(24) %i.aa) #33, !inline_history !3
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aa) #33
  br label %_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit: ; preds = %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, %bb.e, %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #33
  ret void

.loopexit:                                        ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

.loopexit.split-lp:                               ; preds = %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ai = extractvalue { ptr, i32 } %lpad.phi, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #34
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEi(ptr dead_on_unwind writable sret(%"class.tev::Task") align 8 %0, ptr nofree noundef readonly byval(%"class.tev::ChannelView") align 8 captures(none) %1, ptr nofree noundef align 8 dereferenceable(144) %2, ptr nofree readonly captures(none) %3, i64 %4, i64 %5, i32 noundef %6) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
.from.:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %7 = alloca %"struct.std::__1::__exception_guard_exceptions.205", align 8 ; 8 uses
  %8 = alloca %"struct.std::__1::__exception_guard_exceptions.198", align 8 ; 6 uses
  %9 = alloca %"class.std::exception_ptr", align 8 ; 6 uses
  %10 = alloca %"class.std::__1::vector<std::__1::vector<std::__1::vector<ChannelSamples>>>::__destroy_vector", align 8 ; 4 uses
  %11 = alloca %"class.std::__1::vector<std::__1::vector<std::__1::vector<ChannelSamples>>>::__destroy_vector", align 8 ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %12 = alloca %"struct.std::__1::__exception_guard_exceptions.205", align 8 ; 8 uses
  %13 = alloca %"struct.std::__1::__exception_guard_exceptions.198", align 8 ; 6 uses
  %14 = alloca %"class.std::__1::future", align 8 ; 6 uses
  %15 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %16 = alloca %class.anon.129, align 8           ; 8 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(448) ptr @_Znwm(i64 noundef 448) #31 ; 53 uses
  store ptr @_ZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEi.resume, ptr %i.c, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_ZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEi.destroy, ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 6 uses
  %.reload.addr734 = getelementptr inbounds nuw i8, ptr %i.c, i64 208 ; 14 uses
  %.reload.addr737 = getelementptr inbounds nuw i8, ptr %i.c, i64 184 ; 2 uses
  %.reload.addr738 = getelementptr inbounds nuw i8, ptr %i.c, i64 272 ; 11 uses
  %.reload.addr739 = getelementptr inbounds nuw i8, ptr %i.c, i64 296 ; 8 uses
  %.reload.addr740 = getelementptr inbounds nuw i8, ptr %i.c, i64 320 ; 7 uses
  %.reload.addr741 = getelementptr inbounds nuw i8, ptr %i.c, i64 344 ; 6 uses
  %.reload.addr742 = getelementptr inbounds nuw i8, ptr %i.c, i64 360 ; 2 uses
  %.reload.addr743 = getelementptr inbounds nuw i8, ptr %i.c, i64 376 ; 2 uses
  %.reload.addr749 = getelementptr inbounds nuw i8, ptr %i.c, i64 416 ; 3 uses
  %.reload.addr750 = getelementptr inbounds nuw i8, ptr %i.c, i64 424 ; 6 uses
  %.reload.addr751 = getelementptr inbounds nuw i8, ptr %i.c, i64 392 ; 2 uses
  %.reload.addr752 = getelementptr inbounds nuw i8, ptr %i.c, i64 400 ; 4 uses
  %.reload.addr753 = getelementptr inbounds nuw i8, ptr %i.c, i64 408 ; 4 uses
  %.reload.addr754 = getelementptr inbounds nuw i8, ptr %i.c, i64 432 ; 2 uses
  %.reload.addr755 = getelementptr inbounds nuw i8, ptr %i.c, i64 436 ; 2 uses
  %.reload.addr756 = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr737, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !100
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !60   ; 2 uses
  %i.f = icmp ugt i64 %i.e, 5
  br i1 %i.f, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.from.
  %i.g = load ptr, ptr %2, align 8, !tbaa !61
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !62
  store ptr %i.g, ptr %.reload.addr, align 8, !tbaa !61
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 %i.e, ptr %i.j, align 8, !tbaa !60
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %i.i, ptr %i.k, align 8, !tbaa !62
  store i64 5, ptr %i.d, align 8, !tbaa !60
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.l, ptr %2, align 8, !tbaa !61
  store i64 0, ptr %i.h, align 8, !tbaa !62
  br label %_ZN3tev16MultiChannelViewIfEC2EOS1_.exit

bb.b:                                             ; preds = %.from.
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 5, ptr %i.m, align 8, !tbaa !60
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  store ptr %i.n, ptr %.reload.addr, align 8, !tbaa !61
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !62   ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18uninitialized_moveIvS6_TnNS2_9enable_ifIXaasr29is_explicitly_move_insertableIT0_EE5valueoontsr3std7is_sameIT_NS8_23strong_exception_policyEEE5valuesr18relocate_with_moveISB_EE5valueEbE4typeELb1EEEPS6_SG_SG_SG_.exit.i.i.i.i, label %.split8.i.i.i.i.i.i.i

.split8.i.i.i.i.i.i.i:                            ; preds = %bb.b
  %.idx.i.i.i.i = mul nsw i64 %i.p, 24
  %i.q = load ptr, ptr %2, align 8, !tbaa !61
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr align 8 %i.q, i64 %.idx.i.i.i.i, i1 false)
  br label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18uninitialized_moveIvS6_TnNS2_9enable_ifIXaasr29is_explicitly_move_insertableIT0_EE5valueoontsr3std7is_sameIT_NS8_23strong_exception_policyEEE5valuesr18relocate_with_moveISB_EE5valueEbE4typeELb1EEEPS6_SG_SG_SG_.exit.i.i.i.i

_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18uninitialized_moveIvS6_TnNS2_9enable_ifIXaasr29is_explicitly_move_insertableIT0_EE5valueoontsr3std7is_sameIT_NS8_23strong_exception_policyEEE5valuesr18relocate_with_moveISB_EE5valueEbE4typeELb1EEEPS6_SG_SG_SG_.exit.i.i.i.i: ; preds = %.split8.i.i.i.i.i.i.i, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %i.p, ptr %i.r, align 8, !tbaa !62
  br label %_ZN3tev16MultiChannelViewIfEC2EOS1_.exit

_ZN3tev16MultiChannelViewIfEC2EOS1_.exit:         ; preds = %bb.a, %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18uninitialized_moveIvS6_TnNS2_9enable_ifIXaasr29is_explicitly_move_insertableIT0_EE5valueoontsr3std7is_sameIT_NS8_23strong_exception_policyEEE5valuesr18relocate_with_moveISB_EE5valueEbE4typeELb1EEEPS6_SG_SG_SG_.exit.i.i.i.i
  store i64 %5, ptr %.reload.addr750, align 8, !tbaa !55
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr756)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %_ZN3tev16MultiChannelViewIfEC2EOS1_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !513)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !514)
  %i.s = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #32
          to label %bb.c unwind label %.body.from.728 ; 5 uses

.body.from.728:                                   ; preds = %.noexc
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr756) #33
  br label %.body

bb.c:                                             ; preds = %.noexc
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false), !noalias !515
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.s, align 8, !tbaa !64, !noalias !515
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false), !noalias !515
  store i32 2, ptr %i.x, align 8, !tbaa !66, !noalias !515
  store ptr %i.w, ptr %i.u, align 8, !tbaa !70, !alias.scope !516
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  store ptr %i.s, ptr %i.y, align 8, !tbaa !71, !alias.scope !516
  tail call void @llvm.experimental.noalias.scope.decl(metadata !517)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33, !noalias !517
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future") align 8 %14, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr756)
          to label %bb.d unwind label %bb.f, !noalias !517

bb.d:                                             ; preds = %bb.c
  store ptr %i.c, ptr %0, align 8, !tbaa !72, !alias.scope !517
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %14, align 8, !tbaa !75, !noalias !517
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !75, !alias.scope !517
  store ptr null, ptr %14, align 8, !tbaa !75, !noalias !517
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !71, !noalias !517 ; 2 uses
  %i.ad = load <2 x ptr>, ptr %i.u, align 8, !tbaa !72, !noalias !517
  store <2 x ptr> %i.ad, ptr %i.ab, align 8, !tbaa !72, !alias.scope !517
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = atomicrmw add ptr %i.ae, i64 1 monotonic, align 8, !noalias !517 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #34, !noalias !517
  unreachable

.body.from.:                                      ; preds = %_ZN3tev16MultiChannelViewIfEC2EOS1_.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.d, %bb.e
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #33, !noalias !517
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33, !noalias !517
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %.sroa.0.0.copyload.i = load i64, ptr %i.aj, align 8, !tbaa !55 ; 4 uses
  %i.ak = load ptr, ptr %.reload.addr, align 8, !tbaa !61
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.al, align 8, !tbaa !55
  %.not.lcssa.i = icmp eq i64 %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i.i
  br i1 %.not.lcssa.i, label %bb.k, label %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit, !prof !101

_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit: ; preds = %bb.g
  %i.am = call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33
  store ptr @.str.36, ptr %.reload.addr734, align 16, !tbaa !55, !noalias !518
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  store i32 87, ptr %i.an, align 16, !tbaa !55, !noalias !518
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  store i32 98, ptr %i.ao, align 16, !tbaa !55, !noalias !518
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  store ptr @.str.37, ptr %i.ap, align 16, !tbaa !55, !noalias !518
  invoke void @_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %15, ptr nonnull @.str.38, i64 65, i64 49708, ptr nonnull %.reload.addr734)
          to label %bb.h unwind label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread

bb.h:                                             ; preds = %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit
  invoke void @_ZNSt13runtime_errorC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.am, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #35
          to label %bb.bw unwind label %.thread759

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread: ; preds = %_ZNKSt3__115source_location13function_nameB8ne180100Ev.exit
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.712.sink.split

bb.j:                                             ; preds = %bb.h
  %i.ar = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.as = load i8, ptr %15, align 8
  %i.at = trunc i8 %i.as to i1
  br i1 %i.at, label %.split, label %.from.712.sink.split

.thread759:                                       ; preds = %bb.i
  %i.au = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.av = load i8, ptr %15, align 8
  %i.aw = trunc i8 %i.av to i1
  br i1 %i.aw, label %.split, label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit709

.split:                                           ; preds = %.thread759, %bb.j
  %i.ax = phi { ptr, i32 } [ %i.au, %.thread759 ], [ %i.ar, %bb.j ] ; 2 uses
  %.076761 = phi i1 [ false, %.thread759 ], [ true, %bb.j ]
  %i.ay = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !55
  %i.ba = load i64, ptr %15, align 8
  %i.bb = and i64 %i.ba, -2
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bb) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  br i1 %.076761, label %.from.712, label %.from..split713

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit709: ; preds = %.thread759
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  br label %.from..split713

.from.712.sink.split:                             ; preds = %bb.j, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread
  %.pn87237.ph = phi { ptr, i32 } [ %i.aq, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread ], [ %i.ar, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  br label %.from.712

.from.712:                                        ; preds = %.from.712.sink.split, %.split
  %.pn87237 = phi { ptr, i32 } [ %i.ax, %.split ], [ %.pn87237.ph, %.from.712.sink.split ]
  call void @__cxa_free_exception(ptr %i.am) #33
  br label %.from..split713

bb.k:                                             ; preds = %bb.g
  store i64 %.sroa.0.0.copyload.i, ptr %.reload.addr749, align 8
  %i.bc = trunc i64 %.sroa.0.0.copyload.i to i32
  store i32 %i.bc, ptr %.reload.addr755, align 4, !tbaa !76
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 420
  %i.be = lshr i64 %.sroa.0.0.copyload.i, 32
  %i.bf = trunc nuw i64 %i.be to i32
  store i32 %i.bf, ptr %.reload.addr754, align 8, !tbaa !76
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 428 ; 4 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !76 ; 4 uses
  %i.bi = load i32, ptr %.reload.addr750, align 8, !tbaa !76 ; 4 uses
  %i.bj = call i32 @llvm.smax.i32(i32 %i.bh, i32 %i.bi) ; 5 uses
  %i.bk = sext i32 %i.bh to i64                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr738, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  store ptr %.reload.addr738, ptr %13, align 8, !tbaa !127, !alias.scope !519
  %i.bl = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i8 0, ptr %i.bl, align 8, !tbaa !131, !alias.scope !519
  %i.bm = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #32
          to label %bb.l unwind label %.body108.from. ; 3 uses

.body108.from.:                                   ; preds = %bb.k
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  call fastcc void @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIZN3tevL15generalDemosaicENS2_11ChannelViewIKfEENS2_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE14ChannelSamplesNS_9allocatorISE_EEE16__destroy_vectorEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %13) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  br label %.from..split713

bb.l:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 288 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 280 ; 6 uses
  store ptr %i.bm, ptr %.reload.addr738, align 8, !tbaa !136
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 72 ; 2 uses
  store ptr %i.bq, ptr %i.bo, align 8, !tbaa !137
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bm, i8 0, i64 72, i1 false)
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !138
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  %i.br = sext i32 %i.bi to i64                   ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 304 ; 7 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 312 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr739, i8 0, i64 24, i1 false)
  store ptr %.reload.addr739, ptr %.reload.addr734, align 8, !tbaa !140, !alias.scope !520
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 216 ; 4 uses
  store i8 0, ptr %i.bu, align 8, !tbaa !143, !alias.scope !520
  %.not.i110 = icmp eq i32 %i.bi, 0
  br i1 %.not.i110, label %bb.v, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = icmp slt i32 %i.bi, 0
  br i1 %i.bv, label %bb.n, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_6vectorIZN3tevL15generalDemosaicENS3_11ChannelViewIKfEENS3_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE14ChannelSamplesNS1_ISF_EEEEEEEEDaRT_m.exit.i.i

bb.n:                                             ; preds = %bb.m
  invoke fastcc void @_ZNKSt3__16vectorINS0_IZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE14ChannelSamplesNS_9allocatorISD_EEEENSE_ISG_EEE20__throw_length_errorB8ne180100Ev() #35
          to label %.noexc.i unwind label %.body.i.from.

.noexc.i:                                         ; preds = %bb.n
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_6vectorIZN3tevL15generalDemosaicENS3_11ChannelViewIKfEENS3_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE14ChannelSamplesNS1_ISF_EEEEEEEEDaRT_m.exit.i.i: ; preds = %bb.m
  %i.bw = mul nuw nsw i64 %i.br, 24               ; 4 uses
  %i.bx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #32
          to label %bb.o unwind label %.body.i.from. ; 6 uses

bb.o:                                             ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_6vectorIZN3tevL15generalDemosaicENS3_11ChannelViewIKfEENS3_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE14ChannelSamplesNS1_ISF_EEEEEEEEDaRT_m.exit.i.i
  store ptr %i.bx, ptr %.reload.addr739, align 8, !tbaa !147
  store ptr %i.bx, ptr %i.bs, align 8, !tbaa !148
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %i.bx, i64 %i.br
  store ptr %i.by, ptr %i.bt, align 8, !tbaa !127
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bw ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cc = load ptr, ptr %i.bp, align 8, !tbaa !138
  %i.cd = load ptr, ptr %.reload.addr738, align 8, !tbaa !136
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %.lr.ph.i.i.us.from..lr.ph.i.i.us.preheader, label %.lr.ph.i.i

.lr.ph.i.i.us.from..lr.ph.i.i.us.preheader:       ; preds = %bb.o
  %i.cf = add nsw i64 %i.bw, -24
  %i.cg = urem i64 %i.cf, 24
  %i.ch = sub nsw i64 %i.bw, %i.cg
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bx, i8 0, i64 %i.ch, i1 false)
  br label %_ZNSt3__16vectorINS0_IZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE14ChannelSamplesNS_9allocatorISD_EEEENSE_ISG_EEE18__construct_at_endEmRKSG_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.o, %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIZN3tevL15generalDemosaicENS3_11ChannelViewIKfEENS3_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE14ChannelSamplesNS1_ISF_EEEEEEE9constructB8ne180100ISH_JRKSH_EvvEEvRSI_PT_DpOT0_.exit.i.i
  %.sroa.6.013.i.i = phi ptr [ %i.dr, %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIZN3tevL15generalDemosaicENS3_11ChannelViewIKfEENS3_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE14ChannelSamplesNS1_ISF_EEEEEEE9constructB8ne180100ISH_JRKSH_EvvEEvRSI_PT_DpOT0_.exit.i.i ], [ %i.bx, %bb.o ] ; 7 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.6.013.i.i, i64 8 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.6.013.i.i, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.013.i.i, i8 0, i64 24, i1 false)
  %i.ck = load ptr, ptr %.reload.addr738, align 8, !tbaa !136 ; 3 uses
  %i.cl = load ptr, ptr %i.bp, align 8, !tbaa !138 ; 3 uses
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.ck to i64
  %i.co = sub i64 %i.cm, %i.cn                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  store ptr %.sroa.6.013.i.i, ptr %8, align 8, !tbaa !127, !alias.scope !521
  store i8 0, ptr %i.ca, align 8, !tbaa !131, !alias.scope !521
  %.not.i.i197 = icmp eq ptr %i.cl, %i.ck
  br i1 %.not.i.i197, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIZN3tevL15generalDemosaicENS3_11ChannelViewIKfEENS3_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE14ChannelSamplesNS1_ISF_EEEEEEE9constructB8ne180100ISH_JRKSH_EvvEEvRSI_PT_DpOT0_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.cp = sdiv exact i64 %i.co, 24
  %i.cq = icmp ugt i64 %i.cp, 768614336404564650
  br i1 %i.cq, label %bb.q, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIZN3tevL15generalDemosaicENS2_11ChannelViewIKfEENS2_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE14ChannelSamplesEEEEDaRT_m.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  invoke fastcc void @_ZNKSt3__16vectorIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE14ChannelSamplesNS_9allocatorISD_EEE20__throw_length_errorB8ne180100Ev() #35
          to label %.noexc.i.i201 unwind label %.body.i.i.from..loopexit.split-lp255

.noexc.i.i201:                                    ; preds = %bb.q
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIZN3tevL15generalDemosaicENS2_11ChannelViewIKfEENS2_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE14ChannelSamplesEEEEDaRT_m.exit.i.i.i: ; preds = %bb.p
  %i.cr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.co) #32
          to label %.lr.ph.i.i.i.i.i198.from. unwind label %.body.i.i.from..loopexit254 ; 9 uses

.lr.ph.i.i.i.i.i198.from.:                        ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIZN3tevL15generalDemosaicENS2_11ChannelViewIKfEENS2_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE14ChannelSamplesEEEEDaRT_m.exit.i.i.i
  store ptr %i.cr, ptr %.sroa.6.013.i.i, align 8, !tbaa !136
  store ptr %i.cr, ptr %i.ci, align 8, !tbaa !138
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.co
  store ptr %i.cs, ptr %i.cj, align 8, !tbaa !137
  store ptr %i.cr, ptr %.reload.addr741, align 8, !tbaa !137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store ptr %i.cr, ptr %i.a, align 8, !tbaa !137
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  store ptr %i.cj, ptr %7, align 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8
  store ptr %.reload.addr741, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8
  store i8 0, ptr %i.cb, align 8, !tbaa !154, !alias.scope !522
  br label %.lr.ph.i.i.i.i.i198

.lr.ph.i.i.i.i.i198:                              ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIZN3tevL15generalDemosaicENS2_11ChannelViewIKfEENS2_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE14ChannelSamplesEEE9constructB8ne180100ISE_JRSE_EvvEEvRSF_PT_DpOT0_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i198.from.
  %i.ct = phi ptr [ %i.dm, %_ZNSt3__116allocator_traitsINS_9allocatorIZN3tevL15generalDemosaicENS2_11ChannelViewIKfEENS2_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE14ChannelSamplesEEE9constructB8ne180100ISE_JRSE_EvvEEvRSF_PT_DpOT0_.exit.i.i.i.i.i ], [ %i.cr, %.lr.ph.i.i.i.i.i198.from. ] ; 6 uses
  %.016.i.i.i.i.i = phi ptr [ %i.dl, %_ZNSt3__116allocator_traitsINS_9allocatorIZN3tevL15generalDemosaicENS2_11ChannelViewIKfEENS2_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE14ChannelSamplesEEE9constructB8ne180100ISE_JRSE_EvvEEvRSF_PT_DpOT0_.exit.i.i.i.i.i ], [ %i.ck, %.lr.ph.i.i.i.i.i198.from. ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i8 0, i64 24, i1 false)
  %i.cw = load ptr, ptr %.016.i.i.i.i.i, align 8, !tbaa !159 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !160 ; 2 uses
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.cw to i64
  %i.db = sub i64 %i.cz, %i.da                    ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cy, %i.cw
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorIZN3tevL15generalDemosaicENS2_11ChannelViewIKfEENS2_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE14ChannelSamplesEEE9constructB8ne180100ISE_JRSE_EvvEEvRSF_PT_DpOT0_.exit.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i198
  %i.dc = sdiv exact i64 %i.db, 12
  %i.dd = icmp ugt i64 %i.dc, 1537228672809129301
  br i1 %i.dd, label %bb.s, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIZN3tevL15generalDemosaicENS2_11ChannelViewIKfEENS2_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetEEEEDaRT_m.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.r
  invoke fastcc void @_ZNKSt3__16vectorIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetNS_9allocatorISD_EEE20__throw_length_errorB8ne180100Ev() #35
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i unwind label %.from..loopexit.split-lp.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.s
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIZN3tevL15generalDemosaicENS2_11ChannelViewIKfEENS2_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetEEEEDaRT_m.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.r
  %i.de = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.db) #32
          to label %_ZNSt3__116allocator_traitsINS_9allocatorIZN3tevL15generalDemosaicENS2_11ChannelViewIKfEENS2_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE14ChannelSamplesEEE9constructB8ne180100ISE_JRSE_EvvEEvRSF_PT_DpOT0_.exit.i.i.i.i.i.from._ZNSt3__16vectorIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetNS_9allocatorISD_EEE18__construct_at_endIPSD_SI_EEvT_T0_m.exit.i.i.i.i.i.i.i.i.i.i.i unwind label %.from..loopexit.i.i.i.i.i ; 4 uses

_ZNSt3__116allocator_traitsINS_9allocatorIZN3tevL15generalDemosaicENS2_11ChannelViewIKfEENS2_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE14ChannelSamplesEEE9constructB8ne180100ISE_JRSE_EvvEEvRSF_PT_DpOT0_.exit.i.i.i.i.i.from._ZNSt3__16vectorIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetNS_9allocatorISD_EEE18__construct_at_endIPSD_SI_EEvT_T0_m.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIZN3tevL15generalDemosaicENS2_11ChannelViewIKfEENS2_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetEEEEDaRT_m.exit.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.de, ptr %i.ct, align 8, !tbaa !159
  store ptr %i.de, ptr %i.cu, align 8, !tbaa !160
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.db ; 2 uses
  store ptr %i.df, ptr %i.cv, align 8, !tbaa !161
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.de, ptr readonly align 4 %i.cw, i64 %i.db, i1 false)
  store ptr %i.df, ptr %i.cu, align 8, !tbaa !160
  %.pre.i.i.i.i.i = load ptr, ptr %.reload.addr741, align 8, !tbaa !137
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIZN3tevL15generalDemosaicENS2_11ChannelViewIKfEENS2_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE14ChannelSamplesEEE9constructB8ne180100ISE_JRSE_EvvEEvRSF_PT_DpOT0_.exit.i.i.i.i.i

.from..loopexit.i.i.i.i.i:                        ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIZN3tevL15generalDemosaicENS2_11ChannelViewIKfEENS2_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetEEEEDaRT_m.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.t

.from..loopexit.split-lp.i.i.i.i.i:               ; preds = %bb.s
  %lpad.loopexit.split-lp.i.i.i.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.t

bb.t:                                             ; preds = %.from..loopexit.split-lp.i.i.i.i.i, %.from..loopexit.i.i.i.i.i
  %lpad.phi.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i, %.from..loopexit.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i, %.from..loopexit.split-lp.i.i.i.i.i ]
  %i.dg = load ptr, ptr %i.ct, align 8, !tbaa !159 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i199 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i199, label %.body.i.i.from..body.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  store ptr %i.dg, ptr %i.cu, align 8, !tbaa !160
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cv, align 8, !tbaa !161
  %i.dh = ptrtoint ptr %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef %i.dj) #36
  br label %.body.i.i.from..body.i.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorIZN3tevL15generalDemosaicENS2_11ChannelViewIKfEENS2_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE14ChannelSamplesEEE9constructB8ne180100ISE_JRSE_EvvEEvRSF_PT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i198, %_ZNSt3__116allocator_traitsINS_9allocatorIZN3tevL15generalDemosaicENS2_11ChannelViewIKfEENS2_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE14ChannelSamplesEEE9constructB8ne180100ISE_JRSE_EvvEEvRSF_PT_DpOT0_.exit.i.i.i.i.i.from._ZNSt3__16vectorIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetNS_9allocatorISD_EEE18__construct_at_endIPSD_SI_EEvT_T0_m.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.dk = phi ptr [ %.pre.i.i.i.i.i, %_ZNSt3__116allocator_traitsINS_9allocatorIZN3tevL15generalDemosaicENS2_11ChannelViewIKfEENS2_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE14ChannelSamplesEEE9constructB8ne180100ISE_JRSE_EvvEEvRSF_PT_DpOT0_.exit.i.i.i.i.i.from._ZNSt3__16vectorIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetNS_9allocatorISD_EEE18__construct_at_endIPSD_SI_EEvT_T0_m.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ct, %.lr.ph.i.i.i.i.i198 ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 24 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 24 ; 3 uses
  store ptr %i.dm, ptr %.reload.addr741, align 8, !tbaa !137
  %.not.i.i.i.i.i200 = icmp eq ptr %i.dl, %i.cl
  br i1 %.not.i.i.i.i.i200, label %_ZNSt3__16vectorIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE14ChannelSamplesNS_9allocatorISD_EEE18__construct_at_endIPSD_SI_EEvT_T0_m.exit.i.i, label %.lr.ph.i.i.i.i.i198, !llvm.loop !475

.body.i.i.from..body.i.i.i.i.i:                   ; preds = %bb.t, %bb.u
  call fastcc void @_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorIZN3tevL15generalDemosaicENS3_11ChannelViewIKfEENS3_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE14ChannelSamplesEEPSF_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
end_hunk_0
begin_hunk_1_@_ZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEi:.from.
  %i.ip = icmp slt i64 %indvars.iv.next415, %i.io
  br i1 %i.ip, label %.preheader252, label %._crit_edge336, !llvm.loop !489

bb.am:                                            ; preds = %.from.594, %.from..lr.ph
  %indvars.iv411 = phi i64 [ 0, %.from..lr.ph ], [ %indvars.iv.next412, %.from.594 ] ; 3 uses
  %i.iq = phi i32 [ %i.ii, %.from..lr.ph ], [ %i.ix, %.from.594 ]
  %i.ir = mul nuw nsw i32 %i.iq, %i.ik
  %i.is = trunc nuw nsw i64 %indvars.iv411 to i32 ; 2 uses
  %i.it = add nsw i32 %i.ir, %i.is
  %i.iu = sext i32 %i.it to i64
  %i.iv = getelementptr inbounds nuw i8, ptr %3, i64 %i.iu
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !55
  switch i8 %i.iw, label %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit.from.622" [
    i8 0, label %".from._ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit"
    i8 1, label %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit.from.598"
    i8 2, label %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit.from.602"
    i8 3, label %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit.from.606"
    i8 4, label %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit.from.610"
    i8 5, label %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit.from.614"
    i8 6, label %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit.from.618"
  ]

"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit.from.598": ; preds = %bb.am
  br label %".from._ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit"

"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit.from.602": ; preds = %bb.am
  br label %".from._ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit"

"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit.from.606": ; preds = %bb.am
  br label %".from._ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit"

"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit.from.610": ; preds = %bb.am
  br label %".from._ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit"

"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit.from.614": ; preds = %bb.am
  br label %".from._ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit"

"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit.from.618": ; preds = %bb.am
  br label %".from._ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit"

"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit.from.622": ; preds = %bb.am
  br label %".from._ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit"

".from._ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit": ; preds = %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit.from.622", %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit.from.618", %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit.from.614", %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit.from.610", %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit.from.606", %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit.from.602", %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit.from.598", %bb.am
  %.sroa.01.0.i = phi <2 x float> [ zeroinitializer, %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit.from.622" ], [ splat (float 1.000000e+00), %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit.from.618" ], [ <float 0.000000e+00, float 1.000000e+00>, %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit.from.598" ], [ zeroinitializer, %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit.from.602" ], [ <float 0.000000e+00, float 1.000000e+00>, %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit.from.606" ], [ <float 1.000000e+00, float 0.000000e+00>, %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit.from.610" ], [ splat (float 1.000000e+00), %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit.from.614" ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.am ]
  %.sroa.17.0.i = phi float [ 0.000000e+00, %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit.from.622" ], [ 1.000000e+00, %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit.from.618" ], [ 0.000000e+00, %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit.from.598" ], [ 1.000000e+00, %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit.from.602" ], [ 1.000000e+00, %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit.from.606" ], [ 1.000000e+00, %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit.from.610" ], [ 0.000000e+00, %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit.from.614" ], [ 0.000000e+00, %bb.am ]
  store <2 x float> %.sroa.01.0.i, ptr %.reload.addr738, align 8
  store float %.sroa.17.0.i, ptr %i.bp, align 8
  br label %bb.an

.from.594:                                        ; preds = %.from.627
  %indvars.iv.next412 = add nuw nsw i64 %indvars.iv411, 1 ; 2 uses
  %i.ix = load i32, ptr %.reload.addr750, align 8, !tbaa !76 ; 3 uses
  %i.iy = sext i32 %i.ix to i64
  %i.iz = icmp slt i64 %indvars.iv.next412, %i.iy
  br i1 %i.iz, label %bb.am, label %._crit_edge334.from.._crit_edge334.loopexit, !llvm.loop !490

bb.an:                                            ; preds = %.from.627, %".from._ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit"
  %indvars.iv = phi i64 [ 0, %".from._ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit" ], [ %indvars.iv.next, %.from.627 ] ; 4 uses
  %.val = load ptr, ptr %.reload.addr740, align 8, !tbaa !168
  %i.ja = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %indvars.iv414
  %.val93 = load ptr, ptr %i.ja, align 8, !tbaa !147
  %i.jb = getelementptr inbounds nuw [24 x i8], ptr %.val93, i64 %indvars.iv411
  %.val94 = load ptr, ptr %i.jb, align 8, !tbaa !136
  %i.jc = getelementptr inbounds nuw [24 x i8], ptr %.val94, i64 %indvars.iv ; 13 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %.reload.addr738, i64 %indvars.iv
  %i.je = load float, ptr %i.jd, align 4, !tbaa !109 ; 3 uses
  %i.jf = fcmp ogt float %i.je, 0.000000e+00
  br i1 %i.jf, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %bb.an
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jc, i64 8 ; 4 uses
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !160 ; 6 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jc, i64 16 ; 3 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !161 ; 2 uses
  %i.jk = icmp ult ptr %i.jh, %i.jj
  br i1 %i.jk, label %.from.636, label %bb.ap

.from.636:                                        ; preds = %bb.ao
  store i32 0, ptr %i.jh, align 4, !tbaa !76
  %.sroa.6214.0..sroa_idx215 = getelementptr inbounds nuw i8, ptr %i.jh, i64 4
  store i32 0, ptr %.sroa.6214.0..sroa_idx215, align 4, !tbaa !76
  %.sroa.7217.0..sroa_idx218 = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  store float %i.je, ptr %.sroa.7217.0..sroa_idx218, align 4, !tbaa !109
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jh, i64 12
  br label %.from._ZNSt3__114__split_bufferIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetRNS_9allocatorISD_EEE5clearB8ne180100Ev.exit.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %.val6.i.i = load ptr, ptr %i.jc, align 8, !tbaa !159
  %i.jm = ptrtoint ptr %i.jh to i64
  %i.jn = ptrtoint ptr %.val6.i.i to i64          ; 2 uses
  %i.jo = sub i64 %i.jm, %i.jn                    ; 2 uses
  %i.jp = sdiv exact i64 %i.jo, 12
  %i.jq = add nsw i64 %i.jp, 1                    ; 2 uses
  %i.jr = icmp ugt i64 %i.jq, 1537228672809129301
  br i1 %i.jr, label %bb.aq, label %_ZNKSt3__16vectorIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetNS_9allocatorISD_EEE11__recommendB8ne180100Em.exit.i.i

bb.aq:                                            ; preds = %bb.ap
  invoke fastcc void @_ZNKSt3__16vectorIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetNS_9allocatorISD_EEE20__throw_length_errorB8ne180100Ev() #35
          to label %.noexc136 unwind label %.from..loopexit.split-lp248

.noexc136:                                        ; preds = %bb.aq
  unreachable

_ZNKSt3__16vectorIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetNS_9allocatorISD_EEE11__recommendB8ne180100Em.exit.i.i: ; preds = %bb.ap
  %i.js = ptrtoint ptr %i.jj to i64
  %i.jt = sub i64 %i.js, %i.jn
  %i.ju = sdiv exact i64 %i.jt, 12                ; 2 uses
  %.not.i.i.i134 = icmp ult i64 %i.ju, 768614336404564650
  %i.jv = shl nuw nsw i64 %i.ju, 1
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.jv, i64 range(i64 -768614336404564649, 768614336404564652) %i.jq)
  %.0.i.i.i = select i1 %.not.i.i.i134, i64 %.sroa.speculated.i.i.i, i64 1537228672809129301 ; 4 uses
  %i.jw = icmp ne i64 %.0.i.i.i, 0
  call void @llvm.assume(i1 %i.jw)
  %i.jx = icmp ugt i64 %.0.i.i.i, 1537228672809129301
  br i1 %i.jx, label %bb.ar, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIZN3tevL15generalDemosaicENS2_11ChannelViewIKfEENS2_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetEEEEDaRT_m.exit.i.i.i

bb.ar:                                            ; preds = %_ZNKSt3__16vectorIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetNS_9allocatorISD_EEE11__recommendB8ne180100Em.exit.i.i
  invoke void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #35
          to label %.noexc137 unwind label %.from..loopexit.split-lp248

.noexc137:                                        ; preds = %bb.ar
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIZN3tevL15generalDemosaicENS2_11ChannelViewIKfEENS2_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetEEEEDaRT_m.exit.i.i.i: ; preds = %_ZNKSt3__16vectorIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetNS_9allocatorISD_EEE11__recommendB8ne180100Em.exit.i.i
  %i.jy = mul nuw i64 %.0.i.i.i, 12
  %i.jz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jy) #32
          to label %.noexc138 unwind label %.from..loopexit247 ; 2 uses

.noexc138:                                        ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIZN3tevL15generalDemosaicENS2_11ChannelViewIKfEENS2_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetEEEEDaRT_m.exit.i.i.i
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 %i.jo ; 6 uses
  %i.kb = getelementptr inbounds nuw [12 x i8], ptr %i.jz, i64 %.0.i.i.i
  store i32 0, ptr %i.ka, align 4, !tbaa !76
  %.sroa.6214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ka, i64 4
  store i32 0, ptr %.sroa.6214.0..sroa_idx, align 4, !tbaa !76
  %.sroa.7217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  store float %i.je, ptr %.sroa.7217.0..sroa_idx, align 4, !tbaa !109
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 12 ; 3 uses
  %i.kd = load ptr, ptr %i.jg, align 8, !tbaa !160
  %.promoted.fr.i.i.i.i.i.i = freeze ptr %i.kd    ; 2 uses
  %i.ke = load ptr, ptr %i.jc, align 8, !tbaa !159 ; 5 uses
  %.not2.i.i.i.i.i.i.i.i.i = icmp eq ptr %.promoted.fr.i.i.i.i.i.i, %i.ke
  br i1 %.not2.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetRNS_9allocatorISD_EEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.noexc138, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.val24.i.i.i.i.i.i.i.i.i = phi ptr [ %i.kg, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.ka, %.noexc138 ]
  %.sroa.2.03.i.i.i.i.i.i.i.i.i = phi ptr [ %i.kf, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.promoted.fr.i.i.i.i.i.i, %.noexc138 ]
  %i.kf = getelementptr inbounds i8, ptr %.sroa.2.03.i.i.i.i.i.i.i.i.i, i64 -12 ; 3 uses
  %i.kg = getelementptr inbounds i8, ptr %.val24.i.i.i.i.i.i.i.i.i, i64 -12 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.kg, ptr noundef nonnull align 4 dereferenceable(12) %i.kf, i64 12, i1 false), !tbaa.struct !530, !noalias !531
  %.not.i.i.i.i.i.i.i.i.i135 = icmp eq ptr %i.kf, %i.ke
  br i1 %.not.i.i.i.i.i.i.i.i.i135, label %_ZNSt3__114__split_bufferIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetRNS_9allocatorISD_EEE5clearB8ne180100Ev.exit.i.i.i.from..lr.ph.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !499

_ZNSt3__114__split_bufferIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetRNS_9allocatorISD_EEE5clearB8ne180100Ev.exit.i.i.i.from..lr.ph.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  br label %_ZNSt3__114__split_bufferIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetRNS_9allocatorISD_EEE5clearB8ne180100Ev.exit.i.i.i, !llvm.loop !499

_ZNSt3__114__split_bufferIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetRNS_9allocatorISD_EEE5clearB8ne180100Ev.exit.i.i.i: ; preds = %.noexc138, %_ZNSt3__114__split_bufferIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetRNS_9allocatorISD_EEE5clearB8ne180100Ev.exit.i.i.i.from..lr.ph.i.i.i.i.i.i.i.i.i
  %.sroa.415.0.i.i.i.i.i.i.i.i = phi ptr [ %i.kg, %_ZNSt3__114__split_bufferIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetRNS_9allocatorISD_EEE5clearB8ne180100Ev.exit.i.i.i.from..lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.ka, %.noexc138 ]
  store ptr %.sroa.415.0.i.i.i.i.i.i.i.i, ptr %i.jc, align 8, !tbaa !161
  store ptr %i.kc, ptr %i.jg, align 8, !tbaa !161
  %i.kh = load ptr, ptr %i.ji, align 8, !tbaa !161
  store ptr %i.kb, ptr %i.ji, align 8, !tbaa !161
  %.not.i10.i.i = icmp eq ptr %i.ke, null
  br i1 %.not.i10.i.i, label %.from._ZNSt3__114__split_bufferIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetRNS_9allocatorISD_EEE5clearB8ne180100Ev.exit.i.i.i, label %.from.632

.from.632:                                        ; preds = %_ZNSt3__114__split_bufferIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetRNS_9allocatorISD_EEE5clearB8ne180100Ev.exit.i.i.i
  %i.ki = ptrtoint ptr %i.kh to i64
  %i.kj = ptrtoint ptr %i.ke to i64
  %i.kk = sub i64 %i.ki, %i.kj
  call void @_ZdlPvm(ptr noundef nonnull %i.ke, i64 noundef %i.kk) #36
  br label %.from._ZNSt3__114__split_bufferIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetRNS_9allocatorISD_EEE5clearB8ne180100Ev.exit.i.i.i

.from._ZNSt3__114__split_bufferIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetRNS_9allocatorISD_EEE5clearB8ne180100Ev.exit.i.i.i: ; preds = %_ZNSt3__114__split_bufferIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetRNS_9allocatorISD_EEE5clearB8ne180100Ev.exit.i.i.i, %.from.632, %.from.636
  %.0.i = phi ptr [ %i.jl, %.from.636 ], [ %i.kc, %.from.632 ], [ %i.kc, %_ZNSt3__114__split_bufferIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetRNS_9allocatorISD_EEE5clearB8ne180100Ev.exit.i.i.i ]
  store ptr %.0.i, ptr %i.jg, align 8, !tbaa !160
  br label %.from.627

.from..loopexit247:                               ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIZN3tevL15generalDemosaicENS2_11ChannelViewIKfEENS2_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetEEEEDaRT_m.exit.i.i.i
  %lpad.loopexit249 = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.708

.from..loopexit.split-lp248:                      ; preds = %bb.ar, %bb.aq
  %lpad.loopexit.split-lp250 = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.708

bb.as:                                            ; preds = %bb.an
  br i1 %.not327, label %._crit_edge329.split, label %.preheader.from..preheader.lr.ph

.preheader.from..preheader.lr.ph:                 ; preds = %bb.as
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %.reload.addr734, i64 %indvars.iv
  %i.km = getelementptr inbounds nuw i8, ptr %i.jc, i64 8 ; 4 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jc, i64 16 ; 3 uses
  br label %.from..preheader

.from..preheader:                                 ; preds = %._crit_edge, %.preheader.from..preheader.lr.ph
  %.074328 = phi i32 [ %i.id, %.preheader.from..preheader.lr.ph ], [ %i.ks, %._crit_edge ] ; 8 uses
  %i.ko = add nsw i32 %.074328, %i.ik
  %i.kp = mul nsw i32 %.074328, %.074328
  br label %bb.at

._crit_edge329.split:                             ; preds = %._crit_edge, %bb.as
  %.val95 = load ptr, ptr %i.jc, align 8, !tbaa !159 ; 7 uses
  %i.kq = getelementptr i8, ptr %i.jc, i64 8      ; 3 uses
  %.val96 = load ptr, ptr %i.kq, align 8, !tbaa !160 ; 7 uses
  %i.kr = icmp eq ptr %.val95, %.val96
  br i1 %i.kr, label %.from.627, label %.preheader246

._crit_edge:                                      ; preds = %.from.641
  %.not = icmp sgt i32 %.074328, %i.bj
  %i.ks = add nsw i32 %.074328, 1
  br i1 %.not, label %._crit_edge329.split, label %.from..preheader, !llvm.loop !500

bb.at:                                            ; preds = %.from.641, %.from..preheader
  %.073324 = phi i32 [ %i.id, %.from..preheader ], [ %i.mh, %.from.641 ] ; 8 uses
  %i.kt = or i32 %.073324, %.074328
  %or.cond = icmp eq i32 %i.kt, 0
  br i1 %or.cond, label %.from.641, label %bb.au

bb.au:                                            ; preds = %bb.at
  %17 = load i32, ptr %i.bg, align 4, !tbaa !76   ; 3 uses
  %18 = srem i32 %i.ko, %17
  %19 = add nsw i32 %18, %17
  %20 = srem i32 %19, %17
  %21 = add nsw i32 %.073324, %i.is
  %22 = load i32, ptr %.reload.addr750, align 8, !tbaa !76 ; 4 uses
  %23 = srem i32 %21, %22
  %24 = add nsw i32 %23, %22
  %25 = srem i32 %24, %22
  %26 = mul nsw i32 %22, %20
  %i.ku = add nsw i32 %25, %26
  %i.kv = sext i32 %i.ku to i64
  %i.kw = getelementptr inbounds nuw i8, ptr %3, i64 %i.kv
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !55
  switch i8 %i.kx, label %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit143.from.669" [
    i8 0, label %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit143"
    i8 1, label %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit143.from.645"
    i8 2, label %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit143.from.649"
    i8 3, label %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit143.from.653"
    i8 4, label %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit143.from.657"
    i8 5, label %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit143.from.661"
    i8 6, label %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit143.from.665"
  ]

"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit143.from.645": ; preds = %bb.au
  br label %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit143"

"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit143.from.649": ; preds = %bb.au
  br label %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit143"

"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit143.from.653": ; preds = %bb.au
  br label %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit143"

"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit143.from.657": ; preds = %bb.au
  br label %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit143"

"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit143.from.661": ; preds = %bb.au
  br label %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit143"

"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit143.from.665": ; preds = %bb.au
  br label %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit143"

"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit143.from.669": ; preds = %bb.au
  br label %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit143"

"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit143": ; preds = %bb.au, %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit143.from.645", %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit143.from.649", %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit143.from.653", %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit143.from.657", %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit143.from.661", %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit143.from.665", %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit143.from.669"
  %.sroa.01.0.i139 = phi <2 x float> [ zeroinitializer, %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit143.from.669" ], [ splat (float 1.000000e+00), %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit143.from.665" ], [ <float 0.000000e+00, float 1.000000e+00>, %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit143.from.645" ], [ zeroinitializer, %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit143.from.649" ], [ <float 0.000000e+00, float 1.000000e+00>, %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit143.from.653" ], [ <float 1.000000e+00, float 0.000000e+00>, %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit143.from.657" ], [ splat (float 1.000000e+00), %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit143.from.661" ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.au ]
  %.sroa.17.0.i140 = phi float [ 0.000000e+00, %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit143.from.669" ], [ 1.000000e+00, %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit143.from.665" ], [ 0.000000e+00, %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit143.from.645" ], [ 1.000000e+00, %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit143.from.649" ], [ 1.000000e+00, %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit143.from.653" ], [ 1.000000e+00, %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit143.from.657" ], [ 0.000000e+00, %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit143.from.661" ], [ 0.000000e+00, %bb.au ]
  store <2 x float> %.sroa.01.0.i139, ptr %.reload.addr734, align 8
  store float %.sroa.17.0.i140, ptr %i.bu, align 8
  %i.ky = load float, ptr %i.kl, align 4, !tbaa !109 ; 2 uses
  %i.kz = fcmp ogt float %i.ky, 0.000000e+00
  br i1 %i.kz, label %bb.av, label %.from.641

bb.av:                                            ; preds = %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit143"
  %i.la = mul nsw i32 %.073324, %.073324
  %i.lb = add nuw nsw i32 %i.la, %i.kp
  %i.lc = uitofp nneg i32 %i.lb to float
  %sqrt = call float @llvm.sqrt.f32(float %i.lc)
  %i.ld = fdiv float %i.ky, %sqrt                 ; 2 uses
  %i.le = load ptr, ptr %i.km, align 8, !tbaa !160 ; 6 uses
  %i.lf = load ptr, ptr %i.kn, align 8, !tbaa !161 ; 2 uses
  %i.lg = icmp ult ptr %i.le, %i.lf
  br i1 %i.lg, label %.from.680, label %bb.aw

.from.680:                                        ; preds = %bb.av
  store i32 %.073324, ptr %i.le, align 4, !tbaa !76
  %.sroa.6.0..sroa_idx208 = getelementptr inbounds nuw i8, ptr %i.le, i64 4
  store i32 %.074328, ptr %.sroa.6.0..sroa_idx208, align 4, !tbaa !76
  %.sroa.7.0..sroa_idx210 = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  store float %i.ld, ptr %.sroa.7.0..sroa_idx210, align 4, !tbaa !109
  %i.lh = getelementptr inbounds nuw i8, ptr %i.le, i64 12
  br label %.from._ZNSt3__114__split_bufferIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetRNS_9allocatorISD_EEE5clearB8ne180100Ev.exit.i.i.i156

bb.aw:                                            ; preds = %bb.av
  %.val6.i.i144 = load ptr, ptr %i.jc, align 8, !tbaa !159
  %i.li = ptrtoint ptr %i.le to i64
  %i.lj = ptrtoint ptr %.val6.i.i144 to i64       ; 2 uses
  %i.lk = sub i64 %i.li, %i.lj                    ; 2 uses
  %i.ll = sdiv exact i64 %i.lk, 12
  %i.lm = add nsw i64 %i.ll, 1                    ; 2 uses
  %i.ln = icmp ugt i64 %i.lm, 1537228672809129301
  br i1 %i.ln, label %bb.ax, label %_ZNKSt3__16vectorIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetNS_9allocatorISD_EEE11__recommendB8ne180100Em.exit.i.i145

bb.ax:                                            ; preds = %bb.aw
  invoke fastcc void @_ZNKSt3__16vectorIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetNS_9allocatorISD_EEE20__throw_length_errorB8ne180100Ev() #35
          to label %.noexc160 unwind label %.from..loopexit.split-lp

.noexc160:                                        ; preds = %bb.ax
  unreachable

_ZNKSt3__16vectorIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetNS_9allocatorISD_EEE11__recommendB8ne180100Em.exit.i.i145: ; preds = %bb.aw
  %i.lo = ptrtoint ptr %i.lf to i64
  %i.lp = sub i64 %i.lo, %i.lj
  %i.lq = sdiv exact i64 %i.lp, 12                ; 2 uses
  %.not.i.i.i146 = icmp ult i64 %i.lq, 768614336404564650
  %i.lr = shl nuw nsw i64 %i.lq, 1
  %.sroa.speculated.i.i.i147 = call i64 @llvm.umax.i64(i64 %i.lr, i64 range(i64 -768614336404564649, 768614336404564652) %i.lm)
  %.0.i.i.i148 = select i1 %.not.i.i.i146, i64 %.sroa.speculated.i.i.i147, i64 1537228672809129301 ; 4 uses
  %i.ls = icmp ne i64 %.0.i.i.i148, 0
  call void @llvm.assume(i1 %i.ls)
  %i.lt = icmp ugt i64 %.0.i.i.i148, 1537228672809129301
  br i1 %i.lt, label %bb.ay, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIZN3tevL15generalDemosaicENS2_11ChannelViewIKfEENS2_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetEEEEDaRT_m.exit.i.i.i149

bb.ay:                                            ; preds = %_ZNKSt3__16vectorIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetNS_9allocatorISD_EEE11__recommendB8ne180100Em.exit.i.i145
  invoke void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #35
          to label %.noexc161 unwind label %.from..loopexit.split-lp

.noexc161:                                        ; preds = %bb.ay
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIZN3tevL15generalDemosaicENS2_11ChannelViewIKfEENS2_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetEEEEDaRT_m.exit.i.i.i149: ; preds = %_ZNKSt3__16vectorIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetNS_9allocatorISD_EEE11__recommendB8ne180100Em.exit.i.i145
  %i.lu = mul nuw i64 %.0.i.i.i148, 12
  %i.lv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lu) #32
          to label %.noexc162 unwind label %.from..loopexit ; 2 uses

.noexc162:                                        ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIZN3tevL15generalDemosaicENS2_11ChannelViewIKfEENS2_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetEEEEDaRT_m.exit.i.i.i149
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.lk ; 6 uses
  %i.lx = getelementptr inbounds nuw [12 x i8], ptr %i.lv, i64 %.0.i.i.i148
  store i32 %.073324, ptr %i.lw, align 4, !tbaa !76
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lw, i64 4
  store i32 %.074328, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !76
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  store float %i.ld, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !109
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lw, i64 12 ; 3 uses
  %i.lz = load ptr, ptr %i.km, align 8, !tbaa !160
  %.promoted.fr.i.i.i.i.i.i150 = freeze ptr %i.lz ; 2 uses
  %i.ma = load ptr, ptr %i.jc, align 8, !tbaa !159 ; 5 uses
  %.not2.i.i.i.i.i.i.i.i.i151 = icmp eq ptr %.promoted.fr.i.i.i.i.i.i150, %i.ma
  br i1 %.not2.i.i.i.i.i.i.i.i.i151, label %_ZNSt3__114__split_bufferIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetRNS_9allocatorISD_EEE5clearB8ne180100Ev.exit.i.i.i156, label %.lr.ph.i.i.i.i.i.i.i.i.i152

.lr.ph.i.i.i.i.i.i.i.i.i152:                      ; preds = %.noexc162, %.lr.ph.i.i.i.i.i.i.i.i.i152
  %.val24.i.i.i.i.i.i.i.i.i153 = phi ptr [ %i.mc, %.lr.ph.i.i.i.i.i.i.i.i.i152 ], [ %i.lw, %.noexc162 ]
  %.sroa.2.03.i.i.i.i.i.i.i.i.i154 = phi ptr [ %i.mb, %.lr.ph.i.i.i.i.i.i.i.i.i152 ], [ %.promoted.fr.i.i.i.i.i.i150, %.noexc162 ]
  %i.mb = getelementptr inbounds i8, ptr %.sroa.2.03.i.i.i.i.i.i.i.i.i154, i64 -12 ; 3 uses
  %i.mc = getelementptr inbounds i8, ptr %.val24.i.i.i.i.i.i.i.i.i153, i64 -12 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.mc, ptr noundef nonnull align 4 dereferenceable(12) %i.mb, i64 12, i1 false), !tbaa.struct !530, !noalias !532
  %.not.i.i.i.i.i.i.i.i.i155 = icmp eq ptr %i.mb, %i.ma
  br i1 %.not.i.i.i.i.i.i.i.i.i155, label %_ZNSt3__114__split_bufferIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetRNS_9allocatorISD_EEE5clearB8ne180100Ev.exit.i.i.i156.from..lr.ph.i.i.i.i.i.i.i.i.i152, label %.lr.ph.i.i.i.i.i.i.i.i.i152, !llvm.loop !499

_ZNSt3__114__split_bufferIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetRNS_9allocatorISD_EEE5clearB8ne180100Ev.exit.i.i.i156.from..lr.ph.i.i.i.i.i.i.i.i.i152: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i152
  br label %_ZNSt3__114__split_bufferIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetRNS_9allocatorISD_EEE5clearB8ne180100Ev.exit.i.i.i156, !llvm.loop !499

_ZNSt3__114__split_bufferIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetRNS_9allocatorISD_EEE5clearB8ne180100Ev.exit.i.i.i156: ; preds = %.noexc162, %_ZNSt3__114__split_bufferIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetRNS_9allocatorISD_EEE5clearB8ne180100Ev.exit.i.i.i156.from..lr.ph.i.i.i.i.i.i.i.i.i152
  %.sroa.415.0.i.i.i.i.i.i.i.i157 = phi ptr [ %i.mc, %_ZNSt3__114__split_bufferIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetRNS_9allocatorISD_EEE5clearB8ne180100Ev.exit.i.i.i156.from..lr.ph.i.i.i.i.i.i.i.i.i152 ], [ %i.lw, %.noexc162 ]
  store ptr %.sroa.415.0.i.i.i.i.i.i.i.i157, ptr %i.jc, align 8, !tbaa !161
  store ptr %i.ly, ptr %i.km, align 8, !tbaa !161
  %i.md = load ptr, ptr %i.kn, align 8, !tbaa !161
  store ptr %i.lx, ptr %i.kn, align 8, !tbaa !161
  %.not.i10.i.i158 = icmp eq ptr %i.ma, null
  br i1 %.not.i10.i.i158, label %.from._ZNSt3__114__split_bufferIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetRNS_9allocatorISD_EEE5clearB8ne180100Ev.exit.i.i.i156, label %.from.676

.from.676:                                        ; preds = %_ZNSt3__114__split_bufferIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetRNS_9allocatorISD_EEE5clearB8ne180100Ev.exit.i.i.i156
  %i.me = ptrtoint ptr %i.md to i64
  %i.mf = ptrtoint ptr %i.ma to i64
  %i.mg = sub i64 %i.me, %i.mf
  call void @_ZdlPvm(ptr noundef nonnull %i.ma, i64 noundef %i.mg) #36
  br label %.from._ZNSt3__114__split_bufferIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetRNS_9allocatorISD_EEE5clearB8ne180100Ev.exit.i.i.i156

.from._ZNSt3__114__split_bufferIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetRNS_9allocatorISD_EEE5clearB8ne180100Ev.exit.i.i.i156: ; preds = %_ZNSt3__114__split_bufferIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetRNS_9allocatorISD_EEE5clearB8ne180100Ev.exit.i.i.i156, %.from.676, %.from.680
  %.0.i159 = phi ptr [ %i.lh, %.from.680 ], [ %i.ly, %.from.676 ], [ %i.ly, %_ZNSt3__114__split_bufferIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetRNS_9allocatorISD_EEE5clearB8ne180100Ev.exit.i.i.i156 ]
  store ptr %.0.i159, ptr %i.km, align 8, !tbaa !160
  br label %.from.641

.from..loopexit:                                  ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIZN3tevL15generalDemosaicENS2_11ChannelViewIKfEENS2_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetEEEEDaRT_m.exit.i.i.i149
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.708

.from..loopexit.split-lp:                         ; preds = %bb.ay, %bb.ax
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.708

.from.641:                                        ; preds = %"_ZZN3tevL15generalDemosaicENS_11ChannelViewIKfEENS_16MultiChannelViewIfEENSt3__14spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiENK3$_2clEh.exit143", %.from._ZNSt3__114__split_bufferIZN3tevL15generalDemosaicENS1_11ChannelViewIKfEENS1_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetRNS_9allocatorISD_EEE5clearB8ne180100Ev.exit.i.i.i156, %bb.at
  %.not85 = icmp sgt i32 %.073324, %i.bj
  %i.mh = add nsw i32 %.073324, 1
  br i1 %.not85, label %._crit_edge, label %bb.at, !llvm.loop !509

.lr.ph.i.i.i.from.:                               ; preds = %.preheader246
  %i.mi = fmul nnan float %.sroa.speculated, 1.600000e+00 ; 3 uses
  %.val4.i.i.i831 = load i32, ptr %.val95, align 4, !tbaa !176 ; 2 uses
  %i.mj = getelementptr i8, ptr %.val95, i64 4
  %.val5.i.i.i832 = load i32, ptr %i.mj, align 4, !tbaa !177 ; 2 uses
  %i.mk = mul nsw i32 %.val4.i.i.i831, %.val4.i.i.i831
  %i.ml = mul nsw i32 %.val5.i.i.i832, %.val5.i.i.i832
  %i.mm = add nuw nsw i32 %i.ml, %i.mk
  %i.mn = uitofp nneg i32 %i.mm to float
  %sqrt.i.i.i.i833 = call float @llvm.sqrt.f32(float %i.mn)
  %i.mo = fcmp ogt float %sqrt.i.i.i.i833, %i.mi
  br i1 %i.mo, label %"_ZNSt3__17find_ifB8ne180100INS_11__wrap_iterIPZN3tevL15generalDemosaicENS2_11ChannelViewIKfEENS2_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetEERZNS2_L15generalDemosaicES5_S7_SA_SD_iE3$_0EET_SJ_SJ_T0_.exit.i.i", label %.lr.ph.i.i.i.from.683

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.from.683
  %.val4.i.i.i = load i32, ptr %i.mv, align 4, !tbaa !176 ; 2 uses
  %i.mp = getelementptr i8, ptr %.sroa.01.03.i.i.i834, i64 16
  %.val5.i.i.i = load i32, ptr %i.mp, align 4, !tbaa !177 ; 2 uses
  %i.mq = mul nsw i32 %.val4.i.i.i, %.val4.i.i.i
  %i.mr = mul nsw i32 %.val5.i.i.i, %.val5.i.i.i
  %i.ms = add nuw nsw i32 %i.mr, %i.mq
  %i.mt = uitofp nneg i32 %i.ms to float
  %sqrt.i.i.i.i = call float @llvm.sqrt.f32(float %i.mt)
  %i.mu = fcmp ogt float %sqrt.i.i.i.i, %i.mi
  br i1 %i.mu, label %"_ZNSt3__17find_ifB8ne180100INS_11__wrap_iterIPZN3tevL15generalDemosaicENS2_11ChannelViewIKfEENS2_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetEERZNS2_L15generalDemosaicES5_S7_SA_SD_iE3$_0EET_SJ_SJ_T0_.exit.i.i", label %.lr.ph.i.i.i.from.683, !llvm.loop !510

.lr.ph.i.i.i.from.683:                            ; preds = %.lr.ph.i.i.i.from., %.lr.ph.i.i.i
  %.sroa.01.03.i.i.i834 = phi ptr [ %i.mv, %.lr.ph.i.i.i ], [ %.val95, %.lr.ph.i.i.i.from. ] ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.sroa.01.03.i.i.i834, i64 12 ; 5 uses
  %.not.i.i.i164 = icmp eq ptr %i.mv, %.val96
  br i1 %.not.i.i.i164, label %"_ZNSt3__17find_ifB8ne180100INS_11__wrap_iterIPZN3tevL15generalDemosaicENS2_11ChannelViewIKfEENS2_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetEERZNS2_L15generalDemosaicES5_S7_SA_SD_iE3$_0EET_SJ_SJ_T0_.exit.i.i.from.", label %.lr.ph.i.i.i, !llvm.loop !510

"_ZNSt3__17find_ifB8ne180100INS_11__wrap_iterIPZN3tevL15generalDemosaicENS2_11ChannelViewIKfEENS2_16MultiChannelViewIfEENS_4spanIKhLm18446744073709551615EEEN7nanogui5ArrayIiLm2EEEiE12SampleOffsetEERZNS2_L15generalDemosaicES5_S7_SA_SD_iE3$_0EET_SJ_SJ_T0_.exit.i.i.from.": ; preds = %.lr.ph.i.i.i.from.683
end_hunk_1
