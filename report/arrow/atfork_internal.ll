inline.NumInlined: 405
inline.NumDeleted: 234
begin_hunk_0_@__cxa_guard_abort

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_atfork(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal16IOErrorFromErrnoIJRA36_KcEEENS_6StatusEiDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i32 noundef %1, ptr noundef nonnull align 1 dereferenceable(36) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.17", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZN5arrow8internal21StatusDetailFromErrnoEi(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.17") align 8 %3, i32 noundef %1), !noalias !54
  invoke void @_ZN5arrow6Status17FromDetailAndArgsIJRA36_KcEEES0_NS_10StatusCodeESt10shared_ptrINS_12StatusDetailEEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 5, ptr noundef nonnull %3, ptr noundef nonnull align 1 dereferenceable(36) %2)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57, !noalias !54 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5arrow8internal15StatusFromErrnoIJRA36_KcEEENS_6StatusEiNS_10StatusCodeEDpOT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.c, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !60
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !61
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !61
  br label %_ZN5arrow8internal15StatusFromErrnoIJRA36_KcEEENS_6StatusEiNS_10StatusCodeEDpOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24, !noalias !54
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.f ], [ %i.p, %bb.g ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.h, label %_ZN5arrow8internal15StatusFromErrnoIJRA36_KcEEENS_6StatusEiNS_10StatusCodeEDpOT_.exit, !prof !62

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18
  br label %_ZN5arrow8internal15StatusFromErrnoIJRA36_KcEEENS_6StatusEiNS_10StatusCodeEDpOT_.exit

bb.i:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #18
  resume { ptr, i32 } %i.r

_ZN5arrow8internal15StatusFromErrnoIJRA36_KcEEENS_6StatusEiNS_10StatusCodeEDpOT_.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: noreturn
declare void @_ZNK5arrow6Status5AbortEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvENK3$_0clEvENUlvE_8__invokeEv"() #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"union.std::any::_Arg", align 8    ; 4 uses
  %1 = alloca %"union.std::any::_Arg", align 8    ; 4 uses
  %2 = alloca %"class.std::shared_ptr", align 8   ; 9 uses
  %3 = alloca %"class.std::any", align 8          ; 9 uses
  %i.a = load atomic i8, ptr @_ZGVZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvE5state acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEv.exit.i, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvE5state) #18, !inline_history !63
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @"_ZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvENK3$_0clEv"()
          to label %bb.d unwind label %bb.e, !inline_history !63

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt10unique_ptrIN5arrow8internal12_GLOBAL__N_111AtForkStateESt14default_deleteIS3_EED2Ev, ptr nonnull @_ZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvE5state, ptr nonnull @__dso_handle) #18, !inline_history !63 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvE5state) #18, !inline_history !63
  br label %_ZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEv.exit.i

common.resume.i:                                  ; preds = %bb.z, %bb.e
  %common.resume.op.i = phi { ptr, i32 } [ %i.e, %bb.e ], [ %lpad.phi.i.i, %bb.z ]
  resume { ptr, i32 } %common.resume.op.i

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvE5state) #18, !inline_history !63
  br label %common.resume.i

_ZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEv.exit.i: ; preds = %bb.d, %bb.b, %bb.a
  %i.f = load ptr, ptr @_ZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvE5state, align 8, !tbaa !9 ; 8 uses
  %i.g = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(88) %i.f) #18, !inline_history !64 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %_ZNSt5mutex4lockEv.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEv.exit.i
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.g) #19, !inline_history !64
  unreachable

_ZNSt5mutex4lockEv.exit.i.i:                      ; preds = %_ZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEv.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16   ; 2 uses
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt5mutex4lockEv.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 3 uses
  br label %bb.g

._crit_edge.i.i:                                  ; preds = %_ZNSt12__shared_ptrIN5arrow8internal13AtForkHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, %_ZNSt5mutex4lockEv.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.val10.i.i = load ptr, ptr %i.q, align 8, !tbaa !65 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %.val.i.i = load ptr, ptr %i.r, align 8, !tbaa !65 ; 2 uses
  %i.s = icmp eq ptr %.val10.i.i, %.val.i.i
  br i1 %i.s, label %"_ZZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvENK3$_0clEvENKUlvE_clEv.exit", label %.lr.ph35.i.i

bb.g:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8internal13AtForkHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, %.lr.ph.i.i
  %.sroa.026.032.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.cw, %_ZNSt12__shared_ptrIN5arrow8internal13AtForkHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.026.032.i.i, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !12, !noalias !67 ; 3 uses
  store ptr %i.u, ptr %i.m, align 8, !tbaa !57, !alias.scope !67
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt8weak_ptrIN5arrow8internal13AtForkHandlerEE4lockEv.exit.thread.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.w = load atomic i32, ptr %i.v monotonic, align 8, !noalias !67
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %.06.i.i.i.i.i.i.i = phi i32 [ %i.w, %bb.h ], [ %i.aa, %bb.j ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = add nsw i32 %.06.i.i.i.i.i.i.i, 1
  %i.y = cmpxchg weak ptr %i.v, i32 %.06.i.i.i.i.i.i.i, i32 %i.x acq_rel monotonic, align 8, !noalias !67 ; 2 uses
  %i.z = extractvalue { i32, i1 } %i.y, 1
  %i.aa = extractvalue { i32, i1 } %i.y, 0
  br i1 %i.z, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i, label %bb.i, !llvm.loop !70

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i: ; preds = %bb.i
  store ptr null, ptr %i.m, align 8, !tbaa !57, !alias.scope !67
  br label %_ZNKSt8weak_ptrIN5arrow8internal13AtForkHandlerEE4lockEv.exit.thread.i.i

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.ab = load atomic i32, ptr %i.v monotonic, align 8, !noalias !67
  %.fr.i.i.i.i.i = freeze i32 %i.ab
  %.not.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i, 0
  %4 = load ptr, ptr %.sroa.026.032.i.i, align 8, !noalias !67 ; 4 uses
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8weak_ptrIN5arrow8internal13AtForkHandlerEE4lockEv.exit.thread.i.i, label %_ZNKSt8weak_ptrIN5arrow8internal13AtForkHandlerEE4lockEv.exit.i.i

_ZNKSt8weak_ptrIN5arrow8internal13AtForkHandlerEE4lockEv.exit.thread.i.i: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i, %bb.g
  store ptr null, ptr %2, align 8, !tbaa !71, !alias.scope !67
  br label %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE12emplace_backIJSt10shared_ptrINS1_13AtForkHandlerEEEEERS4_DpOT_.exit.i.i

_ZNKSt8weak_ptrIN5arrow8internal13AtForkHandlerEE4lockEv.exit.i.i: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i
  store ptr %4, ptr %2, align 8, !tbaa !71, !alias.scope !67
  %.not.i1.i = icmp eq ptr %4, null
  br i1 %.not.i1.i, label %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE12emplace_backIJSt10shared_ptrINS1_13AtForkHandlerEEEEERS4_DpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNKSt8weak_ptrIN5arrow8internal13AtForkHandlerEE4lockEv.exit.i.i
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !73  ; 7 uses
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !75
  %.not.i14.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i14.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !57
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store ptr %4, ptr %i.ac, align 8, !tbaa !71
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !57
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  %i.ah = load ptr, ptr %i.o, align 8, !tbaa !73
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store ptr %i.ai, ptr %i.o, align 8, !tbaa !73
  br label %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE12emplace_backIJSt10shared_ptrINS1_13AtForkHandlerEEEEERS4_DpOT_.exit.i.i

bb.m:                                             ; preds = %bb.k
  %.val26.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !76 ; 5 uses
  %i.aj = ptrtoint ptr %i.ac to i64
  %i.ak = ptrtoint ptr %.val26.i.i.i.i to i64     ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak                    ; 3 uses
  %i.am = icmp eq i64 %i.al, 9223372036854775776
  br i1 %i.am, label %bb.n, label %_ZNKSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #19
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.i, !inline_history !64

.noexc.i.i:                                       ; preds = %bb.n
  unreachable

_ZNKSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.m
  %i.an = ashr exact i64 %i.al, 5                 ; 3 uses
  %i.ao = icmp eq ptr %i.ac, %.val26.i.i.i.i      ; 2 uses
  %.sroa.speculated.i.i.i.i.i = select i1 %i.ao, i64 1, i64 %i.an
  %i.ap = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.an ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.an
  %i.ar = call i64 @llvm.umin.i64(i64 %i.ap, i64 288230376151711743)
  %i.as = select i1 %i.aq, i64 288230376151711743, i64 %i.ar ; 3 uses
  %.not.i.i.i15.i.i = icmp ne i64 %i.as, 0
  call void @llvm.assume(i1 %.not.i.i.i15.i.i)
  %i.at = shl nuw nsw i64 %i.as, 5
  %i.au = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #20
          to label %.noexc16.i.i unwind label %.loopexit.i.i, !inline_history !64 ; 5 uses

.noexc16.i.i:                                     ; preds = %_ZNKSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.al ; 3 uses
  %i.aw = load ptr, ptr %i.m, align 8, !tbaa !57
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store ptr %4, ptr %i.av, align 8, !tbaa !71
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !57
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  br i1 %i.ao, label %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc16.i.i, %_ZSt19__relocate_object_aIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ca, %_ZSt19__relocate_object_aIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.au, %.noexc16.i.i ] ; 4 uses
  %.094.i.i.i.i = phi ptr [ %i.bz, %_ZSt19__relocate_object_aIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %.val26.i.i.i.i, %.noexc16.i.i ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.az = getelementptr inbounds nuw i8, ptr %.094.i.i.i.i, i64 8 ; 2 uses
  %i.ba = load <2 x ptr>, ptr %.094.i.i.i.i, align 8, !tbaa !15, !alias.scope !80, !noalias !77
  store ptr null, ptr %i.az, align 8, !tbaa !57, !alias.scope !80, !noalias !77
  store <2 x ptr> %i.ba, ptr %.05.i.i.i.i, align 8, !tbaa !15, !alias.scope !77, !noalias !80
  store ptr null, ptr %.094.i.i.i.i, align 8, !tbaa !71, !alias.scope !80, !noalias !77
  %i.bb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.094.i.i.i.i, i64 16 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24
  store ptr null, ptr %i.bd, align 8, !tbaa !24, !alias.scope !77, !noalias !80
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !82, !alias.scope !80, !noalias !77 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt12construct_atIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerEJS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.thread.i.i.i.i.i, label %bb.o

_ZSt12construct_atIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerEJS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.thread.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr null, ptr %i.bb, align 8, !tbaa !82, !alias.scope !77, !noalias !80
  br label %_ZNSt3anyD2Ev.exit.i.i.i.i.i.i.i

bb.o:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #18, !noalias !84
  store ptr %i.bb, ptr %0, align 8, !tbaa !24, !noalias !84
  invoke void %i.be(i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull %0)
          to label %_ZSt12construct_atIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerEJS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i.i.i.i.i unwind label %bb.p, !inline_history !64

bb.p:                                             ; preds = %bb.o
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #22, !inline_history !64
  unreachable

_ZSt12construct_atIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerEJS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i.i.i.i.i: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #18, !noalias !84
  %.pr.i.i.i.i.i = load ptr, ptr %i.bc, align 8, !tbaa !82, !alias.scope !80, !noalias !77 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.pr.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3anyD2Ev.exit.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZSt12construct_atIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerEJS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i.i.i.i.i
  invoke void %.pr.i.i.i.i.i(i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef null)
          to label %_ZNSt3anyD2Ev.exit.i.i.i.i.i.i.i unwind label %bb.r, !inline_history !64

bb.r:                                             ; preds = %bb.q
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #22, !inline_history !64
  unreachable

_ZNSt3anyD2Ev.exit.i.i.i.i.i.i.i:                 ; preds = %bb.q, %_ZSt12construct_atIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerEJS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i.i.i.i.i, %_ZSt12construct_atIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerEJS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.thread.i.i.i.i.i
  %i.bj = load ptr, ptr %i.az, align 8, !tbaa !57, !alias.scope !80, !noalias !77 ; 8 uses
  %.not.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt3anyD2Ev.exit.i.i.i.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 4 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 4294967297
  %i.bn = trunc i64 %i.bl to i32                  ; 2 uses
  br i1 %i.bm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.bk, align 8, !tbaa !58
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 0, ptr %i.bo, align 4, !tbaa !60
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !25
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #18, !inline_history !85
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !25
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #18, !inline_history !85
  br label %_ZSt19__relocate_object_aIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.bv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24, !noalias !84
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bv, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bw = add nsw i32 %i.bn, -1
  store i32 %i.bw, ptr %i.bk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.bx = atomicrmw volatile add ptr %i.bk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bn, %bb.v ], [ %i.bx, %bb.w ]
  %i.by = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.by, label %bb.x, label %_ZSt19__relocate_object_aIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i, !prof !62

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #18, !inline_history !64
  br label %_ZSt19__relocate_object_aIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.t, %_ZNSt3anyD2Ev.exit.i.i.i.i.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.094.i.i.i.i, i64 32 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.bz, %i.ac
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !86

_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i: ; preds = %_ZSt19__relocate_object_aIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i, %.noexc16.i.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.au, %.noexc16.i.i ], [ %i.ca, %_ZSt19__relocate_object_aIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 32
  %.not.i30.i.i.i.i = icmp eq ptr %.val26.i.i.i.i, null
  br i1 %.not.i30.i.i.i.i, label %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE17_M_realloc_insertIJSt10shared_ptrINS1_13AtForkHandlerEEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  %i.cc = load ptr, ptr %i.p, align 8, !tbaa !75
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = sub i64 %i.cd, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %.val26.i.i.i.i, i64 noundef %i.ce) #21, !inline_history !64
  br label %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE17_M_realloc_insertIJSt10shared_ptrINS1_13AtForkHandlerEEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE17_M_realloc_insertIJSt10shared_ptrINS1_13AtForkHandlerEEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i: ; preds = %bb.y, %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  store ptr %i.au, ptr %i.n, align 8, !tbaa !76
  store ptr %i.cb, ptr %i.o, align 8, !tbaa !73
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %i.au, i64 %i.as
  store ptr %i.cf, ptr %i.p, align 8, !tbaa !75
  br label %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE12emplace_backIJSt10shared_ptrINS1_13AtForkHandlerEEEEERS4_DpOT_.exit.i.i

.loopexit.i.i:                                    ; preds = %_ZNKSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit.split-lp.i.i:                           ; preds = %bb.n
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

end_hunk_0
