Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/data_gen?download=true
inline.NumInlined: 93223
inline.NumDeleted: 25399
loop-unroll.NumCompletelyUnrolled: 93
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 111
begin_hunk_0_@_ZN12async_simple4coro5sleepIlSt5ratioILl1ELl1000EEEENS0_4LazyIvEEPNS_8ExecutorENSt6chrono8durationIT_T0_EEm.resume:resume.entry
  %.sroa.0.0.copyload.i.i.pre = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !411
  %.pre8 = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !12000
  %.pre10 = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !12001
  br label %AfterCoroSave44

AfterCoroSave44:                                  ; preds = %_ZNK12async_simple8Executor11TimeAwaiter11await_readyEv.exit.AfterCoroSave44_crit_edge, %bb.a, %_ZNK12async_simple8Executor11TimeAwaiter11await_readyEv.exit.thread.from..thread
  %i.r = phi ptr [ null, %_ZNK12async_simple8Executor11TimeAwaiter11await_readyEv.exit.thread.from..thread ], [ null, %bb.a ], [ %.pre10, %_ZNK12async_simple8Executor11TimeAwaiter11await_readyEv.exit.AfterCoroSave44_crit_edge ]
  %i.s = phi i64 [ %.reload69, %_ZNK12async_simple8Executor11TimeAwaiter11await_readyEv.exit.thread.from..thread ], [ %.reload69, %bb.a ], [ %.pre8, %_ZNK12async_simple8Executor11TimeAwaiter11await_readyEv.exit.AfterCoroSave44_crit_edge ]
  %.sroa.0.0.copyload.i.i = phi i64 [ %i.d, %_ZNK12async_simple8Executor11TimeAwaiter11await_readyEv.exit.thread.from..thread ], [ %i.g, %bb.a ], [ %.sroa.0.0.copyload.i.i.pre, %_ZNK12async_simple8Executor11TimeAwaiter11await_readyEv.exit.AfterCoroSave44_crit_edge ]
  %i.t = phi ptr [ %.reload, %_ZNK12async_simple8Executor11TimeAwaiter11await_readyEv.exit.thread.from..thread ], [ %.reload, %bb.a ], [ %.pre, %_ZNK12async_simple8Executor11TimeAwaiter11await_readyEv.exit.AfterCoroSave44_crit_edge ] ; 2 uses
  %.sroa.6.0..sroa_idx.i.i42 = phi ptr [ %.sroa.6.0..sroa_idx.i.i39, %_ZNK12async_simple8Executor11TimeAwaiter11await_readyEv.exit.thread.from..thread ], [ %.sroa.6.0..sroa_idx.i.i, %bb.a ], [ %.sroa.6.0..sroa_idx.i.i, %_ZNK12async_simple8Executor11TimeAwaiter11await_readyEv.exit.AfterCoroSave44_crit_edge ]
  %.sroa.6.0..sroa_idx.i.i42.spill.addr = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %.sroa.6.0..sroa_idx.i.i42, ptr %.sroa.6.0..sroa_idx.i.i42.spill.addr, align 8
  store i8 1, ptr %index.addr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.w, align 8
  %i.x = ptrtoint ptr %0 to i64
  store i64 %i.x, ptr %1, align 8, !tbaa !376
  store ptr @_ZNSt17_Function_handlerIFvvENSt7__n486116coroutine_handleIN12async_simple4coro6detail11LazyPromiseIvEEEEE9_M_invokeERKSt9_Any_data, ptr %i.v, align 8, !tbaa !846
  store ptr @_ZNSt17_Function_handlerIFvvENSt7__n486116coroutine_handleIN12async_simple4coro6detail11LazyPromiseIvEEEEE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.u, align 8, !tbaa !623
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !263
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %1, i64 %.sroa.0.0.copyload.i.i, i64 noundef %i.s, ptr noundef %i.r)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %AfterCoroSave44
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !623 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %CoroEnd, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = invoke noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %CoroEnd unwind label %bb.d    ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #49
  unreachable

bb.e:                                             ; preds = %AfterCoroSave44
  %i.af = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ag = load ptr, ptr %i.u, align 8, !tbaa !623 ; 2 uses
  %.not.i2.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i2.i.i, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = invoke noundef zeroext i1 %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %.body unwind label %bb.g      ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #49
  unreachable

.from.AfterCoroSuspend46:                         ; preds = %resume.entry
  %.sroa.6.0..sroa_idx.i.i42.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.6.0..sroa_idx.i.i42.reload = load ptr, ptr %.sroa.6.0..sroa_idx.i.i42.reload.addr, align 8, !tbaa !11996
  br label %.from._ZNK12async_simple8Executor11TimeAwaiter11await_readyEv.exit

bb.h:                                             ; preds = %.from._ZNK12async_simple8Executor11TimeAwaiter11await_readyEv.exit
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i, %bb.e, %bb.f, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.e ], [ %i.ak, %bb.h ], [ %i.af, %bb.f ], [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i ], [ %i.av, %bb.j ]
  %.012 = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.al = call ptr @__cxa_begin_catch(ptr %.012) #36 ; 0 uses
  call void @_ZN12async_simple4coro6detail11LazyPromiseIvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr77) #36
  invoke void @__cxa_end_catch()
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i unwind label %bb.k

.from._ZNK12async_simple8Executor11TimeAwaiter11await_readyEv.exit: ; preds = %_ZNK12async_simple8Executor11TimeAwaiter11await_readyEv.exit, %.from.AfterCoroSuspend46
  %.sroa.6.0..sroa_idx.i.i41 = phi ptr [ %.sroa.6.0..sroa_idx.i.i42.reload, %.from.AfterCoroSuspend46 ], [ %.sroa.6.0..sroa_idx.i.i, %_ZNK12async_simple8Executor11TimeAwaiter11await_readyEv.exit ]
  store i64 1, ptr %.reload.addr74, align 8, !tbaa !1548
  %i.am = load ptr, ptr %.sroa.6.0..sroa_idx.i.i41, align 8, !tbaa !12001
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.ao = invoke noalias noundef nonnull dereferenceable(34) ptr @_Znwm(i64 noundef 34) #51
          to label %.noexc unwind label %bb.h     ; 3 uses

.noexc:                                           ; preds = %.from._ZNK12async_simple8Executor11TimeAwaiter11await_readyEv.exit
  store ptr %i.ao, ptr %.reload.addr72, align 8, !tbaa !286
  store i64 33, ptr %i.an, align 8, !tbaa !279
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.ao, ptr noundef nonnull align 1 dereferenceable(33) @.str.156, i64 33, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 33, ptr %i.ap, align 8, !tbaa !290
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 33
  store i8 0, ptr %i.aq, align 1, !tbaa !279
  invoke void @_ZN12async_simple12signalHelper16checkHasCanceledEPNS_4SlotENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr74, ptr noundef %i.am, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %.reload.addr72)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.noexc
  %i.ar = load ptr, ptr %.reload.addr72, align 8, !tbaa !286 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.an
  br i1 %i.as, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  %i.at = load i64, ptr %i.an, align 8, !tbaa !279
  %i.au = add i64 %i.at, 1
  tail call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #50
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.j:                                             ; preds = %.noexc
  %i.av = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.aw = load ptr, ptr %.reload.addr72, align 8, !tbaa !286 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.an
  br i1 %i.ax, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %bb.j
  %i.ay = load i64, ptr %i.an, align 8, !tbaa !279
  %i.az = add i64 %i.ay, 1
  tail call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #50
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.i, %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  store ptr null, ptr %0, align 8
  store i8 2, ptr %index.addr, align 8
  %.sroa.0.0.copyload.i.i5 = load ptr, ptr %.reload.addr77, align 8, !tbaa !376 ; 2 uses
  %i.ba = load ptr, ptr %.sroa.0.0.copyload.i.i5, align 8
  musttail call void %i.ba(ptr nonnull %.sroa.0.0.copyload.i.i5)
  ret void

CoroEnd:                                          ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  ret void

bb.k:                                             ; preds = %.body
  %i.bb = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 8
  store i8 2, ptr %index.addr, align 8
  resume { ptr, i32 } %i.bb
}

; Function Attrs: coro_only_destroy_when_complete mustprogress nounwind uwtable
define internal void @_ZN12async_simple4coro5sleepIlSt5ratioILl1ELl1000EEEENS0_4LazyIvEEPNS_8ExecutorENSt6chrono8durationIT_T0_EEm.destroy(ptr noundef nonnull align 8 dereferenceable(160) %0) #48 personality ptr @__gxx_personality_v0 {
resume.entry:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !702
  %.not.i.i21 = icmp eq ptr %i.b, null
  br i1 %.not.i.i21, label %_ZN12async_simple4coro6detail11LazyPromiseIvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %resume.entry
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #36
  br label %_ZN12async_simple4coro6detail11LazyPromiseIvED2Ev.exit

_ZN12async_simple4coro6detail11LazyPromiseIvED2Ev.exit: ; preds = %resume.entry, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.0.copyload.i = load ptr, ptr %i.c, align 8
  invoke void %.0.copyload.i(ptr noundef nonnull %0, i64 noundef 160)
          to label %CoroEnd unwind label %bb.b

bb.b:                                             ; preds = %_ZN12async_simple4coro6detail11LazyPromiseIvED2Ev.exit
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #49
  unreachable

CoroEnd:                                          ; preds = %_ZN12async_simple4coro6detail11LazyPromiseIvED2Ev.exit
  ret void
}

; Function Attrs: coro_only_destroy_when_complete mustprogress uwtable
define internal void @_ZN12async_simple4coro5sleepIlSt5ratioILl1ELl1000EEEENS0_4LazyIvEENSt6chrono8durationIT_T0_EEm.resume(ptr noundef nonnull align 8 dereferenceable(96) %0) #34 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr91 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %.reload.addr92 = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %.reload.addr96 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %index = load i8, ptr %index.addr, align 8
  %i.a = icmp eq i8 %index, 0
  br i1 %i.a, label %AfterCoroSuspend, label %AfterCoroSuspend59, !prof !12012

AfterCoroSuspend:                                 ; preds = %resume.entry
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !693  ; 3 uses
  %.not17 = icmp eq ptr %i.c, null
  br i1 %.not17, label %bb.a, label %bb.e

bb.a:                                             ; preds = %AfterCoroSuspend
  %.reload.addr86 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.reload87 = load i64, ptr %.reload.addr86, align 8, !tbaa !12014 ; 3 uses
  %i.d = icmp slt i64 %.reload87, 1
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = udiv i64 %.reload87, 1000                ; 2 uses
  %.neg.i.i = mul nsw i64 %i.e, -1000
  %i.f = add nsw i64 %.neg.i.i, %.reload87
  %i.g = mul nuw nsw i64 %i.f, 1000000
  store i64 %i.e, ptr %.reload.addr91, align 8, !tbaa !2048
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.g, ptr %i.h, align 8, !tbaa !2049
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.i = invoke i32 @nanosleep(ptr noundef nonnull %.reload.addr91, ptr noundef nonnull %.reload.addr91)
          to label %.noexc unwind label %.from.78

.noexc:                                           ; preds = %bb.c
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %.noexc
  %i.k = tail call ptr @__errno_location() #55
  %i.l = load i32, ptr %i.k, align 4, !tbaa !280
  %i.m = icmp eq i32 %i.l, 4
  br i1 %i.m, label %bb.c, label %.loopexit, !llvm.loop !12002

.from.78:                                         ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  br label %.from._ZN12async_simple4coro6detail8LazyBaseIvLb0EED2Ev.exit30

bb.e:                                             ; preds = %AfterCoroSuspend
  %i.o = tail call noalias noundef dereferenceable_or_null(168) ptr @_ZnamRKSt9nothrow_t(i64 noundef 168, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #53, !inline_history !12003 ; 13 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %.from..from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i

.from..from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit.i: ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 160
  store ptr @_ZZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEmENUlPvmE_8__invokeES4_m, ptr %i.q, align 1
  %.reload.addr84 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr @_ZN12async_simple4coro5sleepIlSt5ratioILl1ELl1000EEEENS0_4LazyIvEEPNS_8ExecutorENSt6chrono8durationIT_T0_EEm.resume, ptr %i.o, align 8
  %destroy.addr.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_ZN12async_simple4coro5sleepIlSt5ratioILl1ELl1000EEEENS0_4LazyIvEEPNS_8ExecutorENSt6chrono8durationIT_T0_EEm.destroy, ptr %destroy.addr.i, align 8
  %.reload.addr77.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.spill.addr62.i = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  %i.r = load <2 x i64>, ptr %.reload.addr84, align 8, !tbaa !12014
  store <2 x i64> %i.r, ptr %.spill.addr62.i, align 8
  %.spill.addr.i = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  store ptr %i.c, ptr %.spill.addr.i, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store i64 0, ptr %i.s, align 8
  %index.addr78.i = getelementptr inbounds nuw i8, ptr %i.o, i64 152
  store i8 0, ptr %index.addr78.i, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12015)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12016)
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.c, ptr %i.t, align 8, !tbaa !693, !noalias !12017
  store ptr %i.o, ptr %.reload.addr91, align 8, !alias.scope !12018
  store i8 1, ptr %index.addr, align 8
  store ptr %0, ptr %.reload.addr77.i, align 8, !tbaa !376
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1388
  store ptr %i.w, ptr %i.u, align 8, !tbaa !1389
  musttail call void @_ZN12async_simple4coro5sleepIlSt5ratioILl1ELl1000EEEENS0_4LazyIvEEPNS_8ExecutorENSt6chrono8durationIT_T0_EEm.resume(ptr nonnull %i.o)
  ret void

bb.f:                                             ; preds = %bb.e
  %i.x = tail call ptr @__cxa_allocate_exception(i64 16) #36, !noalias !12017 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull @.str.108)
          to label %bb.g unwind label %_ZN12async_simple4coro6detail8LazyBaseIvLb0EED2Ev.exit30.from.76, !noalias !12017

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #52
          to label %.noexc22 unwind label %_ZN12async_simple4coro6detail8LazyBaseIvLb0EED2Ev.exit30.from.75

.noexc22:                                         ; preds = %bb.g
  unreachable

_ZN12async_simple4coro6detail8LazyBaseIvLb0EED2Ev.exit30.from.76: ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_free_exception(ptr nonnull %i.x) #36, !noalias !12017
  br label %.from._ZN12async_simple4coro6detail8LazyBaseIvLb0EED2Ev.exit30

_ZN12async_simple4coro6detail8LazyBaseIvLb0EED2Ev.exit30.from.75: ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  br label %.from._ZN12async_simple4coro6detail8LazyBaseIvLb0EED2Ev.exit30

.body23.from.72:                                  ; preds = %_ZN12async_simple4coro6detail11LazyPromiseIvE6resultEv.exit.i
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  br label %.body23

.body23:                                          ; preds = %bb.k, %.body23.from.70, %.body23.from.72
  %eh.lpad-body24 = phi { ptr, i32 } [ %i.aa, %.body23.from.72 ], [ %i.ak, %.body23.from.70 ], [ %i.ak, %bb.k ] ; 2 uses
  %i.ab = load ptr, ptr %.reload.addr91, align 8, !tbaa !1088 ; 3 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %.from._ZN12async_simple4coro6detail8LazyBaseIvLb0EED2Ev.exit30, label %bb.h

bb.h:                                             ; preds = %.body23
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr nonnull %i.ab)
          to label %.from._ZN12async_simple4coro6detail8LazyBaseIvLb0EED2Ev.exit30 unwind label %bb.i, !inline_history !61

bb.i:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.af) #49
  unreachable

AfterCoroSuspend59:                               ; preds = %resume.entry
  %i.ag = load ptr, ptr %.reload.addr91, align 8, !tbaa !1088 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !702 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZN12async_simple4coro6detail11LazyPromiseIvE6resultEv.exit.i, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i, !prof !687

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i: ; preds = %AfterCoroSuspend59
  store ptr %i.ai, ptr %.reload.addr92, align 8, !tbaa !702
  tail call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr92) #36
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %.reload.addr92) #52
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i
  unreachable

bb.k:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i
  %i.ak = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.al = load ptr, ptr %.reload.addr92, align 8, !tbaa !702
  %.not.i3.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i3.i.i, label %.body23, label %.body23.from.70

.body23.from.70:                                  ; preds = %bb.k
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr92) #36
  br label %.body23

_ZN12async_simple4coro6detail11LazyPromiseIvE6resultEv.exit.i: ; preds = %AfterCoroSuspend59
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  invoke void %i.an(ptr nonnull %i.ag)
          to label %.loopexit unwind label %.body23.from.72, !inline_history !201

.from._ZN12async_simple4coro6detail8LazyBaseIvLb0EED2Ev.exit30: ; preds = %bb.h, %.body23, %_ZN12async_simple4coro6detail8LazyBaseIvLb0EED2Ev.exit30.from.75, %_ZN12async_simple4coro6detail8LazyBaseIvLb0EED2Ev.exit30.from.76, %.from.78
  %.pn.pn.pn = phi { ptr, i32 } [ %i.n, %.from.78 ], [ %eh.lpad-body24, %.body23 ], [ %i.y, %_ZN12async_simple4coro6detail8LazyBaseIvLb0EED2Ev.exit30.from.76 ], [ %i.z, %_ZN12async_simple4coro6detail8LazyBaseIvLb0EED2Ev.exit30.from.75 ], [ %eh.lpad-body24, %bb.h ]
  %.2 = extractvalue { ptr, i32 } %.pn.pn.pn, 0
  %i.ao = tail call ptr @__cxa_begin_catch(ptr %.2) #36 ; 0 uses
  tail call void @_ZN12async_simple4coro6detail11LazyPromiseIvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr96) #36
  invoke void @__cxa_end_catch()
          to label %.loopexit unwind label %bb.l

.loopexit:                                        ; preds = %bb.d, %.noexc, %bb.a, %.from._ZN12async_simple4coro6detail8LazyBaseIvLb0EED2Ev.exit30, %_ZN12async_simple4coro6detail11LazyPromiseIvE6resultEv.exit.i
  store ptr null, ptr %0, align 8
  store i8 2, ptr %index.addr, align 8
  %.sroa.0.0.copyload.i.i2 = load ptr, ptr %.reload.addr96, align 8, !tbaa !376 ; 2 uses
  %i.ap = load ptr, ptr %.sroa.0.0.copyload.i.i2, align 8
  musttail call void %i.ap(ptr nonnull %.sroa.0.0.copyload.i.i2)
  ret void

bb.l:                                             ; preds = %.from._ZN12async_simple4coro6detail8LazyBaseIvLb0EED2Ev.exit30
  %i.aq = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 8
  store i8 2, ptr %index.addr, align 8
  resume { ptr, i32 } %i.aq
}

; Function Attrs: coro_only_destroy_when_complete mustprogress nounwind uwtable
define internal void @_ZN12async_simple4coro5sleepIlSt5ratioILl1ELl1000EEEENS0_4LazyIvEENSt6chrono8durationIT_T0_EEm.destroy(ptr noundef nonnull align 8 dereferenceable(96) %0) #48 personality ptr @__gxx_personality_v0 {
resume.entry:
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 88
  %index = load i8, ptr %index.addr, align 8
  %i.a = icmp eq i8 %index, 1
  br i1 %i.a, label %AfterCoroSuspend59, label %AfterCoroSuspend, !prof !12019

AfterCoroSuspend59:                               ; preds = %resume.entry
  %.reload.addr91 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pr = load ptr, ptr %.reload.addr91, align 8, !tbaa !1088 ; 3 uses
  %.not.i26 = icmp eq ptr %.pr, null
  br i1 %.not.i26, label %AfterCoroSuspend, label %bb.a

bb.a:                                             ; preds = %AfterCoroSuspend59
  %i.b = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr nonnull %.pr)
          to label %AfterCoroSuspend unwind label %bb.b, !inline_history !61

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #49
  unreachable

AfterCoroSuspend:                                 ; preds = %resume.entry, %AfterCoroSuspend59, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !702
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN12async_simple4coro6detail11LazyPromiseIvED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %AfterCoroSuspend
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #36
  br label %_ZN12async_simple4coro6detail11LazyPromiseIvED2Ev.exit
end_hunk_0
