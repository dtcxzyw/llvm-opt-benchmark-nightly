inline.NumInlined: 1112
inline.NumDeleted: 534
begin_hunk_0_@_ZN5folly4coro17SerialQueueRunner4pullEv.cleanup:resume.entry
  %.not.i20 = icmp eq ptr %i.b, null
  br i1 %.not.i20, label %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit21, label %bb.a

bb.a:                                             ; preds = %_ZN5folly4coro4TaskIvE7Awaiter12await_resumeEv.exit
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr nonnull %i.b)
          to label %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit21 unwind label %bb.b, !inline_history !207

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #26
  unreachable

_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit21:        ; preds = %bb.a, %_ZN5folly4coro4TaskIvE7Awaiter12await_resumeEv.exit
  %i.g = load ptr, ptr %.reload.addr117, align 8, !tbaa !168 ; 3 uses
  %.not.i22 = icmp eq ptr %i.g, null
  br i1 %.not.i22, label %_ZN5folly4coro4TaskIvED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit21
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr nonnull %i.g)
          to label %_ZN5folly4coro4TaskIvED2Ev.exit unwind label %bb.d, !inline_history !207

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #26
  unreachable

_ZN5folly4coro4TaskIvED2Ev.exit:                  ; preds = %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit21, %bb.c
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr115) #22
  br label %CoroEnd

CoroEnd:                                          ; preds = %resume.entry, %_ZN5folly4coro4TaskIvED2Ev.exit
  %.reload.addr120 = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseISt4pairIbSt6vectorINS0_4TaskIvEESaIS7_EEEEESA_ED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %.reload.addr120) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5folly4coro17SerialQueueRunner3runEv.resume(ptr noundef nonnull align 8 dereferenceable(416) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %class.anon.15, align 8             ; 4 uses
  %.reload.addr230 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.reload.addr231 = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 5 uses
  %.reload.addr232 = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 12 uses
  %.reload.addr233.a = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %.reload.addr236 = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 9 uses
  %.reload.addr239 = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 14 uses
  %.reload.addr240 = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %.reload.addr242 = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  %.reload.addr247 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 7 uses
  %index = load i3, ptr %index.addr, align 8
  switch i3 %index, label %unreachable [
    i3 0, label %.critedge
    i3 1, label %CoroEnd
    i3 2, label %AfterCoroSuspend127
    i3 3, label %AfterCoroSuspend131
    i3 -4, label %CoroEnd
  ]

.critedge:                                        ; preds = %resume.entry
  %.reload.addr209 = getelementptr inbounds nuw i8, ptr %0, i64 376
  %.reload210 = load ptr, ptr %.reload.addr209, align 8, !tbaa !546
  %i.b = getelementptr inbounds nuw i8, ptr %.reload210, i64 73
  %i.c = atomicrmw xchg ptr %i.b, i8 1 monotonic, align 1
  %i.d = trunc i8 %i.c to i1
  br i1 %i.d, label %bb.a, label %.preheader

bb.a:                                             ; preds = %.critedge
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !548
  store ptr @.str.2, ptr %i.a, align 8, !tbaa !243, !noalias !548
  call void @llvm.lifetime.start.p0(ptr nonnull %1), !noalias !553
  store ptr %i.a, ptr %1, align 8, !noalias !554
  call void @_ZN5folly6detail24make_exception_ptr_with_ERKNS0_28make_exception_ptr_with_arg_EPv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 dereferenceable(8) %.reload.addr231, ptr noundef nonnull align 8 dereferenceable(32) @_ZZNK5folly26make_exception_ptr_with_fnclIZNKS0_4makeISt13runtime_errorJPKcEEEDaDpOT0_EUlvE_TnPDTclclscPDoFRT_vELDnEEEELPS3_0EEENSt15__exception_ptr13exception_ptrESA_E3arg, ptr noundef nonnull %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1), !noalias !553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22, !noalias !548
  call void @llvm.experimental.noalias.scope.decl(metadata !557)
  %i.f = load i64, ptr %.reload.addr231, align 8, !noalias !557 ; 3 uses
  store i64 %i.f, ptr %.reload.addr233.a, align 8, !alias.scope !557
  store i64 0, ptr %.reload.addr231, align 8, !noalias !557
  %i.g = load i8, ptr %i.e, align 8, !tbaa !69, !range !28, !noundef !29
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !212
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %bb.c, label %.from.152

.from.152:                                        ; preds = %bb.b
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #22
  %.pre89 = load i64, ptr %.reload.addr233.a, align 8, !noalias !560
  br label %bb.c

bb.c:                                             ; preds = %.from.152, %bb.a, %bb.b
  %i.k = phi i64 [ %.pre89, %.from.152 ], [ %i.f, %bb.a ], [ %i.f, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.experimental.noalias.scope.decl(metadata !560)
  store i64 %i.k, ptr %i.l, align 8, !alias.scope !560
  store i64 0, ptr %.reload.addr233.a, align 8, !noalias !560
  store i8 0, ptr %i.e, align 8, !tbaa !69
  store i3 1, ptr %index.addr, align 8
  %i.m = call ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter13await_suspendINS1_11TaskPromiseIvEEEENSt7__n486116coroutine_handleIvEENS8_IT_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr232, ptr nonnull %0) #22 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  musttail call void %i.n(ptr nonnull %i.m)
  ret void

.preheader:                                       ; preds = %.critedge, %_ZNSt4pairIbSt6vectorIN5folly4coro4TaskIvEESaIS4_EEED2Ev.exit
  %.reload.addr205 = getelementptr inbounds nuw i8, ptr %0, i64 376
  %.reload206 = load ptr, ptr %.reload.addr205, align 8, !tbaa !546
  %index.addr121.i196 = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.spill.addr.i195 = getelementptr inbounds nuw i8, ptr %0, i64 272
  %.reload.addr120.i194 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %destroy.addr.i193 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @_ZN5folly4coro17SerialQueueRunner4pullEv.resume, ptr %.reload.addr230, align 8
  store ptr @_ZN5folly4coro17SerialQueueRunner4pullEv.cleanup, ptr %destroy.addr.i193, align 8
  store ptr %.reload206, ptr %.spill.addr.i195, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.reload.addr120.i194, i8 0, i64 58, i1 false)
  store ptr null, ptr %i.q, align 8, !tbaa !65
  store ptr @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail11TaskPromiseISt4pairIbSt6vectorINS0_4TaskIvEESaIS7_EEEEEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeESF_SH_, ptr %i.p, align 8, !tbaa !67
  store i32 2, ptr %i.o, align 8, !tbaa !146
  store ptr %.reload.addr230, ptr %.reload.addr236, align 8, !tbaa !32, !alias.scope !563
  store i2 0, ptr %index.addr121.i196, align 8
  invoke void @_ZN5folly4coro6detail11BasePromiseINS_4UnitEE15await_transformINS0_4TaskISt4pairIbSt6vectorINS6_IvEESaIS9_EEEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDaOSF_(ptr dead_on_unwind nonnull writable sret(%"class.folly::coro::Task<std::pair<bool, std::vector<folly::coro::Task<>>>>::Awaiter") align 8 %.reload.addr232, ptr noundef nonnull align 8 dereferenceable(59) %.reload.addr247, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr236)
          to label %bb.d unwind label %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit.from.161

bb.d:                                             ; preds = %.preheader
  store i3 2, ptr %index.addr, align 8
  %i.r = tail call ptr @_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7Awaiter13await_suspendINS0_6detail11TaskPromiseIvEEEEDaNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr232, ptr nonnull %0) #22 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  musttail call void %i.s(ptr nonnull %i.r)
  ret void

_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit.from.161: ; preds = %.preheader
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit

.body:                                            ; preds = %bb.k
  %i.u = load ptr, ptr %.reload.addr232, align 8, !tbaa !88 ; 3 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %.body
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  invoke void %i.w(ptr nonnull %i.u)
          to label %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit unwind label %bb.f, !inline_history !566

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #26
  unreachable

AfterCoroSuspend127:                              ; preds = %resume.entry
  tail call void @llvm.experimental.noalias.scope.decl(metadata !567)
  %i.z = load ptr, ptr %.reload.addr232, align 8, !tbaa !88, !noalias !567 ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !146, !noalias !567
  switch i32 %i.ab, label %bb.h [
    i32 0, label %bb.i
    i32 1, label %bb.g
  ]

bb.g:                                             ; preds = %AfterCoroSuspend127
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  invoke void @_ZNK5folly17exception_wrapper15throw_exceptionEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) #23
          to label %.noexc.i unwind label %bb.k, !noalias !567

.noexc.i:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %AfterCoroSuspend127
  invoke void @_ZN5folly6detail16throw_exception_INS_21UsingUninitializedTryEJEEEvDpT0_() #4
          to label %.noexc2.i unwind label %bb.k, !noalias !567

.noexc2.i:                                        ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %AfterCoroSuspend127
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !544, !range !28, !noalias !567, !noundef !29 ; 2 uses
  store i8 %i.ah, ptr %.reload.addr231, align 8, !tbaa !544, !alias.scope !567
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 112 ; 2 uses
  %i.aj = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !535, !noalias !567
  store <2 x ptr> %i.aj, ptr %i.af, align 8, !tbaa !535, !alias.scope !567
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 128
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !31, !noalias !567
  store ptr %i.al, ptr %i.ad, align 8, !tbaa !31, !alias.scope !567
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false), !noalias !567
  store i64 0, ptr %.reload.addr232, align 8, !tbaa !32, !noalias !567
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  invoke void %i.an(ptr nonnull %i.z)
          to label %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7Awaiter12await_resumeEv.exit unwind label %bb.j, !noalias !567, !inline_history !566

bb.j:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #26, !noalias !567
  unreachable

bb.k:                                             ; preds = %bb.h, %bb.g
  %i.aq = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i3.i = load ptr, ptr %.reload.addr232, align 8, !tbaa !32, !noalias !567 ; 2 uses
  store i64 0, ptr %.reload.addr232, align 8, !tbaa !32, !noalias !567
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i3.i, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  invoke void %i.as(ptr %.sroa.0.0.copyload.i.i.i.i.i3.i)
          to label %.body unwind label %bb.l, !noalias !567, !inline_history !566

bb.l:                                             ; preds = %bb.k
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #26, !noalias !567
  unreachable

_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7Awaiter12await_resumeEv.exit: ; preds = %bb.i
  %.spill.addr211 = getelementptr inbounds nuw i8, ptr %0, i64 409
  store i8 %i.ah, ptr %.spill.addr211, align 1
  %i.av = load ptr, ptr %.reload.addr232, align 8, !tbaa !88 ; 3 uses
  %.not.i31 = icmp eq ptr %i.av, null
  br i1 %.not.i31, label %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit32, label %bb.m

bb.m:                                             ; preds = %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7Awaiter12await_resumeEv.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr nonnull %i.av)
          to label %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit32 unwind label %bb.n, !inline_history !566

bb.n:                                             ; preds = %bb.m
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  tail call void @__clang_call_terminate(ptr %i.az) #26
  unreachable

_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit32: ; preds = %bb.m, %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7Awaiter12await_resumeEv.exit
  %i.ba = load ptr, ptr %.reload.addr236, align 8, !tbaa !88 ; 3 uses
  %.not.i33 = icmp eq ptr %i.ba, null
  br i1 %.not.i33, label %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  invoke void %i.bc(ptr nonnull %i.ba)
          to label %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEED2Ev.exit unwind label %bb.p, !inline_history !566

bb.p:                                             ; preds = %bb.o
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  tail call void @__clang_call_terminate(ptr %i.be) #26
  unreachable

_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEED2Ev.exit: ; preds = %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit32, %bb.o
  %i.bf = load ptr, ptr %i.af, align 8, !tbaa !535 ; 4 uses
  %.spill.addr214 = getelementptr inbounds nuw i8, ptr %0, i64 384
  store ptr %i.bf, ptr %.spill.addr214, align 8
  %i.bg = load ptr, ptr %i.ae, align 8, !tbaa !535 ; 2 uses
  %.spill.addr223 = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr %i.bg, ptr %.spill.addr223, align 8
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %.thread23, label %.lr.ph

.thread23:                                        ; preds = %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEED2Ev.exit
  %.reload.addr21226 = getelementptr inbounds nuw i8, ptr %0, i64 409
  %.reload21327 = load i8, ptr %.reload.addr21226, align 1, !tbaa !546
  br label %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i

_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit: ; preds = %bb.e, %.body, %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit.from.161
  %.pn = phi { ptr, i32 } [ %i.t, %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit.from.161 ], [ %i.aq, %.body ], [ %i.aq, %bb.e ] ; 2 uses
  %i.bi = load ptr, ptr %.reload.addr236, align 8, !tbaa !88 ; 3 uses
  %.not.i34 = icmp eq ptr %i.bi, null
  br i1 %.not.i34, label %.from.187, label %bb.q

bb.q:                                             ; preds = %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  invoke void %i.bk(ptr nonnull %i.bi)
          to label %.from.187 unwind label %bb.r, !inline_history !566

bb.r:                                             ; preds = %bb.q
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  tail call void @__clang_call_terminate(ptr %i.bm) #26
  unreachable

.lr.ph:                                           ; preds = %_ZN5folly3TryIvED2Ev.exit50.thread, %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEED2Ev.exit
  %.sroa.064.082 = phi ptr [ %i.bf, %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEED2Ev.exit ], [ %i.dj, %_ZN5folly3TryIvED2Ev.exit50.thread ] ; 3 uses
  %.sroa.064.082.spill.addr = getelementptr inbounds nuw i8, ptr %0, i64 400
  store ptr %.sroa.064.082, ptr %.sroa.064.082.spill.addr, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !570)
  %.sroa.0.0.copyload.i.i.i.i.i.i36 = load ptr, ptr %.sroa.064.082, align 8, !tbaa !32, !noalias !570
  store i64 0, ptr %.sroa.064.082, align 8, !tbaa !32, !noalias !570
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i36, ptr %.reload.addr240, align 8, !alias.scope !570
  invoke void @_ZN5folly4coro6detail11BasePromiseINS_4UnitEE15await_transformINS1_12TryAwaitableINS0_4TaskIvEEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDaOSB_(ptr dead_on_unwind nonnull writable sret(%"class.folly::coro::detail::TryAwaitable") align 8 %.reload.addr239, ptr noundef nonnull align 8 dereferenceable(59) %.reload.addr247, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr240)
          to label %bb.s unwind label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvE7AwaiterEED2Ev.exit

bb.s:                                             ; preds = %.lr.ph
  store ptr %.reload.addr239, ptr %.reload.addr236, align 8
  store i3 3, ptr %index.addr, align 8
  %i.bn = tail call ptr @_ZN5folly4coro4TaskIvE7Awaiter13await_suspendINS0_6detail11TaskPromiseIvEEEEDaNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr239, ptr nonnull %0) #22 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8
  musttail call void %i.bo(ptr nonnull %i.bn)
  ret void

AfterCoroSuspend131:                              ; preds = %resume.entry
  tail call void @llvm.experimental.noalias.scope.decl(metadata !573)
  %i.bp = load ptr, ptr %.reload.addr236, align 8, !tbaa !576, !noalias !573, !nonnull !29, !align !242 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !579)
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !168, !noalias !582 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 96
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !69, !range !28, !noalias !582, !noundef !29 ; 2 uses
  store i8 %i.bs, ptr %.reload.addr232, align 8, !tbaa !69, !alias.scope !582
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %_ZN5folly3TryIvEC2ERKS1_.exit.i.i, label %bb.t

bb.t:                                             ; preds = %AfterCoroSuspend131
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 104
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !212, !noalias !582 ; 2 uses
  store ptr %i.bw, ptr %i.bu, align 8, !tbaa !212, !alias.scope !582
  %.not.i.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i.i, label %_ZN5folly3TryIvEC2ERKS1_.exit.i.i, label %_ZN5folly3TryIvEC2ERKS1_.exit.i.i.from.

_ZN5folly3TryIvEC2ERKS1_.exit.i.i.from.:          ; preds = %bb.t
  tail call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bu) #22
  %.sroa.0.0.copyload.i.i.i.i.i.pre.i.i = load ptr, ptr %i.bp, align 8, !tbaa !32, !noalias !579
  br label %_ZN5folly3TryIvEC2ERKS1_.exit.i.i

_ZN5folly3TryIvEC2ERKS1_.exit.i.i:                ; preds = %bb.t, %AfterCoroSuspend131, %_ZN5folly3TryIvEC2ERKS1_.exit.i.i.from.
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.i.i, %_ZN5folly3TryIvEC2ERKS1_.exit.i.i.from. ], [ %i.bq, %AfterCoroSuspend131 ], [ %i.bq, %bb.t ] ; 2 uses
  store i64 0, ptr %i.bp, align 8, !tbaa !32, !noalias !579
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  invoke void %i.by(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i)
          to label %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskIvE7AwaiterEE12await_resumeEv.exit unwind label %bb.u, !inline_history !207

bb.u:                                             ; preds = %_ZN5folly3TryIvEC2ERKS1_.exit.i.i
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  tail call void @__clang_call_terminate(ptr %i.ca) #26
  unreachable

_ZN5folly4coro6detail10TryAwaiterINS0_4TaskIvE7AwaiterEE12await_resumeEv.exit: ; preds = %_ZN5folly3TryIvEC2ERKS1_.exit.i.i
  %i.cb = load ptr, ptr %.reload.addr239, align 8, !tbaa !168 ; 3 uses
  %.not.i.i38 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i38, label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvE7AwaiterEED2Ev.exit39, label %bb.v

bb.v:                                             ; preds = %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskIvE7AwaiterEE12await_resumeEv.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8
  invoke void %i.cd(ptr nonnull %i.cb)
          to label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvE7AwaiterEED2Ev.exit39 unwind label %bb.w, !inline_history !207

bb.w:                                             ; preds = %bb.v
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  tail call void @__clang_call_terminate(ptr %i.cf) #26
  unreachable

_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvE7AwaiterEED2Ev.exit39: ; preds = %bb.v, %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskIvE7AwaiterEE12await_resumeEv.exit
  %i.cg = load ptr, ptr %.reload.addr240, align 8, !tbaa !168 ; 3 uses
  %.not.i.i40 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i40, label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvEEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvE7AwaiterEED2Ev.exit39
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  invoke void %i.ci(ptr nonnull %i.cg)
          to label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvEEED2Ev.exit unwind label %bb.y, !inline_history !207

bb.y:                                             ; preds = %bb.x
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  tail call void @__clang_call_terminate(ptr %i.ck) #26
  unreachable

_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvEEED2Ev.exit: ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvE7AwaiterEED2Ev.exit39, %bb.x
  %i.cl = load i8, ptr %.reload.addr232, align 8, !tbaa !69, !range !28, !noundef !29
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %.thread, label %bb.z

bb.z:                                             ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvEEED2Ev.exit
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %.reload = load ptr, ptr %.reload.addr, align 8, !tbaa !546
  %i.cn = getelementptr inbounds nuw i8, ptr %.reload, i64 80
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !noalias !583 ; 3 uses
  store i64 0, ptr %i.co, align 8, !noalias !583
  store i64 %i.cp, ptr %.reload.addr239, align 8
  %i.cq = load ptr, ptr %i.cn, align 8, !tbaa !212
  %.not.i41 = icmp eq ptr %i.cq, null
  %i.cr = inttoptr i64 %i.cp to ptr
  br i1 %.not.i41, label %bb.aa, label %_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.thread

.thread:                                          ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvEEED2Ev.exit
  store i64 0, ptr %.reload.addr239, align 8
  br label %_ZN5folly17exception_wrapperD2Ev.exit48

bb.aa:                                            ; preds = %bb.z
  %.not75 = icmp eq i64 %i.cp, 0
  br i1 %.not75, label %_ZN5folly17exception_wrapperD2Ev.exit48, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cs = tail call noundef ptr @_ZN5folly6detail23exception_ptr_get_type_ERKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr239) #22 ; 2 uses
  %.not.i.i.i.i42 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i42, label %_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ct = tail call noundef ptr @_ZN5folly6detail25exception_ptr_get_object_ERKNSt15__exception_ptr13exception_ptrEPKSt9type_info(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr239, ptr noundef null) #22 ; 0 uses
  %i.cu = icmp eq ptr %i.cs, @_ZTIN5folly18OperationCancelledE
  br i1 %i.cu, label %_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.thread.from._ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.threadthread-pre-split, label %_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit

_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit: ; preds = %bb.ac, %bb.ab
  %i.cv = tail call noundef ptr @_ZN5folly6detail25exception_ptr_get_object_ERKNSt15__exception_ptr13exception_ptrEPKSt9type_info(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr239, ptr noundef nonnull @_ZTIN5folly18OperationCancelledE) #22
  %.not = icmp eq ptr %i.cv, null
  br i1 %.not, label %bb.ad, label %_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.thread.from._ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.threadthread-pre-split

bb.ad:                                            ; preds = %_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit
  %.reload198 = load ptr, ptr %.reload.addr, align 8, !tbaa !546
  %i.cw = getelementptr inbounds nuw i8, ptr %.reload198, i64 80 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8            ; 2 uses
  store i64 %i.cx, ptr %.reload.addr236, align 8
  %i.cy = load i64, ptr %.reload.addr239, align 8
  store i64 %i.cy, ptr %i.cw, align 8
  store i64 0, ptr %.reload.addr239, align 8
  %.not.i.i43 = icmp eq i64 %i.cx, 0
  br i1 %.not.i.i43, label %_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.thread.from._ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.threadthread-pre-split, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr236) #22
  br label %_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.thread.from._ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.threadthread-pre-split

_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvE7AwaiterEED2Ev.exit: ; preds = %.lr.ph
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = load ptr, ptr %.reload.addr240, align 8, !tbaa !168 ; 3 uses
  %.not.i.i44 = icmp eq ptr %i.da, null
  br i1 %.not.i.i44, label %.from.178, label %bb.af

bb.af:                                            ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvE7AwaiterEED2Ev.exit
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8
  invoke void %i.dc(ptr nonnull %i.da)
          to label %.from.178 unwind label %bb.ag, !inline_history !207

bb.ag:                                            ; preds = %bb.af
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  tail call void @__clang_call_terminate(ptr %i.de) #26
  unreachable

_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.thread.from._ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.threadthread-pre-split: ; preds = %bb.ac, %_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit, %bb.ae, %bb.ad
  %.pr.pr = load ptr, ptr %.reload.addr239, align 8, !tbaa !212
  br label %_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.thread

_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.thread: ; preds = %bb.z, %_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.thread.from._ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.threadthread-pre-split
  %.pr = phi ptr [ %.pr.pr, %_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.thread.from._ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.threadthread-pre-split ], [ %i.cr, %bb.z ]
  %.not.i.i47 = icmp eq ptr %.pr, null
  br i1 %.not.i.i47, label %_ZN5folly17exception_wrapperD2Ev.exit48, label %bb.ah

bb.ah:                                            ; preds = %_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.thread
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr239) #22
  br label %_ZN5folly17exception_wrapperD2Ev.exit48

_ZN5folly17exception_wrapperD2Ev.exit48:          ; preds = %.thread, %bb.ah, %_ZNK5folly17exception_wrapper13get_exceptionINS_18OperationCancelledEEEPKT_v.exit.thread, %bb.aa
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.dg = load i8, ptr %.reload.addr232, align 8, !tbaa !69, !range !28, !noundef !29
  %i.dh = trunc nuw i8 %i.dg to i1
  %i.di = load ptr, ptr %i.df, align 8
  %.not.i.i.i49 = icmp eq ptr %i.di, null
  %or.cond = select i1 %i.dh, i1 true, i1 %.not.i.i.i49
  br i1 %or.cond, label %_ZN5folly3TryIvED2Ev.exit50.thread, label %bb.ai

bb.ai:                                            ; preds = %_ZN5folly17exception_wrapperD2Ev.exit48
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.df) #22
  br label %_ZN5folly3TryIvED2Ev.exit50.thread

_ZN5folly3TryIvED2Ev.exit50.thread:               ; preds = %bb.ai, %_ZN5folly17exception_wrapperD2Ev.exit48
  %.sroa.064.082.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 400
  %.sroa.064.082.reload = load ptr, ptr %.sroa.064.082.reload.addr, align 8, !tbaa !546
  %.reload.addr228 = getelementptr inbounds nuw i8, ptr %0, i64 392
  %.reload229 = load ptr, ptr %.reload.addr228, align 8, !tbaa !546 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.064.082.reload, i64 8 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %.reload229
  br i1 %i.dk, label %bb.aj, label %.lr.ph

.from.178:                                        ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvE7AwaiterEED2Ev.exit, %bb.af
  tail call void @_ZNSt4pairIbSt6vectorIN5folly4coro4TaskIvEESaIS4_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr231) #22
  br label %.from.187

bb.aj:                                            ; preds = %_ZN5folly3TryIvED2Ev.exit50.thread
  %.reload.addr215.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 384
  %.reload216.pre = load ptr, ptr %.reload.addr215.phi.trans.insert, align 8, !tbaa !546 ; 3 uses
  %.reload.addr212 = getelementptr inbounds nuw i8, ptr %0, i64 409
  %.reload213 = load i8, ptr %.reload.addr212, align 1, !tbaa !546 ; 2 uses
  %.reload.addr224.a = getelementptr inbounds nuw i8, ptr %0, i64 392
  %.reload.addr215 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.dl = icmp eq ptr %.reload216.pre, %.reload229
  br i1 %i.dl, label %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.aj, %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i
  %.reload22710 = phi ptr [ %.reload227, %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i ], [ %.reload229, %bb.aj ]
  %.05.i.i.i.i = phi ptr [ %i.dr, %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i ], [ %.reload216.pre, %bb.aj ] ; 2 uses
  %i.dm = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !168 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8
  invoke void %i.do(ptr nonnull %i.dm)
          to label %._ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i_crit_edge unwind label %bb.al, !inline_history !207

._ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i_crit_edge: ; preds = %bb.ak
  %.reload227.pre = load ptr, ptr %.reload.addr224.a, align 8, !tbaa !546
  br label %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i

bb.al:                                            ; preds = %bb.ak
  %i.dp = landingpad { ptr, i32 }
          catch ptr null
  %i.dq = extractvalue { ptr, i32 } %i.dp, 0
  tail call void @__clang_call_terminate(ptr %i.dq) #26
  unreachable

_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i: ; preds = %._ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i_crit_edge, %.lr.ph.i.i.i.i
  %.reload227 = phi ptr [ %.reload227.pre, %._ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i_crit_edge ], [ %.reload22710, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i51 = icmp eq ptr %i.dr, %.reload227
  br i1 %.not.i.i.i.i51, label %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.ithread-pre-split, label %.lr.ph.i.i.i.i, !llvm.loop !586

_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.ithread-pre-split: ; preds = %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i
  %.reload222.pr = load ptr, ptr %.reload.addr215, align 8, !tbaa !546
  br label %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %.thread23, %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.ithread-pre-split, %bb.aj
  %.in = phi i8 [ %.reload213, %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.ithread-pre-split ], [ %.reload213, %bb.aj ], [ %.reload21327, %.thread23 ]
  %.reload222 = phi ptr [ %.reload222.pr, %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.ithread-pre-split ], [ %.reload216.pre, %bb.aj ], [ %i.bf, %.thread23 ] ; 3 uses
  %i.ds = trunc i8 %.in to i1
  %.not.i.i1.i.i = icmp eq ptr %.reload222, null
  br i1 %.not.i.i1.i.i, label %_ZNSt4pairIbSt6vectorIN5folly4coro4TaskIvEESaIS4_EEED2Ev.exit, label %_ZNSt4pairIbSt6vectorIN5folly4coro4TaskIvEESaIS4_EEED2Ev.exit.from.

_ZNSt4pairIbSt6vectorIN5folly4coro4TaskIvEESaIS4_EEED2Ev.exit.from.: ; preds = %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !31
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %.reload222 to i64
  %i.dx = sub i64 %i.dv, %i.dw
  tail call void @_ZdlPvm(ptr noundef nonnull %.reload222, i64 noundef %i.dx) #25
  br label %_ZNSt4pairIbSt6vectorIN5folly4coro4TaskIvEESaIS4_EEED2Ev.exit

_ZNSt4pairIbSt6vectorIN5folly4coro4TaskIvEESaIS4_EEED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i, %_ZNSt4pairIbSt6vectorIN5folly4coro4TaskIvEESaIS4_EEED2Ev.exit.from.
  br i1 %i.ds, label %bb.am, label %.preheader

bb.am:                                            ; preds = %_ZNSt4pairIbSt6vectorIN5folly4coro4TaskIvEESaIS4_EEED2Ev.exit
  %.reload.addr201 = getelementptr inbounds nuw i8, ptr %0, i64 376
  %.reload202 = load ptr, ptr %.reload.addr201, align 8, !tbaa !546
  %i.dy = getelementptr inbounds nuw i8, ptr %.reload202, i64 80 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8            ; 2 uses
  %.not76 = icmp eq ptr %i.dz, null
  %i.ea = ptrtoint ptr %i.dz to i64               ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  br i1 %.not76, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void @llvm.experimental.noalias.scope.decl(metadata !587)
  store i64 %i.ea, ptr %.reload.addr242, align 8, !alias.scope !587
  store i64 0, ptr %i.dy, align 8, !noalias !587
  %i.ec = load i8, ptr %i.eb, align 8, !tbaa !69, !range !28, !noundef !29
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !212
  %.not.i.i.i.i52 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i.i52, label %bb.ap, label %.from.185

.from.185:                                        ; preds = %bb.ao
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ee) #22
  %.pre = load i64, ptr %.reload.addr242, align 8, !noalias !590
  br label %bb.ap

bb.ap:                                            ; preds = %.from.185, %bb.an, %bb.ao
  %i.eg = phi i64 [ %.pre, %.from.185 ], [ %i.ea, %bb.an ], [ %i.ea, %bb.ao ]
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590)
  store i64 %i.eg, ptr %i.eh, align 8, !alias.scope !590
  store i64 0, ptr %.reload.addr242, align 8, !noalias !590
  store i8 0, ptr %i.eb, align 8, !tbaa !69
  store i3 -4, ptr %index.addr, align 8
  %i.ei = tail call ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter13await_suspendINS1_11TaskPromiseIvEEEENSt7__n486116coroutine_handleIvEENS8_IT_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr236, ptr nonnull %0) #22 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8
  musttail call void %i.ej(ptr nonnull %i.ei)
  ret void

.from.187:                                        ; preds = %bb.q, %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit, %.from.178
  %.pn21.pn = phi { ptr, i32 } [ %i.cz, %.from.178 ], [ %.pn, %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit ], [ %.pn, %bb.q ]
  %.6 = extractvalue { ptr, i32 } %.pn21.pn, 0
  %i.ek = tail call ptr @__cxa_begin_catch(ptr %.6) #22 ; 0 uses
  tail call void @_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr247) #22
  invoke void @__cxa_end_catch()
          to label %bb.aq unwind label %_ZN5folly4coro6detail15TaskPromiseBasedlEPvm.exit63

bb.aq:                                            ; preds = %.from.187, %bb.ar, %_ZN5folly17exception_wrapperD2Ev.exit.i.i
  store ptr null, ptr %0, align 8
  store i3 -3, ptr %index.addr, align 8
  %i.el = tail call ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter13await_suspendINS1_11TaskPromiseIvEEEENSt7__n486116coroutine_handleIvEENS8_IT_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr239, ptr nonnull %0) #22 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8
  musttail call void %i.em(ptr nonnull %i.el)
  ret void

bb.ar:                                            ; preds = %bb.am
  %i.en = load i8, ptr %i.eb, align 8, !tbaa !69, !range !28, !noundef !29
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %bb.aq, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !212
  %.not.i.i.i.i59 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i.i59, label %_ZN5folly17exception_wrapperD2Ev.exit.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ep) #22
  br label %_ZN5folly17exception_wrapperD2Ev.exit.i.i

_ZN5folly17exception_wrapperD2Ev.exit.i.i:        ; preds = %bb.at, %bb.as
  store i8 1, ptr %i.eb, align 8, !tbaa !69
  br label %bb.aq

CoroEnd:                                          ; preds = %resume.entry, %resume.entry
  ret void

_ZN5folly4coro6detail15TaskPromiseBasedlEPvm.exit63: ; preds = %.from.187
  %i.er = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 8
  store i3 -3, ptr %index.addr, align 8
  resume { ptr, i32 } %i.er

unreachable:                                      ; preds = %resume.entry
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly4coro17SerialQueueRunner3runEv.destroy(ptr noundef nonnull align 8 dereferenceable(416) %0) #12 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr231 = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %.reload.addr233.a = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %.reload.addr236 = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.reload.addr240 = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.reload.addr242 = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 408
  %index = load i3, ptr %index.addr, align 8
  switch i3 %index, label %unreachable [
    i3 0, label %.loopexit
    i3 1, label %AfterCoroSuspend123
    i3 2, label %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7Awaiter12await_resumeEv.exit
    i3 3, label %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskIvE7AwaiterEE12await_resumeEv.exit
    i3 -4, label %AfterCoroSuspend135
    i3 -3, label %.loopexit
  ]

AfterCoroSuspend123:                              ; preds = %resume.entry
  %i.a = load ptr, ptr %.reload.addr233.a, align 8, !tbaa !212
  %.not.i.i.i27 = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i27, label %_ZN5folly4coro8co_errorD2Ev.exit28, label %bb.a

bb.a:                                             ; preds = %AfterCoroSuspend123
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr233.a) #22
  br label %_ZN5folly4coro8co_errorD2Ev.exit28

_ZN5folly4coro8co_errorD2Ev.exit28:               ; preds = %bb.a, %AfterCoroSuspend123
  %i.b = load ptr, ptr %.reload.addr231, align 8, !tbaa !212
  %.not.i.i29 = icmp eq ptr %i.b, null
  br i1 %.not.i.i29, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %_ZN5folly4coro8co_errorD2Ev.exit28
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr231) #22
  br label %.loopexit

_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7Awaiter12await_resumeEv.exit: ; preds = %resume.entry
  %.reload.addr232 = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.c = load ptr, ptr %.reload.addr232, align 8, !tbaa !88 ; 3 uses
  %.not.i31 = icmp eq ptr %i.c, null
  br i1 %.not.i31, label %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit32, label %bb.c

bb.c:                                             ; preds = %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7Awaiter12await_resumeEv.exit
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr nonnull %i.c)
          to label %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit32 unwind label %bb.d, !inline_history !566

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #26
  unreachable

_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit32: ; preds = %bb.c, %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7Awaiter12await_resumeEv.exit
  %i.h = load ptr, ptr %.reload.addr236, align 8, !tbaa !88 ; 3 uses
  %.not.i33 = icmp eq ptr %i.h, null
  br i1 %.not.i33, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit32
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr nonnull %i.h)
          to label %.loopexit unwind label %bb.f, !inline_history !566

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #26
  unreachable

_ZN5folly4coro6detail10TryAwaiterINS0_4TaskIvE7AwaiterEE12await_resumeEv.exit: ; preds = %resume.entry
  %.reload.addr239 = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.m = load ptr, ptr %.reload.addr239, align 8, !tbaa !168 ; 3 uses
  %.not.i.i38 = icmp eq ptr %i.m, null
  br i1 %.not.i.i38, label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvE7AwaiterEED2Ev.exit39, label %bb.g

bb.g:                                             ; preds = %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskIvE7AwaiterEE12await_resumeEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  invoke void %i.o(ptr nonnull %i.m)
          to label %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvE7AwaiterEED2Ev.exit39 unwind label %bb.h, !inline_history !207

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #26
  unreachable

_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvE7AwaiterEED2Ev.exit39: ; preds = %bb.g, %_ZN5folly4coro6detail10TryAwaiterINS0_4TaskIvE7AwaiterEE12await_resumeEv.exit
  %i.r = load ptr, ptr %.reload.addr240, align 8, !tbaa !168 ; 3 uses
  %.not.i.i40 = icmp eq ptr %i.r, null
  br i1 %.not.i.i40, label %.from._ZN5folly3TryIvED2Ev.exit50, label %bb.i

bb.i:                                             ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvE7AwaiterEED2Ev.exit39
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  invoke void %i.t(ptr nonnull %i.r)
          to label %.from._ZN5folly3TryIvED2Ev.exit50 unwind label %bb.j, !inline_history !207

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #26
  unreachable

.from._ZN5folly3TryIvED2Ev.exit50:                ; preds = %_ZN5folly4coro6detail27CommutativeWrapperAwaitableINS1_12TryAwaitableENS0_4TaskIvE7AwaiterEED2Ev.exit39, %bb.i
  %.reload.addr224.a = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %.reload225.a = load ptr, ptr %.reload.addr224.a, align 8, !tbaa !546 ; 2 uses
  %.reload.addr215 = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %.reload216 = load ptr, ptr %.reload.addr215, align 8, !tbaa !546 ; 3 uses
  %i.w = icmp eq ptr %.reload216, %.reload225.a
  br i1 %i.w, label %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.from._ZN5folly3TryIvED2Ev.exit50, %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i
  %.reload2276 = phi ptr [ %.reload227, %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i ], [ %.reload225.a, %.from._ZN5folly3TryIvED2Ev.exit50 ]
  %.05.i.i.i.i = phi ptr [ %i.ac, %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i ], [ %.reload216, %.from._ZN5folly3TryIvED2Ev.exit50 ] ; 2 uses
  %i.x = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !168 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  invoke void %i.z(ptr nonnull %i.x)
          to label %._ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i_crit_edge unwind label %bb.l, !inline_history !207

._ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i_crit_edge: ; preds = %bb.k
  %.reload227.pre = load ptr, ptr %.reload.addr224.a, align 8, !tbaa !546
  br label %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #26
  unreachable

_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i: ; preds = %._ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i_crit_edge, %.lr.ph.i.i.i.i
  %.reload227 = phi ptr [ %.reload227.pre, %._ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i_crit_edge ], [ %.reload2276, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i51 = icmp eq ptr %i.ac, %.reload227
  br i1 %.not.i.i.i.i51, label %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.ithread-pre-split, label %.lr.ph.i.i.i.i, !llvm.loop !593

_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.ithread-pre-split: ; preds = %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i
  %.reload222.pr = load ptr, ptr %.reload.addr215, align 8, !tbaa !546
  br label %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.ithread-pre-split, %.from._ZN5folly3TryIvED2Ev.exit50
  %.reload222 = phi ptr [ %.reload222.pr, %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.ithread-pre-split ], [ %.reload216, %.from._ZN5folly3TryIvED2Ev.exit50 ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %.reload222, null
  br i1 %.not.i.i1.i.i, label %.loopexit, label %_ZNSt4pairIbSt6vectorIN5folly4coro4TaskIvEESaIS4_EEED2Ev.exit.from.

_ZNSt4pairIbSt6vectorIN5folly4coro4TaskIvEESaIS4_EEED2Ev.exit.from.: ; preds = %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !31
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %.reload222 to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %.reload222, i64 noundef %i.ah) #25
  br label %.loopexit

AfterCoroSuspend135:                              ; preds = %resume.entry
  %i.ai = load ptr, ptr %.reload.addr242, align 8, !tbaa !212
  %.not.i.i.i57 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i57, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %AfterCoroSuspend135
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr242) #22
  br label %.loopexit

.loopexit:                                        ; preds = %resume.entry, %AfterCoroSuspend135, %bb.m, %_ZNSt4pairIbSt6vectorIN5folly4coro4TaskIvEESaIS4_EEED2Ev.exit.from., %_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7AwaiterD2Ev.exit32, %bb.e, %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i, %_ZN5folly4coro8co_errorD2Ev.exit28, %bb.b, %resume.entry
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !69, !range !28, !noundef !29
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZN5folly3TryIvED2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %.loopexit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !212
  %.not.i.i.i.i61 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i61, label %_ZN5folly3TryIvED2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.am) #22
  br label %_ZN5folly3TryIvED2Ev.exit.i

_ZN5folly3TryIvED2Ev.exit.i:                      ; preds = %bb.o, %bb.n, %.loopexit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !83 ; 5 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i1.i, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZN5folly3TryIvED2Ev.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = atomicrmw sub ptr %i.aq, i64 8 acq_rel, align 8 ; 2 uses
  %i.as = icmp ult i64 %i.ar, 16
  br i1 %i.as, label %bb.q, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.q:                                             ; preds = %bb.p
  %i.at = and i64 %i.ar, 4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.at, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40) %i.ap) #22
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.s:                                             ; preds = %bb.q
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !114
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void %i.aw(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.ap) #22, !call_target !116, !inline_history !531
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

_ZN5folly17CancellationTokenD2Ev.exit.i.i:        ; preds = %bb.s, %bb.r, %bb.p, %_ZN5folly3TryIvED2Ev.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !77 ; 2 uses
  %i.az = and i64 %i.ay, -4                       ; 2 uses
  %i.ba = inttoptr i64 %i.az to ptr               ; 2 uses
  %.not.i.i1.i.i62 = icmp eq i64 %i.az, 0
  br i1 %.not.i.i1.i.i62, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i.i
  store i64 0, ptr %i.ax, align 8, !tbaa !131
  %i.bb = and i64 %i.ay, 3
  %.not3.i.i.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not3.i.i.i.i, label %bb.u, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit

bb.u:                                             ; preds = %bb.t
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !114
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.be = load ptr, ptr %i.bd, align 8
  tail call void %i.be(ptr noundef nonnull align 8 dereferenceable(8) %i.ba) #22, !call_target !132, !inline_history !532
  br label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit

_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit: ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i.i, %bb.t, %bb.u
  invoke void @folly_coro_async_free(ptr noundef nonnull %0, i64 noundef 416)
          to label %CoroEnd unwind label %bb.v

bb.v:                                             ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  tail call void @__clang_call_terminate(ptr %i.bg) #26
  unreachable

CoroEnd:                                          ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit
  ret void

unreachable:                                      ; preds = %resume.entry
  unreachable
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { cold noreturn }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #16 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nounwind }
attributes #23 = { noreturn }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !23, i64 72}
!12 = !{!"_ZTSN5folly4coro17SerialQueueRunnerE", !13, i64 0, !16, i64 40, !18, i64 48, !23, i64 72, !24, i64 73, !26, i64 80}
!13 = !{!"_ZTSN5folly4coro17SerialQueueRunner5MutexE", !14, i64 0}
!14 = !{!"_ZTSSt5mutex", !15, i64 0}
!15 = !{!"_ZTSSt12__mutex_base", !9, i64 0}
!16 = !{!"p1 _ZTSN5folly4coro5BatonE", !17, i64 0}
!17 = !{!"any pointer", !9, i64 0}
!18 = !{!"_ZTSSt6vectorIN5folly4coro4TaskIvEESaIS3_EE", !19, i64 0}
!19 = !{!"_ZTSSt12_Vector_baseIN5folly4coro4TaskIvEESaIS3_EE", !20, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseIN5folly4coro4TaskIvEESaIS3_EE12_Vector_implE", !21, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIN5folly4coro4TaskIvEESaIS3_EE17_Vector_impl_dataE", !22, i64 0, !22, i64 8, !22, i64 16}
!22 = !{!"p1 _ZTSN5folly4coro4TaskIvEE", !17, i64 0}
!23 = !{!"bool", !9, i64 0}
!24 = !{!"_ZTSSt6atomicIbE", !25, i64 0}
!25 = !{!"_ZTSSt13__atomic_baseIbE", !23, i64 0}
!26 = !{!"_ZTSN5folly17exception_wrapperE", !27, i64 0}
!27 = !{!"_ZTSNSt15__exception_ptr13exception_ptrE", !17, i64 0}
!28 = !{i8 0, i8 2}
!29 = !{}
!30 = !{!21, !22, i64 8}
!31 = !{!21, !22, i64 16}
!32 = !{!17, !17, i64 0}
!33 = !{!12, !16, i64 40}
!34 = !{!21, !22, i64 0}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZSt19__relocate_object_aIN5folly4coro4TaskIvEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!37 = distinct !{!37, !"_ZSt19__relocate_object_aIN5folly4coro4TaskIvEES3_SaIS3_EEvPT_PT0_RT1_"}
!38 = !{!39}
!39 = distinct !{!39, !37, !"_ZSt19__relocate_object_aIN5folly4coro4TaskIvEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!40 = !{!39, !41}
!41 = distinct !{!41, !42}
!42 = distinct !{!42, !"LVerDomain"}
!43 = !{!36, !44}
!44 = distinct !{!44, !42}
!45 = distinct !{!45, !46, !47, !48}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"llvm.loop.isvectorized", i32 1}
!48 = !{!"llvm.loop.unroll.runtime.disable"}
!49 = !{!"branch_weights", i32 4, i32 12}
!50 = distinct !{!50, !46, !47, !48}
!51 = distinct !{!51, !46, !47}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZSt19__relocate_object_aIN5folly4coro4TaskIvEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!54 = distinct !{!54, !"_ZSt19__relocate_object_aIN5folly4coro4TaskIvEES3_SaIS3_EEvPT_PT0_RT1_"}
!55 = !{!56}
!56 = distinct !{!56, !54, !"_ZSt19__relocate_object_aIN5folly4coro4TaskIvEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!57 = !{!56, !58}
!58 = distinct !{!58, !59}
!59 = distinct !{!59, !"LVerDomain"}
!60 = !{!53, !61}
!61 = distinct !{!61, !59}
!62 = distinct !{!62, !46, !47, !48}
!63 = distinct !{!63, !46, !47, !48}
!64 = distinct !{!64, !46, !47}
!65 = !{!66, !17, i64 0}
!66 = !{!"_ZTSNSt7__n486116coroutine_handleIN5folly4coro6detail24ScopeExitTaskPromiseBaseEEE", !17, i64 0}
!67 = !{!68, !17, i64 0}
!68 = !{!"_ZTSN5folly4coro23ExtendedCoroutineHandle11PromiseBaseE", !17, i64 0}
!69 = !{!70, !23, i64 0}
!70 = !{!"_ZTSN5folly3TryIvEE", !23, i64 0, !9, i64 8}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvE17get_return_objectEv: argument 0"}
!73 = distinct !{!73, !"_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvE17get_return_objectEv"}
!74 = !{!75, !76, i64 0}
!75 = !{!"_ZTSN5folly4coro6detail23BypassExceptionThrowingE", !76, i64 0}
!76 = !{!"_ZTSN5folly4coro6detail23BypassExceptionThrowing10BypassModeE", !9, i64 0}
!77 = !{!78, !79, i64 0}
!78 = !{!"_ZTSN5folly17ExecutorKeepAliveINS_8ExecutorEEE", !79, i64 0}
!79 = !{!"long", !9, i64 0}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZNK5folly17ExecutorKeepAliveINS_8ExecutorEE9get_aliasEv: argument 0"}
!82 = distinct !{!82, !"_ZNK5folly17ExecutorKeepAliveINS_8ExecutorEE9get_aliasEv"}
!83 = !{!84, !84, i64 0}
!84 = !{!"p1 _ZTSN5folly6detail17CancellationStateE", !17, i64 0}
!85 = !{!86}
end_hunk_0
