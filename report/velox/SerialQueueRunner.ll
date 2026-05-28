inline.NumInlined: 1112
inline.NumDeleted: 534
begin_hunk_0_@_ZN5folly4coro6detail11BasePromiseINS_4UnitEE15await_transformINS0_4TaskISt4pairIbSt6vectorINS6_IvEESaIS9_EEEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDaOSF_:bb.a
  br i1 %.not3.i.i.i.i.i, label %bb.l, label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !114, !noalias !126
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !126
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.am) #22, !noalias !126, !call_target !132, !inline_history !138
  br label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit

_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit: ; preds = %bb.l, %bb.k, %_ZNK5folly4coro6detail3adl24WithCancellationFunctionclINS0_4TaskISt4pairIbSt6vectorINS5_IvEESaIS8_EEEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDTcl19co_withCancellationfp_scSE_fp0_EERKNS_17CancellationTokenEOSE_.exit
  %i.ar = or i64 %i.f, 2
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !77, !noalias !126
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %0, align 8, !alias.scope !139
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly4coro17SerialQueueRunner4pullEv(ptr dead_on_unwind writable writeonly sret(%"class.folly::coro::Task.8") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.from.73:
  %i.a = tail call noundef ptr @folly_coro_async_malloc(i64 noundef 176) ; 9 uses
  store ptr @_ZN5folly4coro17SerialQueueRunner4pullEv.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN5folly4coro17SerialQueueRunner4pullEv.destroy, ptr %destroy.addr, align 8
  %.reload.addr120 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.spill.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store ptr %1, ptr %.spill.addr, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.reload.addr120, i8 0, i64 58, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr null, ptr %i.b, align 8, !tbaa !65
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail11TaskPromiseISt4pairIbSt6vectorINS0_4TaskIvEESaIS7_EEEEEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeESF_SH_, ptr %i.c, align 8, !tbaa !67
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i32 2, ptr %i.d, align 8, !tbaa !146
  store ptr %i.a, ptr %0, align 8, !tbaa !32, !alias.scope !149
  %index.addr121 = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store i2 0, ptr %index.addr121, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr ptr @_ZN5folly4coro4TaskISt4pairIbSt6vectorINS1_IvEESaIS4_EEEE7Awaiter13await_suspendINS0_6detail11TaskPromiseIvEEEEDaNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !88     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr %1, ptr %i.b, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !152
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.e = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.e, ptr %i.f, align 8, !tbaa !153
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !154  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.i, ptr %i.j, align 8, !tbaa !154
  store ptr %i.g, ptr %i.d, align 8, !tbaa !155
  store atomic ptr %i.d, ptr %i.i release, align 8
  store ptr null, ptr %i.h, align 8, !tbaa !154
  %.sroa.06.0.copyload = load ptr, ptr %0, align 8, !tbaa !32
  ret ptr %.sroa.06.0.copyload
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly4coro6detail11BasePromiseINS_4UnitEE15await_transformINS1_12TryAwaitableINS0_4TaskIvEEEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDaOSB_(ptr dead_on_unwind noalias writable sret(%"class.folly::coro::detail::TryAwaitable") align 8 %0, ptr noundef nonnull align 8 dereferenceable(59) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !74
  %i.c = icmp eq i8 %i.b, 2
  %i.d = zext i1 %i.c to i8
  store i8 %i.d, ptr %i.a, align 1, !tbaa !74
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !77, !noalias !156
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !83, !noalias !159 ; 6 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5folly17CancellationTokenC2ERKS0_.exit.i.i.i.i.i.i, label %_ZN5folly17CancellationTokenC2ERKS0_.exit.thread.i.i.i.i.i.i

_ZN5folly17CancellationTokenC2ERKS0_.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.i = load ptr, ptr %2, align 8, !tbaa !168, !noalias !170 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !tbaa !93, !range !28, !noalias !170, !noundef !29
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.k, label %bb.b

_ZN5folly17CancellationTokenC2ERKS0_.exit.thread.i.i.i.i.i.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.n = atomicrmw add ptr %i.m, i64 8 monotonic, align 8, !noalias !173 ; 0 uses
  %i.o = load ptr, ptr %2, align 8, !tbaa !168, !noalias !176 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !tbaa !93, !range !28, !noalias !176, !noundef !29
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.g, label %bb.b

bb.b:                                             ; preds = %_ZN5folly17CancellationTokenC2ERKS0_.exit.thread.i.i.i.i.i.i, %_ZN5folly17CancellationTokenC2ERKS0_.exit.i.i.i.i.i.i
  %i.s = phi ptr [ %i.p, %_ZN5folly17CancellationTokenC2ERKS0_.exit.thread.i.i.i.i.i.i ], [ %i.j, %_ZN5folly17CancellationTokenC2ERKS0_.exit.i.i.i.i.i.i ]
  %i.t = phi ptr [ %i.o, %_ZN5folly17CancellationTokenC2ERKS0_.exit.thread.i.i.i.i.i.i ], [ %i.i, %_ZN5folly17CancellationTokenC2ERKS0_.exit.i.i.i.i.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !83, !noalias !170 ; 5 uses
  store ptr %i.h, ptr %i.u, align 8, !tbaa !83, !noalias !170
  %.not.i.i.i.i.i.i.i2.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i2.i.i.i.i.i.i, label %_ZN5folly4coro6detail11BasePromiseINS_4UnitEE20setCancellationTokenENS_17CancellationTokenE.exit.thread.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = atomicrmw sub ptr %i.w, i64 8 acq_rel, align 8, !noalias !170 ; 2 uses
  %i.y = icmp ult i64 %i.x, 16
  br i1 %i.y, label %bb.d, label %_ZN5folly4coro6detail11BasePromiseINS_4UnitEE20setCancellationTokenENS_17CancellationTokenE.exit.thread.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.z = and i64 %i.x, 4
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40) %i.v) #22, !noalias !170
  br label %_ZN5folly4coro6detail11BasePromiseINS_4UnitEE20setCancellationTokenENS_17CancellationTokenE.exit.thread.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !114, !noalias !170
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !170
  tail call void %i.ac(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.v) #22, !noalias !170, !call_target !116, !inline_history !178
  br label %_ZN5folly4coro6detail11BasePromiseINS_4UnitEE20setCancellationTokenENS_17CancellationTokenE.exit.thread.i.i.i.i.i.i.i

_ZN5folly4coro6detail11BasePromiseINS_4UnitEE20setCancellationTokenENS_17CancellationTokenE.exit.thread.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e, %bb.c, %bb.b
  store i8 1, ptr %i.s, align 8, !tbaa !93, !noalias !170
  br label %bb.k

bb.g:                                             ; preds = %_ZN5folly17CancellationTokenC2ERKS0_.exit.thread.i.i.i.i.i.i
  %i.ad = atomicrmw sub ptr %i.m, i64 8 acq_rel, align 8, !noalias !170 ; 2 uses
  %i.ae = icmp ult i64 %i.ad, 16
  br i1 %i.ae, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.af = and i64 %i.ad, 4
  %.not.i.i.i.i.i3.i.i.i.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.i.i3.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40) %i.h) #22, !noalias !170
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr %i.h, align 8, !tbaa !114, !noalias !170
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !170
  tail call void %i.ai(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.h) #22, !noalias !170, !call_target !116, !inline_history !179
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g, %_ZN5folly4coro6detail11BasePromiseINS_4UnitEE20setCancellationTokenENS_17CancellationTokenE.exit.thread.i.i.i.i.i.i.i, %_ZN5folly17CancellationTokenC2ERKS0_.exit.i.i.i.i.i.i
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %2, align 8, !tbaa !32, !noalias !170 ; 2 uses
  store i64 0, ptr %2, align 8, !tbaa !32, !noalias !170
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 56 ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !77, !noalias !180 ; 2 uses
  %i.al = and i64 %i.ak, -4                       ; 2 uses
  %i.am = inttoptr i64 %i.al to ptr               ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i64 0, ptr %i.aj, align 8, !tbaa !131, !noalias !180
  %i.an = and i64 %i.ak, 3
  %.not3.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not3.i.i.i.i.i.i.i.i.i.i, label %bb.m, label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !114, !noalias !180
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !180
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.am) #22, !noalias !180, !call_target !132, !inline_history !191
  br label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit

_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit: ; preds = %bb.m, %bb.l, %bb.k
  %i.ar = or i64 %i.f, 2
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !77, !noalias !180
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %0, align 8, !alias.scope !192
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt4pairIbSt6vectorIN5folly4coro4TaskIvEESaIS4_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !168 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  invoke void %i.g(ptr nonnull %i.e)
          to label %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i unwind label %bb.c, !inline_history !207

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #26
  unreachable

_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !208

_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !34
  br label %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5folly4coro4TaskIvEESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #25
  br label %_ZNSt6vectorIN5folly4coro4TaskIvEESaIS3_EED2Ev.exit

_ZNSt6vectorIN5folly4coro4TaskIvEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %1 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @_ZN5folly17current_exceptionEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %1) #22
  %i.b = load i64, ptr %1, align 8, !noalias !209 ; 2 uses
  store i64 0, ptr %1, align 8, !noalias !209
  %i.c = load i8, ptr %i.a, align 8, !tbaa !69, !range !28, !noundef !29
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZN5folly17exception_wrapperD2Ev.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !212
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZN5folly17exception_wrapperD2Ev.exit.thread, label %_ZN5folly17exception_wrapperD2Ev.exit

_ZN5folly17exception_wrapperD2Ev.exit.thread:     ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.b, ptr %i.g, align 8, !alias.scope !213
  store i8 0, ptr %i.a, align 8, !tbaa !69
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZN5folly17exception_wrapperD2Ev.exit:            ; preds = %bb.b
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #22
  %.pre = load ptr, ptr %1, align 8, !tbaa !212
  %i.h = icmp eq ptr %.pre, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.b, ptr %i.i, align 8, !alias.scope !213
  store i8 0, ptr %i.a, align 8, !tbaa !69
  br i1 %i.h, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5folly17exception_wrapperD2Ev.exit
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #22
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %_ZN5folly17exception_wrapperD2Ev.exit.thread, %_ZN5folly17exception_wrapperD2Ev.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void
}

declare void @__cxa_end_catch() local_unnamed_addr

declare ptr @folly_coro_async_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail11TaskPromiseIvEEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeES8_SA_(ptr dead_on_unwind noalias writable sret(%"class.std::optional") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #14 comdat align 2 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = getelementptr inbounds i8, ptr %1, i64 -72
  tail call void @_ZN5folly4coro6detail11BasePromiseINS_4UnitEE27getErrorHandleUncheckedImplINS1_11TaskPromiseIvEEEESt8optionalISt4pairINS0_23ExtendedCoroutineHandleEPNS_15AsyncStackFrameEEERT_RNS_17exception_wrapperE(ptr dead_on_unwind writable sret(%"class.std::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly4coro6detail11BasePromiseINS_4UnitEE27getErrorHandleUncheckedImplINS1_11TaskPromiseIvEEEESt8optionalISt4pairINS0_23ExtendedCoroutineHandleEPNS_15AsyncStackFrameEEERT_RNS_17exception_wrapperE(ptr dead_on_unwind noalias writable sret(%"class.std::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.folly::coro::detail::TaskPromiseBase::FinalAwaiter", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.b = load i8, ptr %i.a, align 1, !tbaa !74
  switch i8 %i.b, label %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit.thread10 [
    i8 1, label %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit.thread
    i8 3, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !212
  %.not6.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not6.i.i.i.i.i, label %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef ptr @_ZN5folly6detail23exception_ptr_get_type_ERKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(8) %2) #22 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call noundef ptr @_ZN5folly6detail25exception_ptr_get_object_ERKNSt15__exception_ptr13exception_ptrEPKSt9type_info(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef null) #22 ; 0 uses
  %i.f = icmp eq ptr %i.d, @_ZTIN5folly18OperationCancelledE
  br i1 %i.f, label %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit.thread, label %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit

_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.g = tail call noundef ptr @_ZN5folly6detail25exception_ptr_get_object_ERKNSt15__exception_ptr13exception_ptrEPKSt9type_info(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @_ZTIN5folly18OperationCancelledE) #22
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit.thread10, label %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit.thread

_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit.thread: ; preds = %bb.d, %bb.a, %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.h = load i64, ptr %2, align 8, !noalias !216
  store i64 0, ptr %2, align 8, !noalias !216
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !69, !range !28, !noundef !29
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN5folly4coro8co_errorD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit.thread
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !212
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_ZN5folly4coro8co_errorD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #22
  br label %_ZN5folly4coro8co_errorD2Ev.exit

_ZN5folly4coro8co_errorD2Ev.exit:                 ; preds = %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit.thread, %bb.e, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 %i.h, ptr %i.n, align 8, !alias.scope !219
  store i8 0, ptr %i.i, align 8, !tbaa !69
  %i.o = call ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter21await_suspend_promiseINS1_11TaskPromiseIvEEEENSt7__n486116coroutine_handleIvEERT_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(96) %1) #22
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !155
  store ptr %i.o, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.q, ptr %.sroa.5.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.r, align 8, !tbaa !222
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.g

_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit.thread10: ; preds = %bb.a, %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.s, align 8, !tbaa !222
  br label %bb.g

bb.g:                                             ; preds = %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit.thread10, %_ZN5folly4coro8co_errorD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter21await_suspend_promiseINS1_11TaskPromiseIvEEEENSt7__n486116coroutine_handleIvEERT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::optional", align 8     ; 6 uses
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %4 = alloca %"class.folly::exception_wrapper", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !77, !noalias !224
  %i.h = or i64 %i.g, 2
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.j = load i8, ptr %i.i, align 8, !tbaa !69, !range !28, !noundef !29
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !212  ; 2 uses
  store ptr %i.m, ptr %4, align 8, !tbaa !212
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZN5folly17exception_wrapperC2ERKS0_.exit, label %bb.d
end_hunk_0
begin_hunk_1_@_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD0Ev:bb.a
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !294

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !434
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.c, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !77   ; 2 uses
  %i.t = and i64 %i.s, -4                         ; 2 uses
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  %.not.i.i1.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i1.i, label %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  store i64 0, ptr %i.r, align 8, !tbaa !131
  %i.v = and i64 %i.s, 3
  %.not3.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not3.i.i.i, label %bb.i, label %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !114
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #22, !call_target !132, !inline_history !435
  br label %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit

_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.h, %bb.i
  invoke void @folly_coro_async_free(ptr noundef nonnull %0, i64 noundef 72)
          to label %_ZN5folly4coro6detail23ViaCoroutinePromiseBasedlEPvm.exit unwind label %bb.j

bb.j:                                             ; preds = %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #26
  unreachable

_ZN5folly4coro6detail23ViaCoroutinePromiseBasedlEPvm.exit: ; preds = %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail12ViaCoroutineILb0EE12promise_typeEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeES9_SB_(ptr dead_on_unwind noalias writable sret(%"class.std::optional") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #14 comdat align 2 {
bb.a:
  %3 = alloca %"class.std::optional", align 16    ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !439)
  %i.a = getelementptr inbounds i8, ptr %1, i64 -56 ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %1, i64 -48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !230, !noalias !442 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !442
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67, !noalias !442
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %3, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(8) %2), !noalias !442, !inline_history !445
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load i8, ptr %i.e, align 8, !tbaa !222, !range !28, !noalias !442, !noundef !29
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !442
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load <2 x ptr>, ptr %3, align 16, !noalias !446
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !442
  br label %_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail12ViaCoroutineILb0EE12promise_typeEEC1EvENKUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_clES9_SB_.exit

bb.d:                                             ; preds = %.thread.i.i.i, %bb.a
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !32, !noalias !442
  %i.i = insertelement <2 x ptr> <ptr poison, ptr null>, ptr %.sroa.0.0.copyload.i.i.i.i, i64 0
  br label %_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail12ViaCoroutineILb0EE12promise_typeEEC1EvENKUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_clES9_SB_.exit

_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail12ViaCoroutineILb0EE12promise_typeEEC1EvENKUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_clES9_SB_.exit: ; preds = %bb.c, %bb.d
  %i.j = phi <2 x ptr> [ %i.i, %bb.d ], [ %i.h, %bb.c ]
  store <2 x ptr> %i.j, ptr %i.a, align 8, !tbaa !32, !noalias !446
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.k, align 8, !tbaa !222, !alias.scope !446
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !114
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #22, !call_target !286, !inline_history !447
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !270
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !7    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !114
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #22, !call_target !293, !inline_history !447
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare void @_ZN5folly14RequestContext11saveContextEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6detail8function5call_IZNS_4coro6detail23ViaCoroutinePromiseBase20scheduleContinuationEvEUlvE_Lb1ELb0EvJEEET2_DpT3_RNS1_4DataE(ptr noundef nonnull align 16 dereferenceable(48) %0) #12 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 16, !tbaa !448
  tail call void @_ZN5folly4coro6detail23ViaCoroutinePromiseBase19executeContinuationEv(ptr noundef nonnull align 8 dereferenceable(72) %i.a) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm16EEEmNS1_2OpEPNS1_4DataES6_(i32 noundef %0, ptr noundef %1, ptr noundef %2) #12 comdat align 2 {
bb.a:
  switch i32 %0, label %bb.c [
    i32 0, label %bb.b
    i32 1, label %bb.d
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @abort() #26
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.a
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly4coro6detail23ViaCoroutinePromiseBase19executeContinuationEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %2 = alloca %"class.folly::RequestContextScopeGuard", align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  invoke void @_ZN5folly14RequestContext10setContextEOSt10shared_ptrIS0_E(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %1, ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = load <2 x ptr>, ptr %1, align 16, !tbaa !32
  store <2 x ptr> %i.b, ptr %2, align 16, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = call noundef zeroext i1 @_ZN5folly21isSuspendedLeafActiveERNS_15AsyncStackFrameE(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #22
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZN5folly23deactivateSuspendedLeafERNS_15AsyncStackFrameE(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !155  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32   ; 3 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5folly36resumeCoroutineWithNewAsyncStackRootENSt7__n486116coroutine_handleIvEERNS_15AsyncStackFrameE(ptr %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.e) #22
  br label %_ZN5folly4coro23ExtendedCoroutineHandle6resumeEv.exit

bb.f:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr nonnull %i.g)
          to label %_ZN5folly4coro23ExtendedCoroutineHandle6resumeEv.exit unwind label %bb.g, !inline_history !450

_ZN5folly4coro23ExtendedCoroutineHandle6resumeEv.exit: ; preds = %bb.f, %bb.e
  call void @_ZN5folly29RequestContextSaverScopeGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void

bb.g:                                             ; preds = %bb.f, %bb.a
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #26
  unreachable
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN5folly21isSuspendedLeafActiveERNS_15AsyncStackFrameE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN5folly23deactivateSuspendedLeafERNS_15AsyncStackFrameE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN5folly36resumeCoroutineWithNewAsyncStackRootENSt7__n486116coroutine_handleIvEERNS_15AsyncStackFrameE(ptr, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly29RequestContextSaverScopeGuardD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::shared_ptr", align 8   ; 2 uses
  invoke void @_ZN5folly14RequestContext10setContextEOSt10shared_ptrIS0_E(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %1, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !282  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.c, align 8, !tbaa !283
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !285
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !114
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !call_target !286, !inline_history !295
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !114
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !call_target !293, !inline_history !295
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !270
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.f ], [ %i.p, %bb.g ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.h, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !294

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !282  ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.t, align 8, !tbaa !283
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !285
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !114
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #22, !call_target !286, !inline_history !295
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !114
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #22, !call_target !293, !inline_history !295
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5

bb.k:                                             ; preds = %bb.i
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !270
  %.not.i.i.i2 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i2, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

bb.m:                                             ; preds = %bb.k
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i4 = phi i32 [ %i.w, %bb.l ], [ %i.ag, %bb.m ]
  %i.ah = icmp eq i32 %.0.i.i.i.i4, 1
  br i1 %i.ah, label %bb.n, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5, !prof !294

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #22
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5: ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.n
  ret void

bb.o:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #26
  unreachable
}

declare void @_ZN5folly14RequestContext10setContextEOSt10shared_ptrIS0_E(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly4coro6detail12ViaCoroutineILb0EE11saveContextEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !255    ; 2 uses
  invoke void @_ZN5folly14RequestContext11saveContextEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %1)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.e = load <2 x ptr>, ptr %1, align 16, !tbaa !32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !282  ; 8 uses
  store <2 x ptr> %i.e, ptr %i.b, align 8, !tbaa !32
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZN5folly4coro6detail23ViaCoroutinePromiseBase17setRequestContextESt10shared_ptrINS_14RequestContextEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.g, align 8, !tbaa !283
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !285
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !114
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #22, !call_target !286, !inline_history !292
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !114
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #22, !call_target !293, !inline_history !292
  br label %_ZN5folly4coro6detail23ViaCoroutinePromiseBase17setRequestContextESt10shared_ptrINS_14RequestContextEE.exit

bb.e:                                             ; preds = %bb.c
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !270
  %.not.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.j, %bb.f ], [ %i.t, %bb.g ]
end_hunk_1
begin_hunk_2_@_ZN5folly4coro6detail12ViaCoroutineILb0EE11saveContextEv:bb.a
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5folly4coro6detail23ViaCoroutinePromiseBase17setRequestContextESt10shared_ptrINS_14RequestContextEE.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  ret void

bb.o:                                             ; preds = %bb.a
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #26
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN5folly21activateSuspendedLeafERNS_15AsyncStackFrameE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNK5folly4coro5Baton8waitImplEPNS1_13WaitOperationE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN5folly6detail17CancellationState14removeCallbackEPNS_20CancellationCallbackE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly4coro6detail11BasePromiseINS_4UnitEE15await_transformINS0_4TaskIvEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDaOS9_(ptr dead_on_unwind noalias writable sret(%"class.folly::coro::Task<>::Awaiter") align 8 %0, ptr noundef nonnull align 8 dereferenceable(59) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 57 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !74
  %i.c = icmp eq i8 %i.b, 2
  %i.d = zext i1 %i.c to i8
  store i8 %i.d, ptr %i.a, align 1, !tbaa !74
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !77, !noalias !451
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !83, !noalias !454 ; 6 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN5folly17CancellationTokenC2ERKS0_.exit.i, label %_ZN5folly17CancellationTokenC2ERKS0_.exit.thread.i

_ZN5folly17CancellationTokenC2ERKS0_.exit.i:      ; preds = %bb.a
  %i.i = load ptr, ptr %2, align 8, !tbaa !168, !noalias !457 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !tbaa !93, !range !28, !noalias !457, !noundef !29
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZNK5folly4coro6detail3adl24WithCancellationFunctionclINS0_4TaskIvEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDTcl19co_withCancellationfp_scS8_fp0_EERKNS_17CancellationTokenEOS8_.exit, label %bb.b

_ZN5folly17CancellationTokenC2ERKS0_.exit.thread.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.n = atomicrmw add ptr %i.m, i64 8 monotonic, align 8, !noalias !460 ; 0 uses
  %i.o = load ptr, ptr %2, align 8, !tbaa !168, !noalias !463 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !tbaa !93, !range !28, !noalias !463, !noundef !29
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.g, label %bb.b

bb.b:                                             ; preds = %_ZN5folly17CancellationTokenC2ERKS0_.exit.thread.i, %_ZN5folly17CancellationTokenC2ERKS0_.exit.i
  %i.s = phi ptr [ %i.p, %_ZN5folly17CancellationTokenC2ERKS0_.exit.thread.i ], [ %i.j, %_ZN5folly17CancellationTokenC2ERKS0_.exit.i ]
  %i.t = phi ptr [ %i.o, %_ZN5folly17CancellationTokenC2ERKS0_.exit.thread.i ], [ %i.i, %_ZN5folly17CancellationTokenC2ERKS0_.exit.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !83, !noalias !457 ; 5 uses
  store ptr %i.h, ptr %i.u, align 8, !tbaa !83, !noalias !457
  %.not.i.i.i.i.i.i.i2.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i2.i, label %_ZN5folly4coro6detail11BasePromiseINS_4UnitEE20setCancellationTokenENS_17CancellationTokenE.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = atomicrmw sub ptr %i.w, i64 8 acq_rel, align 8, !noalias !457 ; 2 uses
  %i.y = icmp ult i64 %i.x, 16
  br i1 %i.y, label %bb.d, label %_ZN5folly4coro6detail11BasePromiseINS_4UnitEE20setCancellationTokenENS_17CancellationTokenE.exit.thread.i.i

bb.d:                                             ; preds = %bb.c
  %i.z = and i64 %i.x, 4
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40) %i.v) #22, !noalias !457
  br label %_ZN5folly4coro6detail11BasePromiseINS_4UnitEE20setCancellationTokenENS_17CancellationTokenE.exit.thread.i.i

bb.f:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !114, !noalias !457
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !457
  tail call void %i.ac(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.v) #22, !noalias !457, !call_target !116, !inline_history !465
  br label %_ZN5folly4coro6detail11BasePromiseINS_4UnitEE20setCancellationTokenENS_17CancellationTokenE.exit.thread.i.i

_ZN5folly4coro6detail11BasePromiseINS_4UnitEE20setCancellationTokenENS_17CancellationTokenE.exit.thread.i.i: ; preds = %bb.f, %bb.e, %bb.c, %bb.b
  store i8 1, ptr %i.s, align 8, !tbaa !93, !noalias !457
  br label %_ZNK5folly4coro6detail3adl24WithCancellationFunctionclINS0_4TaskIvEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDTcl19co_withCancellationfp_scS8_fp0_EERKNS_17CancellationTokenEOS8_.exit

bb.g:                                             ; preds = %_ZN5folly17CancellationTokenC2ERKS0_.exit.thread.i
  %i.ad = atomicrmw sub ptr %i.m, i64 8 acq_rel, align 8, !noalias !457 ; 2 uses
  %i.ae = icmp ult i64 %i.ad, 16
  br i1 %i.ae, label %bb.h, label %_ZNK5folly4coro6detail3adl24WithCancellationFunctionclINS0_4TaskIvEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDTcl19co_withCancellationfp_scS8_fp0_EERKNS_17CancellationTokenEOS8_.exit

bb.h:                                             ; preds = %bb.g
  %i.af = and i64 %i.ad, 4
  %.not.i.i.i.i.i3.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.i.i3.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40) %i.h) #22, !noalias !457
  br label %_ZNK5folly4coro6detail3adl24WithCancellationFunctionclINS0_4TaskIvEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDTcl19co_withCancellationfp_scS8_fp0_EERKNS_17CancellationTokenEOS8_.exit

bb.j:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr %i.h, align 8, !tbaa !114, !noalias !457
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !457
  tail call void %i.ai(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.h) #22, !noalias !457, !call_target !116, !inline_history !466
  br label %_ZNK5folly4coro6detail3adl24WithCancellationFunctionclINS0_4TaskIvEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDTcl19co_withCancellationfp_scS8_fp0_EERKNS_17CancellationTokenEOS8_.exit

_ZNK5folly4coro6detail3adl24WithCancellationFunctionclINS0_4TaskIvEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDTcl19co_withCancellationfp_scS8_fp0_EERKNS_17CancellationTokenEOS8_.exit: ; preds = %_ZN5folly17CancellationTokenC2ERKS0_.exit.i, %_ZN5folly4coro6detail11BasePromiseINS_4UnitEE20setCancellationTokenENS_17CancellationTokenE.exit.thread.i.i, %bb.g, %bb.i, %bb.j
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %2, align 8, !tbaa !32, !noalias !457 ; 2 uses
  store i64 0, ptr %2, align 8, !tbaa !32, !noalias !457
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 56 ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !77, !noalias !467 ; 2 uses
  %i.al = and i64 %i.ak, -4                       ; 2 uses
  %i.am = inttoptr i64 %i.al to ptr               ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK5folly4coro6detail3adl24WithCancellationFunctionclINS0_4TaskIvEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDTcl19co_withCancellationfp_scS8_fp0_EERKNS_17CancellationTokenEOS8_.exit
  store i64 0, ptr %i.aj, align 8, !tbaa !131, !noalias !467
  %i.an = and i64 %i.ak, 3
  %.not3.i.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not3.i.i.i.i.i, label %bb.l, label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !114, !noalias !467
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !467
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.am) #22, !noalias !467, !call_target !132, !inline_history !472
  br label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit

_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit: ; preds = %bb.l, %bb.k, %_ZNK5folly4coro6detail3adl24WithCancellationFunctionclINS0_4TaskIvEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDTcl19co_withCancellationfp_scS8_fp0_EERKNS_17CancellationTokenEOS8_.exit
  %i.ar = or i64 %i.f, 2
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !77, !noalias !467
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %0, align 8, !alias.scope !473
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr ptr @_ZN5folly4coro4TaskIvE7Awaiter13await_suspendINS0_6detail11TaskPromiseISt4pairIbSt6vectorIS2_SaIS2_EEEEEEEDaNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !168    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr %1, ptr %i.b, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !152
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.e = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.e, ptr %i.f, align 8, !tbaa !153
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !154  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.i, ptr %i.j, align 8, !tbaa !154
  store ptr %i.g, ptr %i.d, align 8, !tbaa !155
  store atomic ptr %i.d, ptr %i.i release, align 8
  store ptr null, ptr %i.h, align 8, !tbaa !154
  %.sroa.06.0.copyload = load ptr, ptr %0, align 8, !tbaa !32
  ret ptr %.sroa.06.0.copyload
}

; Function Attrs: nounwind
declare void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseISt4pairIbSt6vectorINS0_4TaskIvEESaIS7_EEEEESA_E19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @_ZN5folly17current_exceptionEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %1) #22
  %i.b = load i64, ptr %1, align 8, !noalias !480 ; 2 uses
  store i64 0, ptr %1, align 8, !noalias !480
  %i.c = load i32, ptr %i.a, align 8, !tbaa !483
  store i32 2, ptr %i.a, align 8, !tbaa !483
  switch i32 %i.c, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.critedge [
    i32 0, label %bb.b
    i32 1, label %bb.f
  ], !prof !484

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30   ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.m, %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i.i.i ], [ %i.e, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !168 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr nonnull %i.h)
          to label %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i.i.i unwind label %bb.d, !inline_history !207

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #26
  unreachable

_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, %i.g
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !208

_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !34
  br label %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i, %bb.b
  %i.n = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.e, %bb.b ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN5folly17exception_wrapperD2Ev.exitthread-pre-split, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !31
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #25
  br label %_ZN5folly17exception_wrapperD2Ev.exitthread-pre-split

bb.f:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !212
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZN5folly17exception_wrapperD2Ev.exitthread-pre-split, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t) #22
  br label %_ZN5folly17exception_wrapperD2Ev.exitthread-pre-split

_ZN5folly17exception_wrapperD2Ev.exitthread-pre-split: ; preds = %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i, %bb.e, %bb.f, %bb.g
  %.pr = load ptr, ptr %1, align 8, !tbaa !212
  %i.v = icmp eq ptr %.pr, null
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.b, ptr %i.w, align 8, !alias.scope !485
  store i32 1, ptr %i.a, align 8, !tbaa !146
  br i1 %i.v, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5folly17exception_wrapperD2Ev.exitthread-pre-split
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #22
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.critedge: ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.b, ptr %i.x, align 8, !alias.scope !485
  store i32 1, ptr %i.a, align 8, !tbaa !146
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.critedge, %_ZN5folly17exception_wrapperD2Ev.exitthread-pre-split, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter13await_suspendINS1_11TaskPromiseISt4pairIbSt6vectorINS0_4TaskIvEESaIS9_EEEEEEENSt7__n486116coroutine_handleIvEENSF_IT_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = tail call ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter21await_suspend_promiseINS1_11TaskPromiseISt4pairIbSt6vectorINS0_4TaskIvEESaIS9_EEEEEEENSt7__n486116coroutine_handleIvEERT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(120) %i.a) #22
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseISt4pairIbSt6vectorINS0_4TaskIvEESaIS7_EEEEESA_ED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i32, ptr %i.a, align 8, !tbaa !146
  switch i32 %i.b, label %_ZN5folly6detail7TryBaseISt4pairIbSt6vectorINS_4coro4TaskIvEESaIS6_EEEED2Ev.exit [
    i32 0, label %bb.b
    i32 1, label %bb.f
  ], !prof !484

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30   ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.l, %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.g = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !168 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr nonnull %i.g)
          to label %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i.i unwind label %bb.d, !inline_history !207

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #26
  unreachable

_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !208

_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !34
  br label %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.b
  %i.m = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i.i.i, label %_ZN5folly6detail7TryBaseISt4pairIbSt6vectorINS_4coro4TaskIvEESaIS6_EEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #25
  br label %_ZN5folly6detail7TryBaseISt4pairIbSt6vectorINS_4coro4TaskIvEESaIS6_EEEED2Ev.exit

bb.f:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !212
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZN5folly6detail7TryBaseISt4pairIbSt6vectorINS_4coro4TaskIvEESaIS6_EEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s) #22
  br label %_ZN5folly6detail7TryBaseISt4pairIbSt6vectorINS_4coro4TaskIvEESaIS6_EEEED2Ev.exit

_ZN5folly6detail7TryBaseISt4pairIbSt6vectorINS_4coro4TaskIvEESaIS6_EEEED2Ev.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.i, %bb.e, %bb.f, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !83   ; 5 uses
  %.not.i.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i1, label %_ZN5folly17CancellationTokenD2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZN5folly6detail7TryBaseISt4pairIbSt6vectorINS_4coro4TaskIvEESaIS6_EEEED2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = atomicrmw sub ptr %i.w, i64 8 acq_rel, align 8 ; 2 uses
  %i.y = icmp ult i64 %i.x, 16
  br i1 %i.y, label %bb.i, label %_ZN5folly17CancellationTokenD2Ev.exit.i

bb.i:                                             ; preds = %bb.h
  %i.z = and i64 %i.x, 4
  %.not.i.i.i.i.i2 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.i.i2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40) %i.v) #22
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i

bb.k:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !114
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.v) #22, !call_target !116, !inline_history !488
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i

_ZN5folly17CancellationTokenD2Ev.exit.i:          ; preds = %bb.k, %bb.j, %bb.h, %_ZN5folly6detail7TryBaseISt4pairIbSt6vectorINS_4coro4TaskIvEESaIS6_EEEED2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !77 ; 2 uses
  %i.af = and i64 %i.ae, -4                       ; 2 uses
  %i.ag = inttoptr i64 %i.af to ptr               ; 2 uses
  %.not.i.i1.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i1.i, label %_ZN5folly4coro6detail11BasePromiseINS_4UnitEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i
  store i64 0, ptr %i.ad, align 8, !tbaa !131
  %i.ah = and i64 %i.ae, 3
  %.not3.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not3.i.i.i, label %bb.m, label %_ZN5folly4coro6detail11BasePromiseINS_4UnitEED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !114
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #22, !call_target !132, !inline_history !489
  br label %_ZN5folly4coro6detail11BasePromiseINS_4UnitEED2Ev.exit

_ZN5folly4coro6detail11BasePromiseINS_4UnitEED2Ev.exit: ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i, %bb.l, %bb.m
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail11TaskPromiseISt4pairIbSt6vectorINS0_4TaskIvEESaIS7_EEEEEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeESF_SH_(ptr dead_on_unwind noalias writable sret(%"class.std::optional") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #14 comdat align 2 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = getelementptr inbounds i8, ptr %1, i64 -72
  tail call void @_ZN5folly4coro6detail11BasePromiseINS_4UnitEE27getErrorHandleUncheckedImplINS1_11TaskPromiseISt4pairIbSt6vectorINS0_4TaskIvEESaISA_EEEEEEESt8optionalIS7_INS0_23ExtendedCoroutineHandleEPNS_15AsyncStackFrameEEERT_RNS_17exception_wrapperE(ptr dead_on_unwind writable sret(%"class.std::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly4coro6detail11BasePromiseINS_4UnitEE27getErrorHandleUncheckedImplINS1_11TaskPromiseISt4pairIbSt6vectorINS0_4TaskIvEESaISA_EEEEEEESt8optionalIS7_INS0_23ExtendedCoroutineHandleEPNS_15AsyncStackFrameEEERT_RNS_17exception_wrapperE(ptr dead_on_unwind noalias writable sret(%"class.std::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.folly::coro::detail::TaskPromiseBase::FinalAwaiter", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.b = load i8, ptr %i.a, align 1, !tbaa !74
  switch i8 %i.b, label %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit.thread8 [
    i8 1, label %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit.thread
    i8 3, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !212
  %.not6.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not6.i.i.i.i.i, label %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef ptr @_ZN5folly6detail23exception_ptr_get_type_ERKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(8) %2) #22 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call noundef ptr @_ZN5folly6detail25exception_ptr_get_object_ERKNSt15__exception_ptr13exception_ptrEPKSt9type_info(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef null) #22 ; 0 uses
  %i.f = icmp eq ptr %i.d, @_ZTIN5folly18OperationCancelledE
  br i1 %i.f, label %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit.thread, label %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit

_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.g = tail call noundef ptr @_ZN5folly6detail25exception_ptr_get_object_ERKNSt15__exception_ptr13exception_ptrEPKSt9type_info(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @_ZTIN5folly18OperationCancelledE) #22
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit.thread8, label %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit.thread

_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit.thread: ; preds = %bb.d, %bb.a, %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.h = load i64, ptr %2, align 8, !noalias !490
  store i64 0, ptr %2, align 8, !noalias !490
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !483
  store i32 2, ptr %i.i, align 8, !tbaa !483
  switch i32 %i.j, label %_ZN5folly4coro8co_errorD2Ev.exit [
    i32 0, label %bb.e
    i32 1, label %bb.i
  ], !prof !484

bb.e:                                             ; preds = %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit.thread
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !34   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !30   ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.e, %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.t, %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.l, %bb.e ] ; 2 uses
  %i.o = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !168 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  invoke void %i.q(ptr nonnull %i.o)
          to label %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i.i.i.i unwind label %bb.g, !inline_history !207

bb.g:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #26
  unreachable

_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.t, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !208

_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !34
  br label %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %bb.e
  %i.u = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.l, %bb.e ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZN5folly4coro8co_errorD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #25
  br label %_ZN5folly4coro8co_errorD2Ev.exit

bb.i:                                             ; preds = %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !212
  %.not.i.i.i.i.i6 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i6, label %_ZN5folly4coro8co_errorD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #22
  br label %_ZN5folly4coro8co_errorD2Ev.exit

_ZN5folly4coro8co_errorD2Ev.exit:                 ; preds = %bb.j, %bb.i, %bb.h, %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i, %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 %i.h, ptr %i.ac, align 8, !alias.scope !493
  store i32 1, ptr %i.i, align 8, !tbaa !146
  %i.ad = call ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter21await_suspend_promiseINS1_11TaskPromiseISt4pairIbSt6vectorINS0_4TaskIvEESaIS9_EEEEEEENSt7__n486116coroutine_handleIvEERT_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(120) %1) #22
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !155
  store ptr %i.ad, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.af, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.ag, align 8, !tbaa !222
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.k

_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit.thread8: ; preds = %bb.a, %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.ah, align 8, !tbaa !222
  br label %bb.k

bb.k:                                             ; preds = %_ZN5folly4coro6detail23BypassExceptionThrowing15shouldBypassForERNS_17exception_wrapperE.exit.thread8, %_ZN5folly4coro8co_errorD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter21await_suspend_promiseINS1_11TaskPromiseISt4pairIbSt6vectorINS0_4TaskIvEESaIS9_EEEEEEENSt7__n486116coroutine_handleIvEERT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::optional", align 8     ; 6 uses
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %4 = alloca %"class.folly::exception_wrapper", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !77, !noalias !496
  %i.h = or i64 %i.g, 2
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.j = load i32, ptr %i.i, align 8, !tbaa !146
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !212  ; 2 uses
  store ptr %i.m, ptr %4, align 8, !tbaa !212
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZN5folly17exception_wrapperC2ERKS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #22
  br label %_ZN5folly17exception_wrapperC2ERKS0_.exit

bb.e:                                             ; preds = %bb.b
  store ptr null, ptr %4, align 8, !tbaa !212
  br label %_ZN5folly17exception_wrapperC2ERKS0_.exit

_ZN5folly17exception_wrapperC2ERKS0_.exit:        ; preds = %bb.d, %bb.c, %bb.e
  store <2 x ptr> %i.d, ptr %i.c, align 8, !tbaa !32
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.e, ptr %i.n, align 8, !tbaa !227
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !77   ; 2 uses
  %i.q = and i64 %i.p, -4                         ; 2 uses
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i, label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEEaSEOS2_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN5folly17exception_wrapperC2ERKS0_.exit
  store i64 0, ptr %i.o, align 8, !tbaa !131
  %i.s = and i64 %i.p, 3
  %.not3.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not3.i.i.i, label %bb.g, label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEEaSEOS2_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !114
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.r) #22, !call_target !132, !inline_history !229
  br label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEEaSEOS2_.exit.i

_ZN5folly17ExecutorKeepAliveINS_8ExecutorEEaSEOS2_.exit.i: ; preds = %bb.g, %bb.f, %_ZN5folly17exception_wrapperC2ERKS0_.exit
  store i64 %i.h, ptr %i.o, align 8, !tbaa !77
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  store i64 %i.x, ptr %3, align 8
  %i.y = load i64, ptr %4, align 8
  store i64 %i.y, ptr %i.w, align 8
  store i64 0, ptr %4, align 8
  %.not.i.i2.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i2.i, label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit.critedge, label %_ZN5folly4coro6detail24ScopeExitTaskPromiseBase10setContextENS0_23ExtendedCoroutineHandleEPNS_15AsyncStackFrameENS_17ExecutorKeepAliveINS_8ExecutorEEENS_17exception_wrapperE.exit

_ZN5folly4coro6detail24ScopeExitTaskPromiseBase10setContextENS0_23ExtendedCoroutineHandleEPNS_15AsyncStackFrameENS_17ExecutorKeepAliveINS_8ExecutorEEENS_17exception_wrapperE.exit: ; preds = %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEEaSEOS2_.exit.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #22
  %.pr = load ptr, ptr %4, align 8, !tbaa !212
  %i.z = icmp eq ptr %.pr, null
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %i.z, label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5folly4coro6detail24ScopeExitTaskPromiseBase10setContextENS0_23ExtendedCoroutineHandleEPNS_15AsyncStackFrameENS_17ExecutorKeepAliveINS_8ExecutorEEENS_17exception_wrapperE.exit
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #22
  br label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit

_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit.critedge: ; preds = %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEEaSEOS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit

_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit: ; preds = %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit.critedge, %bb.h, %_ZN5folly4coro6detail24ScopeExitTaskPromiseBase10setContextENS0_23ExtendedCoroutineHandleEPNS_15AsyncStackFrameENS_17ExecutorKeepAliveINS_8ExecutorEEENS_17exception_wrapperE.exit
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !65
  br label %_ZN5folly4coro23ExtendedCoroutineHandle14getErrorHandleERNS_17exception_wrapperE.exit

bb.i:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !155 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !154 ; 2 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %_ZN5folly24popAsyncStackFrameCalleeERNS_15AsyncStackFrameE.exit, label %.split10.i

.split10.i:                                       ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !154
  br label %_ZN5folly24popAsyncStackFrameCalleeERNS_15AsyncStackFrameE.exit

_ZN5folly24popAsyncStackFrameCalleeERNS_15AsyncStackFrameE.exit: ; preds = %bb.i, %.split10.i
  store atomic ptr %i.ac, ptr %i.ae release, align 8
  store ptr null, ptr %i.ad, align 8, !tbaa !154
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !146
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %bb.j, label %bb.n

bb.j:                                             ; preds = %_ZN5folly24popAsyncStackFrameCalleeERNS_15AsyncStackFrameE.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !230, !noalias !499 ; 3 uses
  %.not.i22 = icmp eq ptr %i.ak, null
  br i1 %.not.i22, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !499
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !67, !noalias !499
  invoke void %i.am(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %2, ptr noundef nonnull %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %.noexc23 unwind label %bb.o, !inline_history !234

.noexc23:                                         ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !222, !range !28, !noalias !499, !noundef !29
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.l, label %.thread.i

.thread.i:                                        ; preds = %.noexc23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !499
  br label %bb.m

bb.l:                                             ; preds = %.noexc23
  %.sroa.0.0.copyload25 = load ptr, ptr %2, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !499
  br label %_ZN5folly4coro23ExtendedCoroutineHandle14getErrorHandleERNS_17exception_wrapperE.exit

bb.m:                                             ; preds = %.thread.i, %bb.j
  %.sroa.0.0.copyload.i.i = load ptr, ptr %1, align 8, !tbaa !32, !noalias !499
  br label %_ZN5folly4coro23ExtendedCoroutineHandle14getErrorHandleERNS_17exception_wrapperE.exit

bb.n:                                             ; preds = %_ZN5folly24popAsyncStackFrameCalleeERNS_15AsyncStackFrameE.exit
  %.sroa.0.0.copyload.i24 = load ptr, ptr %1, align 8, !tbaa !32
  br label %_ZN5folly4coro23ExtendedCoroutineHandle14getErrorHandleERNS_17exception_wrapperE.exit

_ZN5folly4coro23ExtendedCoroutineHandle14getErrorHandleERNS_17exception_wrapperE.exit: ; preds = %bb.l, %bb.m, %bb.n, %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit
  %.sroa.016.0 = phi ptr [ %i.aa, %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit ], [ %.sroa.0.0.copyload.i24, %bb.n ], [ %.sroa.0.0.copyload.i.i, %bb.m ], [ %.sroa.0.0.copyload25, %bb.l ]
  ret ptr %.sroa.016.0

bb.o:                                             ; preds = %bb.k
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.resume(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 8)) %0) #12 align 2 personality ptr @__gxx_personality_v0 {
CoroEnd:
  %.reload.addr13 = getelementptr inbounds nuw i8, ptr %0, i64 97
  store ptr null, ptr %0, align 8
  tail call void @_ZN5folly4coro6detail12ViaCoroutineILb0EE12promise_type12FinalAwaiter13await_suspendENSt7__n486116coroutine_handleIS4_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr13, ptr nonnull %0) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.destroy(ptr noundef nonnull align 8 captures(none) dereferenceable(104) initializes((16, 24)) %0) #12 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5folly4coro6detail23ViaCoroutinePromiseBaseE, i64 16), ptr %.reload.addr14, align 8, !tbaa !114
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !282  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.a

bb.a:                                             ; preds = %resume.entry
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.c, align 8, !tbaa !283
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !285
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !114
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !call_target !286, !inline_history !433
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !114
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !call_target !293, !inline_history !433
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.c:                                             ; preds = %bb.a
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !270
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from., label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.11

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.11: ; preds = %bb.c
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.: ; preds = %bb.c
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from., %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.11
  %.0.i.i.i.i.i = phi i32 [ %i.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from.11 ], [ %i.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.from. ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.d, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !294

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !434
  br label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.b, %resume.entry
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !77   ; 2 uses
  %i.t = and i64 %i.s, -4                         ; 2 uses
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  %.not.i.i1.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i1.i, label %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  store i64 0, ptr %i.r, align 8, !tbaa !131
  %i.v = and i64 %i.s, 3
  %.not3.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not3.i.i.i, label %bb.f, label %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !114
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #22, !call_target !132, !inline_history !435
  br label %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit

_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.e, %bb.f
  invoke void @folly_coro_async_free(ptr noundef nonnull %0, i64 noundef 104)
          to label %CoroEnd unwind label %bb.g

bb.g:                                             ; preds = %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #26
  unreachable

CoroEnd:                                          ; preds = %_ZN5folly4coro6detail23ViaCoroutinePromiseBaseD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5folly4coro17SerialQueueRunner5awaitEv.resume(ptr noundef nonnull align 16 dereferenceable(272) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr61 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %.reload.addr62 = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 5 uses
  %.reload.addr65 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %index = load i2, ptr %index.addr, align 8
  %i.a = icmp eq i2 %index, 0
  br i1 %i.a, label %AfterCoroSuspend, label %AfterCoroSuspend40

AfterCoroSuspend:                                 ; preds = %resume.entry
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %.reload = load ptr, ptr %.reload.addr, align 16, !tbaa !502
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(105) %.reload.addr61, i8 0, i64 24, i1 false)
  %i.e = ptrtoint ptr %.reload to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 ptrtoint (ptr @_ZN5folly4coro17SerialQueueRunner6cancelEv to i64), ptr %i.d, align 16, !tbaa !272
  %.repack5.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 0, ptr %.repack5.i.i.i, align 8, !tbaa !272
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %i.e, ptr %i.h, align 16, !tbaa !268
  store ptr @_ZN5folly6detail8function5call_ISt5_BindIFMNS_4coro17SerialQueueRunnerEFvvEPS5_EELb1ELb0EvJEEET2_DpT3_RNS1_4DataE, ptr %i.f, align 16, !tbaa !298
  store ptr @_ZN5folly6detail8function13DispatchSmall4execISt5_BindIFMNS_4coro17SerialQueueRunnerEFvvEPS6_EEEEmNS1_2OpEPNS1_4DataESE_, ptr %i.g, align 8, !tbaa !266
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr null, ptr %i.i, align 16, !tbaa !504
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 0, ptr %i.j, align 8, !tbaa !505
  %i.k = load ptr, ptr %i.b, align 16, !tbaa !83  ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %.from..i.i.i.i, label %bb.a

bb.a:                                             ; preds = %AfterCoroSuspend
  %i.l = tail call noundef zeroext i1 @_ZN5folly6detail17CancellationState14tryAddCallbackEPNS_20CancellationCallbackEb(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 16 dereferenceable(105) %.reload.addr61, i1 noundef zeroext true) #22
  br i1 %i.l, label %bb.b, label %.from..i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.b, align 16, !tbaa !83
  store ptr %i.m, ptr %i.c, align 16, !tbaa !260
  br label %.from..i.i.i.i

.from..i.i.i.i:                                   ; preds = %bb.b, %bb.a, %AfterCoroSuspend
  %.reload60 = load ptr, ptr %.reload.addr, align 16, !tbaa !502
  %i.n = getelementptr inbounds nuw i8, ptr %.reload60, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !33   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !74, !noalias !506
  %i.r = icmp eq i8 %i.q, 2
  %i.s = zext i1 %i.r to i8
  store i8 %i.s, ptr %i.p, align 1, !tbaa !74, !noalias !506
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.u = load i64, ptr %i.t, align 8, !tbaa !77, !noalias !509
  tail call void @llvm.experimental.noalias.scope.decl(metadata !512)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !515)
  %i.v = invoke noundef ptr @folly_coro_async_malloc(i64 noundef 104)
          to label %.from.50 unwind label %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i, !noalias !512 ; 8 uses

_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i: ; preds = %.from..i.i.i.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN5folly20CancellationCallbackD2Ev(ptr noundef nonnull align 16 dead_on_return(105) dereferenceable(105) %.reload.addr61) #22
  %.1 = extractvalue { ptr, i32 } %i.w, 0
  %i.x = tail call ptr @__cxa_begin_catch(ptr %.1) #22 ; 0 uses
  tail call void @_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr65) #22
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %_ZN5folly4coro6detail15TaskPromiseBasedlEPvm.exit23

.from.50:                                         ; preds = %.from..i.i.i.i
  %i.y = or i64 %i.u, 2
  store ptr @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.resume, ptr %i.v, align 8, !noalias !518
  %destroy.addr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_ZN5folly4coro6detail12ViaCoroutineILb0EE10createImplEv.destroy, ptr %destroy.addr.i.i.i.i, align 8, !noalias !518
  %.reload.addr14.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aa, i8 0, i64 56, i1 false), !noalias !518
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  store ptr @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail12ViaCoroutineILb0EE12promise_typeEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeES9_SB_, ptr %i.ab, align 8, !tbaa !67, !noalias !518
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5folly4coro6detail12ViaCoroutineILb0EE12promise_typeE, i64 16), ptr %.reload.addr14.i.i.i.i, align 8, !tbaa !114, !noalias !518
  store ptr %i.v, ptr %.reload.addr62, align 16, !tbaa !32, !alias.scope !519
  %index.addr15.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  store i1 false, ptr %index.addr15.i.i.i.i, align 8, !noalias !518
  store i64 %i.y, ptr %i.z, align 8, !tbaa !77, !noalias !518
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.o, ptr %i.ac, align 8, !tbaa !522, !alias.scope !523
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr null, ptr %i.ad, align 16, !tbaa !528, !alias.scope !523
  %i.ae = load atomic ptr, ptr %i.o acquire, align 8
  %i.af = icmp eq ptr %i.ae, %i.o
  br i1 %i.af, label %AfterCoroSuspend40, label %AfterCoroSave38

AfterCoroSave38:                                  ; preds = %.from.50
  store i2 1, ptr %index.addr, align 8
  %i.ag = tail call noundef zeroext i1 @_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE13await_suspendINS0_6detail11TaskPromiseIvEEEEbNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr62, ptr nonnull %0) #22
  br i1 %i.ag, label %CoroEnd, label %AfterCoroSuspend40

AfterCoroSuspend40:                               ; preds = %resume.entry, %AfterCoroSave38, %.from.50
  %i.ah = load ptr, ptr %.reload.addr62, align 16, !tbaa !255 ; 3 uses
  %.not.i.i16 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i16, label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit20, label %bb.c

bb.c:                                             ; preds = %AfterCoroSuspend40
  store i64 0, ptr %.reload.addr62, align 16, !tbaa !32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  invoke void %i.aj(ptr nonnull %i.ah)
          to label %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit unwind label %bb.d, !inline_history !529

bb.d:                                             ; preds = %bb.c
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  tail call void @__clang_call_terminate(ptr %i.al) #26
  unreachable

_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit: ; preds = %bb.c
  %.pr = load ptr, ptr %.reload.addr62, align 16, !tbaa !255 ; 3 uses
  %.not.i.i17 = icmp eq ptr %.pr, null
  br i1 %.not.i.i17, label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit20, label %bb.e

bb.e:                                             ; preds = %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit
  %i.am = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  invoke void %i.an(ptr nonnull %.pr)
          to label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit20 unwind label %bb.f, !inline_history !529

bb.f:                                             ; preds = %bb.e
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #26
  unreachable

_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit20: ; preds = %bb.e, %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit, %AfterCoroSuspend40
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ar = load ptr, ptr %i.aq, align 16, !tbaa !260 ; 2 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit20
  tail call void @_ZN5folly6detail17CancellationState14removeCallbackEPNS_20CancellationCallbackE(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 16 dereferenceable(105) %.reload.addr61) #22
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit20
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !266 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i21, label %_ZN5folly20CancellationCallbackD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.av = tail call noundef i64 %i.at(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.au, ptr noundef null) #22, !inline_history !530 ; 0 uses
  br label %_ZN5folly20CancellationCallbackD2Ev.exit

_ZN5folly20CancellationCallbackD2Ev.exit:         ; preds = %bb.h, %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 16, !tbaa !69, !range !28, !noundef !29
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN5folly20CancellationCallbackD2Ev.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !212
  %.not.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i, label %_ZN5folly17exception_wrapperD2Ev.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.az) #22
  br label %_ZN5folly17exception_wrapperD2Ev.exit.i.i

_ZN5folly17exception_wrapperD2Ev.exit.i.i:        ; preds = %bb.k, %bb.j
  store i8 1, ptr %i.aw, align 16, !tbaa !69
  br label %bb.l

bb.l:                                             ; preds = %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i, %_ZN5folly20CancellationCallbackD2Ev.exit, %_ZN5folly17exception_wrapperD2Ev.exit.i.i
  store ptr null, ptr %0, align 16
  store i2 -2, ptr %index.addr, align 8
  %i.bb = tail call ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter13await_suspendINS1_11TaskPromiseIvEEEENSt7__n486116coroutine_handleIvEENS8_IT_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr61, ptr nonnull %0) #22 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8
  musttail call void %i.bc(ptr nonnull %i.bb)
  ret void

CoroEnd:                                          ; preds = %AfterCoroSave38
  ret void

_ZN5folly4coro6detail15TaskPromiseBasedlEPvm.exit23: ; preds = %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit4.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 16
  store i2 -2, ptr %index.addr, align 8
  resume { ptr, i32 } %i.bd
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly4coro17SerialQueueRunner5awaitEv.destroy(ptr noundef nonnull align 16 dereferenceable(272) %0) #12 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr61 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 264
  %index = load i2, ptr %index.addr, align 8
  %i.a = icmp eq i2 %index, 1
  br i1 %i.a, label %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit, label %AfterCoroSuspend

_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit: ; preds = %resume.entry
  %.reload.addr62 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.pr = load ptr, ptr %.reload.addr62, align 16, !tbaa !255 ; 3 uses
  %.not.i.i17 = icmp eq ptr %.pr, null
  br i1 %.not.i.i17, label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit20, label %bb.a

bb.a:                                             ; preds = %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit
  %i.b = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr nonnull %.pr)
          to label %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit20 unwind label %bb.b, !inline_history !529

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #26
  unreachable

_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit20: ; preds = %bb.a, %_ZN5folly4coro17ViaIfAsyncAwaiterILb1ERNS0_5BatonEE12await_resumeEv.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !260 ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit20
  tail call void @_ZN5folly6detail17CancellationState14removeCallbackEPNS_20CancellationCallbackE(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 16 dereferenceable(105) %.reload.addr61) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN5folly4coro29StackAwareViaIfAsyncAwaitableIRNS0_5BatonEED2Ev.exit20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !266  ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i21, label %AfterCoroSuspend, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.k = tail call noundef i64 %i.i(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %i.j, ptr noundef null) #22, !inline_history !530 ; 0 uses
  br label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %resume.entry, %bb.d, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = load i8, ptr %i.l, align 16, !tbaa !69, !range !28, !noundef !29
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %_ZN5folly3TryIvED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %AfterCoroSuspend
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !212
  %.not.i.i.i.i22 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i22, label %_ZN5folly3TryIvED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o) #22
  br label %_ZN5folly3TryIvED2Ev.exit.i

_ZN5folly3TryIvED2Ev.exit.i:                      ; preds = %bb.g, %bb.f, %AfterCoroSuspend
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load ptr, ptr %i.q, align 16, !tbaa !83  ; 5 uses
  %.not.i.i.i1.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i1.i, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN5folly3TryIvED2Ev.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = atomicrmw sub ptr %i.s, i64 8 acq_rel, align 8 ; 2 uses
  %i.u = icmp ult i64 %i.t, 16
  br i1 %i.u, label %bb.i, label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.v = and i64 %i.t, 4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN5folly6detail24MergingCancellationState7destroyEv(ptr noundef nonnull align 16 dereferenceable(40) %i.r) #22
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !114
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.r) #22, !call_target !116, !inline_history !531
  br label %_ZN5folly17CancellationTokenD2Ev.exit.i.i

_ZN5folly17CancellationTokenD2Ev.exit.i.i:        ; preds = %bb.k, %bb.j, %bb.h, %_ZN5folly3TryIvED2Ev.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !77  ; 2 uses
  %i.ab = and i64 %i.aa, -4                       ; 2 uses
  %i.ac = inttoptr i64 %i.ab to ptr               ; 2 uses
  %.not.i.i1.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i1.i.i, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i.i
  store i64 0, ptr %i.z, align 8, !tbaa !131
  %i.ad = and i64 %i.aa, 3
  %.not3.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not3.i.i.i.i, label %bb.m, label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !114
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) #22, !call_target !132, !inline_history !532
  br label %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit

_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit: ; preds = %_ZN5folly17CancellationTokenD2Ev.exit.i.i, %bb.l, %bb.m
  invoke void @folly_coro_async_free(ptr noundef nonnull %0, i64 noundef 272)
          to label %CoroEnd unwind label %bb.n

bb.n:                                             ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #26
  unreachable

CoroEnd:                                          ; preds = %_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseIvEEvED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5folly4coro17SerialQueueRunner4pullEv.resume(ptr noundef nonnull align 8 dereferenceable(176) %0) #0 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr115 = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %.reload.addr116 = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 8 uses
  %.reload.addr117 = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %.reload.addr120 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %index = load i2, ptr %index.addr, align 8
  %i.a = icmp eq i2 %index, 0
  br i1 %i.a, label %.critedge, label %AfterCoroSuspend66

.critedge:                                        ; preds = %resume.entry
  %.reload.addr105 = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %.reload106 = load ptr, ptr %.reload.addr105, align 8, !tbaa !533
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %.reload106) #22 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEEC2ERS3_.exit, label %bb.a

bb.a:                                             ; preds = %.critedge
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.b) #23
          to label %.noexc unwind label %.from.87

.noexc:                                           ; preds = %bb.a
  unreachable

_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEEC2ERS3_.exit: ; preds = %.critedge
  %.reload114 = load ptr, ptr %.reload.addr105, align 8, !tbaa !533 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.reload114, i64 72
  %i.d = load i8, ptr %i.c, align 8, !tbaa !11, !range !28, !noundef !29
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %.critedge16, label %bb.b

bb.b:                                             ; preds = %_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEEC2ERS3_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %.reload114, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !535
  %i.h = getelementptr inbounds nuw i8, ptr %.reload114, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !535
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %.from.47.i, label %.critedge16

.from.47.i:                                       ; preds = %bb.b
  store ptr null, ptr %.reload.addr115, align 8, !tbaa !536
  %i.k = getelementptr inbounds nuw i8, ptr %.reload114, i64 40
  store ptr %.reload.addr115, ptr %i.k, align 8, !tbaa !33
  %i.l = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %.reload114) #22 ; 0 uses
  %i.m = invoke noundef ptr @folly_coro_async_malloc(i64 noundef 272)
          to label %.from.75 unwind label %_ZN5folly4coro4TaskIvED2Ev.exit28.from.84, !inline_history !538 ; 9 uses

.from.75:                                         ; preds = %.from.47.i
  %.reload104 = load ptr, ptr %.reload.addr105, align 8, !tbaa !533
  store ptr @_ZN5folly4coro17SerialQueueRunner5awaitEv.resume, ptr %i.m, align 8
  %destroy.addr.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_ZN5folly4coro17SerialQueueRunner5awaitEv.destroy, ptr %destroy.addr.i, align 8
  %.reload.addr65.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.spill.addr.i = getelementptr inbounds nuw i8, ptr %i.m, i64 256
  store ptr %.reload104, ptr %.spill.addr.i, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.reload.addr65.i, i8 0, i64 58, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  store ptr null, ptr %i.n, align 8, !tbaa !65
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  store ptr @_ZZN5folly4coro28ExtendedCoroutinePromiseCrtpINS0_6detail11TaskPromiseIvEEEC1EvENUlPNS0_23ExtendedCoroutineHandle11PromiseBaseERNS_17exception_wrapperEE_8__invokeES8_SA_, ptr %i.o, align 8, !tbaa !67
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  store i8 1, ptr %i.p, align 8, !tbaa !69
  store ptr %i.m, ptr %.reload.addr117, align 8, !tbaa !32, !alias.scope !539
  %index.addr66.i = getelementptr inbounds nuw i8, ptr %i.m, i64 264
  store i2 0, ptr %index.addr66.i, align 8
  invoke void @_ZN5folly4coro6detail11BasePromiseINS_4UnitEE15await_transformINS0_4TaskIvEETnNSt9enable_ifIXntsr5folly3extE22must_use_immediately_vIT_EEiE4typeELi0EEEDaOS9_(ptr dead_on_unwind nonnull writable sret(%"class.folly::coro::Task<>::Awaiter") align 8 %.reload.addr116, ptr noundef nonnull align 8 dereferenceable(59) %.reload.addr120, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr117)
          to label %bb.c unwind label %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit.from.82

bb.c:                                             ; preds = %.from.75
  store i2 1, ptr %index.addr, align 8
  %i.q = tail call ptr @_ZN5folly4coro4TaskIvE7Awaiter13await_suspendINS0_6detail11TaskPromiseISt4pairIbSt6vectorIS2_SaIS2_EEEEEEEDaNSt7__n486116coroutine_handleIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr116, ptr nonnull %0) #22 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  musttail call void %i.r(ptr nonnull %i.q)
  ret void

.from.87:                                         ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.w

_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit.from.: ; preds = %bb.n
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  br label %.from._ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit

_ZN5folly4coro4TaskIvED2Ev.exit28.from.84:        ; preds = %.from.47.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  br label %.from._ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit

_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit.from.82:  ; preds = %.from.75
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit

.body:                                            ; preds = %bb.h
  %i.w = load ptr, ptr %.reload.addr116, align 8, !tbaa !168 ; 3 uses
  %.not.i19 = icmp eq ptr %i.w, null
  br i1 %.not.i19, label %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %.body
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  invoke void %i.y(ptr nonnull %i.w)
          to label %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit unwind label %bb.e, !inline_history !207

bb.e:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #26
  unreachable

AfterCoroSuspend66:                               ; preds = %resume.entry
  %i.ab = load ptr, ptr %.reload.addr116, align 8, !tbaa !168 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !69, !range !28, !noundef !29
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %_ZNK5folly3TryIvE5valueEv.exit.i, label %bb.f

bb.f:                                             ; preds = %AfterCoroSuspend66
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 104
  invoke void @_ZNK5folly17exception_wrapper15throw_exceptionEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af) #23
          to label %.noexc.i unwind label %bb.h

.noexc.i:                                         ; preds = %bb.f
  unreachable

_ZNK5folly3TryIvE5valueEv.exit.i:                 ; preds = %AfterCoroSuspend66
  store i64 0, ptr %.reload.addr116, align 8, !tbaa !32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  invoke void %i.ah(ptr nonnull %i.ab)
          to label %_ZN5folly4coro4TaskIvE7Awaiter12await_resumeEv.exit unwind label %bb.g, !inline_history !207

bb.g:                                             ; preds = %_ZNK5folly3TryIvE5valueEv.exit.i
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #26
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i2.i = load ptr, ptr %.reload.addr116, align 8, !tbaa !32 ; 2 uses
  store i64 0, ptr %.reload.addr116, align 8, !tbaa !32
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i2.i, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  invoke void %i.am(ptr %.sroa.0.0.copyload.i.i.i.i.i2.i)
          to label %.body unwind label %bb.i, !inline_history !207

bb.i:                                             ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  tail call void @__clang_call_terminate(ptr %i.ao) #26
  unreachable

_ZN5folly4coro4TaskIvE7Awaiter12await_resumeEv.exit: ; preds = %_ZNK5folly3TryIvE5valueEv.exit.i
  %i.ap = load ptr, ptr %.reload.addr116, align 8, !tbaa !168 ; 3 uses
  %.not.i20 = icmp eq ptr %i.ap, null
  br i1 %.not.i20, label %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit21, label %bb.j

bb.j:                                             ; preds = %_ZN5folly4coro4TaskIvE7Awaiter12await_resumeEv.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  invoke void %i.ar(ptr nonnull %i.ap)
          to label %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit21 unwind label %bb.k, !inline_history !207

bb.k:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #26
  unreachable

_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit21:        ; preds = %bb.j, %_ZN5folly4coro4TaskIvE7Awaiter12await_resumeEv.exit
  %i.au = load ptr, ptr %.reload.addr117, align 8, !tbaa !168 ; 3 uses
  %.not.i22 = icmp eq ptr %i.au, null
  br i1 %.not.i22, label %_ZN5folly4coro4TaskIvED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit21
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  invoke void %i.aw(ptr nonnull %i.au)
          to label %_ZN5folly4coro4TaskIvED2Ev.exit unwind label %bb.m, !inline_history !207

bb.m:                                             ; preds = %bb.l
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #26
  unreachable

_ZN5folly4coro4TaskIvED2Ev.exit:                  ; preds = %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit21, %bb.l
  %.reload.addr99 = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %.reload100 = load ptr, ptr %.reload.addr99, align 8, !tbaa !533
  %i.az = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %.reload100) #22 ; 2 uses
  %.not.i.i = icmp eq i32 %i.az, 0
  br i1 %.not.i.i, label %.critedge16.from..thread, label %bb.n

bb.n:                                             ; preds = %_ZN5folly4coro4TaskIvED2Ev.exit
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.az) #23
          to label %.noexc26 unwind label %_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit.from.

.noexc26:                                         ; preds = %bb.n
  unreachable

.critedge16.from..thread:                         ; preds = %_ZN5folly4coro4TaskIvED2Ev.exit
  %.reload = load ptr, ptr %.reload.addr99, align 8, !tbaa !533 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.reload, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %.reload, i64 72
  store ptr null, ptr %i.ba, align 8, !tbaa !33
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr115) #22
  %.pre = load i8, ptr %i.bb, align 8, !tbaa !542, !range !28
  %.reload108.pre = load ptr, ptr %.reload.addr99, align 8, !tbaa !533
  br label %.critedge16

_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit:          ; preds = %bb.d, %.body, %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit.from.82
  %.pn = phi { ptr, i32 } [ %i.v, %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit.from.82 ], [ %i.ak, %.body ], [ %i.ak, %bb.d ] ; 2 uses
  %i.bc = load ptr, ptr %.reload.addr117, align 8, !tbaa !168 ; 3 uses
  %.not.i27 = icmp eq ptr %i.bc, null
  br i1 %.not.i27, label %.from._ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  invoke void %i.be(ptr nonnull %i.bc)
          to label %.from._ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit unwind label %bb.p, !inline_history !207

bb.p:                                             ; preds = %bb.o
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  tail call void @__clang_call_terminate(ptr %i.bg) #26
  unreachable

.from._ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit: ; preds = %_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit.from., %_ZN5folly4coro4TaskIvED2Ev.exit28.from.84, %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit, %bb.o
  %.pn11 = phi { ptr, i32 } [ %i.t, %_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit.from. ], [ %i.u, %_ZN5folly4coro4TaskIvED2Ev.exit28.from.84 ], [ %.pn, %_ZN5folly4coro4TaskIvE7AwaiterD2Ev.exit ], [ %.pn, %bb.o ]
  tail call void @_ZN5folly4coro5BatonD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr115) #22
  br label %bb.w

.critedge16:                                      ; preds = %bb.b, %_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEEC2ERS3_.exit, %.critedge16.from..thread
  %.reload108 = phi ptr [ %.reload108.pre, %.critedge16.from..thread ], [ %.reload114, %_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEEC2ERS3_.exit ], [ %.reload114, %bb.b ] ; 2 uses
  %i.bh = phi i8 [ %.pre, %.critedge16.from..thread ], [ 1, %_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEEC2ERS3_.exit ], [ 0, %bb.b ]
  %.reload.addr107 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.reload108, i64 48 ; 2 uses
  %i.bk = load <2 x ptr>, ptr %i.bj, align 8, !tbaa !535
  %i.bl = getelementptr inbounds nuw i8, ptr %.reload108, i64 64
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i8 0, i64 24, i1 false)
  %i.bn = load i32, ptr %i.bi, align 8, !tbaa !483
  store i32 2, ptr %i.bi, align 8, !tbaa !483
  switch i32 %i.bn, label %_ZNSt4pairIbSt6vectorIN5folly4coro4TaskIvEESaIS4_EEED2Ev.exit [
    i32 0, label %bb.q
    i32 1, label %bb.u
  ], !prof !484

bb.q:                                             ; preds = %.critedge16
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !34 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !30 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.bp, %i.br
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.q, %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.bx, %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i.i.i ], [ %i.bp, %bb.q ] ; 2 uses
  %i.bs = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !168 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  invoke void %i.bu(ptr nonnull %i.bs)
          to label %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i.i.i unwind label %bb.s, !inline_history !207

bb.s:                                             ; preds = %bb.r
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  tail call void @__clang_call_terminate(ptr %i.bw) #26
  unreachable

_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.r, %.lr.ph.i.i.i.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bx, %i.br
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.from._ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !543

_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.from._ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.bo, align 8, !tbaa !34
  br label %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i: ; preds = %bb.q, %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.from._ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i
  %i.by = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.from._ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.bp, %bb.q ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt4pairIbSt6vectorIN5folly4coro4TaskIvEESaIS4_EEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !31
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.by to i64
  %i.cd = sub i64 %i.cb, %i.cc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cd) #25
  br label %_ZNSt4pairIbSt6vectorIN5folly4coro4TaskIvEESaIS4_EEED2Ev.exit

bb.u:                                             ; preds = %.critedge16
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !212
  %.not.i.i.i.i35 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i35, label %_ZNSt4pairIbSt6vectorIN5folly4coro4TaskIvEESaIS4_EEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ce) #22
  br label %_ZNSt4pairIbSt6vectorIN5folly4coro4TaskIvEESaIS4_EEED2Ev.exit

_ZNSt4pairIbSt6vectorIN5folly4coro4TaskIvEESaIS4_EEED2Ev.exit: ; preds = %bb.v, %bb.u, %bb.t, %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i, %.critedge16
  %.reload102 = load ptr, ptr %.reload.addr107, align 8, !tbaa !533
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 %i.bh, ptr %i.cg, align 8, !tbaa !544
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x ptr> %i.bk, ptr %i.ch, align 8, !tbaa !535
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.bm, ptr %i.ci, align 8, !tbaa !31
  store i32 0, ptr %i.bi, align 8, !tbaa !146
  %i.cj = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %.reload102) #22 ; 0 uses
  br label %bb.x

bb.w:                                             ; preds = %.from._ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit, %.from.87
  %.pn11.pn = phi { ptr, i32 } [ %.pn11, %.from._ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit ], [ %i.s, %.from.87 ]
  %.3 = extractvalue { ptr, i32 } %.pn11.pn, 0
  %i.ck = tail call ptr @__cxa_begin_catch(ptr %.3) #22 ; 0 uses
  tail call void @_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseISt4pairIbSt6vectorINS0_4TaskIvEESaIS7_EEEEESA_E19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(120) %.reload.addr120) #22
  invoke void @__cxa_end_catch()
          to label %bb.x unwind label %_ZN5folly4coro6detail15TaskPromiseBasedlEPvm.exit34

bb.x:                                             ; preds = %_ZNSt4pairIbSt6vectorIN5folly4coro4TaskIvEESaIS4_EEED2Ev.exit, %bb.w
  store ptr null, ptr %0, align 8
  store i2 -2, ptr %index.addr, align 8
  %i.cl = tail call ptr @_ZN5folly4coro6detail15TaskPromiseBase12FinalAwaiter13await_suspendINS1_11TaskPromiseISt4pairIbSt6vectorINS0_4TaskIvEESaIS9_EEEEEEENSt7__n486116coroutine_handleIvEENSF_IT_EE(ptr noundef nonnull align 1 dereferenceable(1) %.reload.addr115, ptr nonnull %0) #22 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8
  musttail call void %i.cm(ptr nonnull %i.cl)
  ret void

_ZN5folly4coro6detail15TaskPromiseBasedlEPvm.exit34: ; preds = %bb.w
  %i.cn = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 8
  store i2 -2, ptr %index.addr, align 8
  resume { ptr, i32 } %i.cn
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly4coro17SerialQueueRunner4pullEv.destroy(ptr noundef nonnull align 8 dereferenceable(176) %0) #12 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr115 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.reload.addr117 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.reload.addr120 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 168
  %index = load i2, ptr %index.addr, align 8
  %i.a = icmp eq i2 %index, 1
  br i1 %i.a, label %_ZN5folly4coro4TaskIvE7Awaiter12await_resumeEv.exit, label %_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit33

_ZN5folly4coro4TaskIvE7Awaiter12await_resumeEv.exit: ; preds = %resume.entry
  %.reload.addr116 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %.reload.addr116, align 8, !tbaa !168 ; 3 uses
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
  br label %_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit33

_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit33: ; preds = %resume.entry, %_ZN5folly4coro4TaskIvED2Ev.exit
  tail call void @_ZN5folly4coro6detail19TaskPromiseCrtpBaseINS1_11TaskPromiseISt4pairIbSt6vectorINS0_4TaskIvEESaIS7_EEEEESA_ED2Ev(ptr noundef nonnull align 8 dereferenceable(120) %.reload.addr120) #22
  invoke void @folly_coro_async_free(ptr noundef nonnull %0, i64 noundef 176)
          to label %CoroEnd unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit33
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #26
  unreachable

CoroEnd:                                          ; preds = %_ZNSt11unique_lockIN5folly4coro17SerialQueueRunner5MutexEED2Ev.exit33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly4coro17SerialQueueRunner4pullEv.cleanup(ptr noundef nonnull align 8 dereferenceable(176) %0) #12 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr115 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.reload.addr117 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 168
  %index = load i2, ptr %index.addr, align 8
  %i.a = icmp eq i2 %index, 1
  br i1 %i.a, label %_ZN5folly4coro4TaskIvE7Awaiter12await_resumeEv.exit, label %CoroEnd

_ZN5folly4coro4TaskIvE7Awaiter12await_resumeEv.exit: ; preds = %resume.entry
  %.reload.addr116 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %.reload.addr116, align 8, !tbaa !168 ; 3 uses
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
  %.reload.addr233 = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
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
  store i64 %i.f, ptr %.reload.addr233, align 8, !alias.scope !557
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
  %.pre89 = load i64, ptr %.reload.addr233, align 8, !noalias !560
  br label %bb.c

bb.c:                                             ; preds = %.from.152, %bb.a, %bb.b
  %i.k = phi i64 [ %.pre89, %.from.152 ], [ %i.f, %bb.a ], [ %i.f, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.experimental.noalias.scope.decl(metadata !560)
  store i64 %i.k, ptr %i.l, align 8, !alias.scope !560
  store i64 0, ptr %.reload.addr233, align 8, !noalias !560
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
  %.reload.addr224 = getelementptr inbounds nuw i8, ptr %0, i64 392
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
  %.reload227.pre = load ptr, ptr %.reload.addr224, align 8, !tbaa !546
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
  %.reload.addr233 = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
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
  %i.a = load ptr, ptr %.reload.addr233, align 8, !tbaa !212
  %.not.i.i.i27 = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i27, label %_ZN5folly4coro8co_errorD2Ev.exit28, label %bb.a

bb.a:                                             ; preds = %AfterCoroSuspend123
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr233) #22
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
  %.reload.addr224 = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %.reload225 = load ptr, ptr %.reload.addr224, align 8, !tbaa !546 ; 2 uses
  %.reload.addr215 = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %.reload216 = load ptr, ptr %.reload.addr215, align 8, !tbaa !546 ; 3 uses
  %i.w = icmp eq ptr %.reload216, %.reload225
  br i1 %i.w, label %_ZSt8_DestroyIPN5folly4coro4TaskIvEES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.from._ZN5folly3TryIvED2Ev.exit50, %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i
  %.reload2276 = phi ptr [ %.reload227, %_ZSt8_DestroyIN5folly4coro4TaskIvEEEvPT_.exit.i.i.i.i ], [ %.reload225, %.from._ZN5folly3TryIvED2Ev.exit50 ]
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
  %.reload227.pre = load ptr, ptr %.reload.addr224, align 8, !tbaa !546
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
end_hunk_2
