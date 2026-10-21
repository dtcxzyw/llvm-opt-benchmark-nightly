Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/crow/original/example_ws?download=true
inline.NumInlined: 16068
inline.NumDeleted: 5763
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN4crow11TCPAcceptorD2Ev:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !350
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN4asio21basic_socket_acceptorINS_2ip3tcpENS_15any_io_executorEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !351
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !353
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(56) %i.g)
          to label %_ZN4asio21basic_socket_acceptorINS_2ip3tcpENS_15any_io_executorEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #42
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #42
  unreachable

_ZN4asio21basic_socket_acceptorINS_2ip3tcpENS_15any_io_executorEED2Ev.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4crow6Router9PerMethodD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !329
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !330
  invoke void @_ZSt8_DestroyIPN4crow4Trie4NodeEEvT_S4_(ptr noundef %i.b, ptr noundef %i.d)
          to label %_ZNSt6vectorIN4crow4Trie4NodeESaIS2_EED2Ev.exit.i.i unwind label %bb.b, !inline_history !4

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #42, !inline_history !4
  unreachable

_ZNSt6vectorIN4crow4Trie4NodeESaIS2_EED2Ev.exit.i.i: ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !329  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN4crow4Trie4NodeESaIS2_EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4crow4Trie4NodeESaIS2_EED2Ev.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !331
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #41, !inline_history !5
  br label %_ZNSt12_Vector_baseIN4crow4Trie4NodeESaIS2_EED2Ev.exit.i.i

_ZNSt12_Vector_baseIN4crow4Trie4NodeESaIS2_EED2Ev.exit.i.i: ; preds = %bb.c, %_ZNSt6vectorIN4crow4Trie4NodeESaIS2_EED2Ev.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !164  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN4crow4TrieD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt12_Vector_baseIN4crow4Trie4NodeESaIS2_EED2Ev.exit.i.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !165
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #41, !inline_history !5
  br label %_ZN4crow4TrieD2Ev.exit

_ZN4crow4TrieD2Ev.exit:                           ; preds = %_ZNSt12_Vector_baseIN4crow4Trie4NodeESaIS2_EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.s = load ptr, ptr %0, align 8, !tbaa !334    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4crow8BaseRuleESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4crow4TrieD2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !335
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #41
  br label %_ZNSt6vectorIPN4crow8BaseRuleESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4crow8BaseRuleESaIS2_EED2Ev.exit:  ; preds = %_ZN4crow4TrieD2Ev.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4crow4Trie4NodeESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !329
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !330
  invoke void @_ZSt8_DestroyIPN4crow4Trie4NodeEEvT_S4_(ptr noundef %i.a, ptr noundef %i.c)
          to label %_ZSt8_DestroyIPN4crow4Trie4NodeES2_EvT_S4_RSaIT0_E.exit unwind label %bb.c

_ZSt8_DestroyIPN4crow4Trie4NodeES2_EvT_S4_RSaIT0_E.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !329    ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN4crow4Trie4NodeESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN4crow4Trie4NodeES2_EvT_S4_RSaIT0_E.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !331
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #41
  br label %_ZNSt12_Vector_baseIN4crow4Trie4NodeESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN4crow4Trie4NodeESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4crow4Trie4NodeES2_EvT_S4_RSaIT0_E.exit, %bb.b
  ret void

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #42
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN4crow4Trie4NodeEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i2 = icmp eq ptr %0, %1
  br i1 %.not.i2, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN4crow4Trie4NodeEEEvT_S6_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyIN4crow4Trie4NodeEEvPT_.exit
  %.0.i3 = phi ptr [ %i.s, %_ZSt8_DestroyIN4crow4Trie4NodeEEvPT_.exit ], [ %0, %bb.a ] ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0.i3, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !329
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i3, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !330
  invoke void @_ZSt8_DestroyIPN4crow4Trie4NodeEEvT_S4_(ptr noundef %i.b, ptr noundef %i.d)
          to label %_ZNSt6vectorIN4crow4Trie4NodeESaIS2_EED2Ev.exit.i.i unwind label %bb.b, !inline_history !1631

bb.b:                                             ; preds = %.lr.ph
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #42, !inline_history !1631
  unreachable

_ZNSt6vectorIN4crow4Trie4NodeESaIS2_EED2Ev.exit.i.i: ; preds = %.lr.ph
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !329  ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN4crow4Trie4NodeESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4crow4Trie4NodeESaIS2_EED2Ev.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i3, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !331
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #41
  br label %_ZNSt12_Vector_baseIN4crow4Trie4NodeESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN4crow4Trie4NodeESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4crow4Trie4NodeESaIS2_EED2Ev.exit.i.i, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i3, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !164  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i3, i64 32 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZSt8_DestroyIN4crow4Trie4NodeEEvPT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt12_Vector_baseIN4crow4Trie4NodeESaIS2_EED2Ev.exit
  %i.q = load i64, ptr %i.o, align 8, !tbaa !165
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #41, !inline_history !1632
  br label %_ZSt8_DestroyIN4crow4Trie4NodeEEvPT_.exit

_ZSt8_DestroyIN4crow4Trie4NodeEEvPT_.exit:        ; preds = %_ZNSt12_Vector_baseIN4crow4Trie4NodeESaIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i3, i64 80 ; 2 uses
  %.not.i = icmp eq ptr %i.s, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN4crow4Trie4NodeEEEvT_S6_.exit, label %.lr.ph, !llvm.loop !1633

_ZNSt12_Destroy_auxILb0EE9__destroyIPN4crow4Trie4NodeEEEvT_S6_.exit: ; preds = %_ZSt8_DestroyIN4crow4Trie4NodeEEvPT_.exit, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #19

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio14system_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1638, !nonnull !275, !align !411 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %1 = atomicrmw add ptr %i.c, i64 -1 seq_cst, align 8
  %i.d = icmp eq i64 %1, 1
  br i1 %i.d, label %bb.b, label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !419, !range !274, !noundef !275
  %i.g = trunc nuw i8 %i.f to i1                  ; 3 uses
  br i1 %i.g, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  store i8 1, ptr %i.h, align 8, !tbaa !506
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.j = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #40 ; 0 uses
  %.pre.i.i = load i8, ptr %i.e, align 8, !tbaa !419, !range !274
  %i.k = trunc nuw i8 %.pre.i.i to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  store i8 1, ptr %i.l, align 8, !tbaa !506
  br i1 %i.k, label %bb.c, label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

bb.c:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !450
  %i.p = or i64 %i.o, 1
  store i64 %i.p, ptr %i.n, align 8, !tbaa !450
  %i.q = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull align 8 dereferenceable(56) %i.m) #40 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i: ; preds = %bb.c, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 208 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8, !tbaa !451, !range !274, !noundef !275
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !452  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.r, align 8, !tbaa !451
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !257
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i unwind label %bb.g, !inline_history !17

_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i: ; preds = %bb.e, %bb.d, %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i
  br i1 %i.g, label %bb.f, label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.f:                                             ; preds = %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.aa = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.z) #40 ; 0 uses
  br label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  br i1 %i.g, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ad = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) #40 ; 0 uses
  br label %.body

_ZN4asio6detail9scheduler13work_finishedEv.exit:  ; preds = %bb.f, %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, %bb.a
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !1638, !nonnull !275, !align !411 ; 10 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 96 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !419, !range !274, !noundef !275
  %i.ah = trunc nuw i8 %i.ag to i1                ; 3 uses
  br i1 %i.ah, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i: ; preds = %_ZN4asio6detail9scheduler13work_finishedEv.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 240
  store i8 1, ptr %i.ai, align 8, !tbaa !506
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i: ; preds = %_ZN4asio6detail9scheduler13work_finishedEv.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ak = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.aj) #40 ; 0 uses
  %.pre.i = load i8, ptr %i.af, align 8, !tbaa !419, !range !274
  %i.al = trunc nuw i8 %.pre.i to i1
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 240
  store i8 1, ptr %i.am, align 8, !tbaa !506
  br i1 %i.al, label %bb.i, label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i

bb.i:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 112
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 160 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !450
  %i.aq = or i64 %i.ap, 1
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !450
  %i.ar = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull align 8 dereferenceable(56) %i.an) #40 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i

_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i: ; preds = %bb.i, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 208 ; 2 uses
  %i.at = load i8, ptr %i.as, align 8, !tbaa !451, !range !274, !noundef !275
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 168
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !452 ; 3 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.as, align 8, !tbaa !451
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !257
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  invoke void %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.aw)
          to label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i unwind label %bb.m, !inline_history !17

_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i: ; preds = %bb.k, %bb.j, %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i
  br i1 %i.ah, label %bb.l, label %_ZN4asio6detail9scheduler4stopEv.exit

bb.l:                                             ; preds = %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.bb = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ba) #40 ; 0 uses
  br label %_ZN4asio6detail9scheduler4stopEv.exit

bb.m:                                             ; preds = %bb.k
  %i.bc = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  br i1 %i.ah, label %bb.n, label %.body

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.be = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bd) #40 ; 0 uses
  br label %.body

_ZN4asio6detail9scheduler4stopEv.exit:            ; preds = %bb.l, %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1639 ; 2 uses
  %.not3.i = icmp eq ptr %i.bg, null
  br i1 %.not3.i, label %_ZN4asio6detail12thread_groupD2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4asio6detail9scheduler4stopEv.exit, %bb.q
  %i.bh = phi ptr [ %i.bv, %bb.q ], [ %i.bg, %_ZN4asio6detail9scheduler4stopEv.exit ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !508, !range !274, !noundef !275
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %.thread.i, label %bb.o

.thread.i:                                        ; preds = %.lr.ph.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1641
  store ptr %i.bm, ptr %i.bf, align 8, !tbaa !1639
  br label %bb.q

bb.o:                                             ; preds = %.lr.ph.i
  %i.bn = load i64, ptr %i.bh, align 8, !tbaa !509
  %i.bo = invoke i32 @pthread_join(i64 noundef %i.bn, ptr noundef null)
          to label %.noexc unwind label %bb.s     ; 0 uses

.noexc:                                           ; preds = %bb.o
  store i8 1, ptr %i.bi, align 8, !tbaa !508
  %.pre.i3 = load ptr, ptr %i.bf, align 8, !tbaa !1639 ; 5 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i3, i64 8
  %.pre4.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !508, !range !274
  %i.bp = trunc nuw i8 %.pre4.i to i1
  %i.bq = getelementptr inbounds nuw i8, ptr %.pre.i3, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1641
  store ptr %i.br, ptr %i.bf, align 8, !tbaa !1639
  br i1 %i.bp, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.noexc
  %i.bs = load i64, ptr %.pre.i3, align 8, !tbaa !509
  %i.bt = tail call i32 @pthread_detach(i64 noundef %i.bs) #40 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.noexc, %.thread.i
  %i.bu = phi ptr [ %i.bh, %.thread.i ], [ %.pre.i3, %bb.p ], [ %.pre.i3, %.noexc ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef 24) #41
  %i.bv = load ptr, ptr %i.bf, align 8, !tbaa !1639 ; 2 uses
  %.not.i = icmp eq ptr %i.bv, null
  br i1 %.not.i, label %_ZN4asio6detail12thread_groupD2Ev.exit, label %.lr.ph.i, !llvm.loop !1634

_ZN4asio6detail12thread_groupD2Ev.exit:           ; preds = %bb.q, %_ZN4asio6detail9scheduler4stopEv.exit
  %i.bw = load ptr, ptr %0, align 8, !tbaa !365   ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  %.04.i.i.i = load ptr, ptr %i.bx, align 8, !tbaa !367 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.04.i.i.i, null
  br i1 %.not5.i.i.i, label %_ZN4asio17execution_context7destroyEv.exit.thread.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4asio6detail12thread_groupD2Ev.exit, %.noexc.i6
  %.06.i.i.i = phi ptr [ %.0.i.i.i, %.noexc.i6 ], [ %.04.i.i.i, %_ZN4asio6detail12thread_groupD2Ev.exit ] ; 3 uses
  %i.by = load ptr, ptr %.06.i.i.i, align 8, !tbaa !257
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  invoke void %i.ca(ptr noundef nonnull align 8 dereferenceable(40) %.06.i.i.i)
          to label %.noexc.i6 unwind label %bb.r, !inline_history !7

end_hunk_0
begin_hunk_1_@_ZN4asio6detail16thread_info_baseD2Ev:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !179  ; 2 uses
  %.not.1 = icmp eq ptr %i.c, null
  br i1 %.not.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.c) #40
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !179  ; 2 uses
  %.not.2 = icmp eq ptr %i.e, null
  br i1 %.not.2, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.e) #40
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !179  ; 2 uses
  %.not.3 = icmp eq ptr %i.g, null
  br i1 %.not.3, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.g) #40
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !179  ; 2 uses
  %.not.4 = icmp eq ptr %i.i, null
  br i1 %.not.4, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %i.i) #40
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !179  ; 2 uses
  %.not.5 = icmp eq ptr %i.k, null
  br i1 %.not.5, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @free(ptr noundef nonnull %i.k) #40
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !179  ; 2 uses
  %.not.6 = icmp eq ptr %i.m, null
  br i1 %.not.6, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @free(ptr noundef nonnull %i.m) #40
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !179  ; 2 uses
  %.not.7 = icmp eq ptr %i.o, null
  br i1 %.not.7, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @free(ptr noundef nonnull %i.o) #40
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !179  ; 2 uses
  %.not.8 = icmp eq ptr %i.q, null
  br i1 %.not.8, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @free(ptr noundef nonnull %i.q) #40
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !179  ; 2 uses
  %.not.9 = icmp eq ptr %i.s, null
  br i1 %.not.9, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @free(ptr noundef nonnull %i.s) #40
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !747
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail9scheduler12task_cleanupD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1175 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load i64, ptr %i.c, align 8, !tbaa !676  ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !1173
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 216
  %i.h = atomicrmw add ptr %i.g, i64 %i.d seq_cst, align 8 ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !1175
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  store i64 0, ptr %i.j, align 8, !tbaa !676
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1174 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1169, !nonnull !275, !align !411 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load i8, ptr %i.n, align 8, !tbaa !419, !range !274, !noundef !275
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.d, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !1168, !range !274, !noundef !275
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.t) #40 ; 0 uses
  store i8 1, ptr %i.q, align 8, !tbaa !1168
  %.pre3 = load ptr, ptr %i.a, align 8, !tbaa !1175
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.v = phi ptr [ %i.i, %bb.c ], [ %i.i, %bb.d ], [ %.pre3, %bb.e ] ; 2 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !1173   ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 208
  store i8 1, ptr %i.x, align 8, !tbaa !451
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 96 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !432  ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 224
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 232 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !430 ; 2 uses
  %.not8.i = icmp eq ptr %i.ac, null
  %..i = select i1 %.not8.i, ptr %i.aa, ptr %i.ac
  store ptr %i.z, ptr %..i, align 8, !tbaa !432
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !432
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !430
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %.pre4 = load ptr, ptr %0, align 8, !tbaa !1173
  br label %bb.g

bb.g:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit, %bb.f
  %i.af = phi ptr [ %i.w, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit ], [ %.pre4, %bb.f ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 224
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 184 ; 3 uses
  store ptr null, ptr %i.ah, align 8, !tbaa !415
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 232 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !430 ; 2 uses
  %.not.i1 = icmp eq ptr %i.aj, null
  %..i2 = select i1 %.not.i1, ptr %i.ag, ptr %i.aj
  store ptr %i.ah, ptr %..i2, align 8, !tbaa !432
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !430
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail9scheduler12work_cleanupD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1179
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load i64, ptr %i.c, align 8, !tbaa !676  ; 3 uses
  %i.e = icmp sgt i64 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !1177
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 216
  %i.h = add nsw i64 %i.d, -1
  %i.i = atomicrmw add ptr %i.g, i64 %i.h seq_cst, align 8 ; 0 uses
  br label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.d, 1
  br i1 %.not, label %_ZN4asio6detail9scheduler13work_finishedEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %0, align 8, !tbaa !1177   ; 11 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 216
  %1 = atomicrmw add ptr %i.k, i64 -1 seq_cst, align 8
  %i.l = icmp eq i64 %1, 1
  br i1 %i.l, label %bb.e, label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !419, !range !274, !noundef !275
  %i.o = trunc nuw i8 %i.n to i1                  ; 3 uses
  br i1 %i.o, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i: ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 240
  store i8 1, ptr %i.p, align 8, !tbaa !506
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i: ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.r = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.q) #40 ; 0 uses
  %.pre.i.i = load i8, ptr %i.m, align 8, !tbaa !419, !range !274
  %i.s = trunc nuw i8 %.pre.i.i to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 240
  store i8 1, ptr %i.t, align 8, !tbaa !506
  br i1 %i.s, label %bb.f, label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

bb.f:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 160 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !450
  %i.x = or i64 %i.w, 1
  store i64 %i.x, ptr %i.v, align 8, !tbaa !450
  %i.y = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull align 8 dereferenceable(56) %i.u) #40 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i: ; preds = %bb.f, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 208 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !451, !range !274, !noundef !275
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 168
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !452 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.z, align 8, !tbaa !451
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !257
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
          to label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i unwind label %bb.j, !inline_history !17

_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i: ; preds = %bb.h, %bb.g, %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i
  br i1 %i.o, label %bb.i, label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.i:                                             ; preds = %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.ai = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ah) #40 ; 0 uses
  br label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.j:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  br i1 %i.o, label %bb.k, label %.body

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.al = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ak) #40 ; 0 uses
  br label %.body

_ZN4asio6detail9scheduler13work_finishedEv.exit:  ; preds = %bb.i, %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, %bb.d, %bb.c, %bb.b
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !1179 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 112
  store i64 0, ptr %i.an, align 8, !tbaa !676
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !429 ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4asio6detail9scheduler13work_finishedEv.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1178 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1169, !nonnull !275, !align !411 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.av = load i8, ptr %i.au, align 8, !tbaa !419, !range !274, !noundef !275
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.m, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !1168, !range !274, !noundef !275
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.thread, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit: ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bb = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ba) #40 ; 0 uses
  store i8 1, ptr %i.ax, align 8, !tbaa !1168
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !1179 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 96
  %.pre1 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !432 ; 2 uses
  %.not.i = icmp eq ptr %.pre1, null
  br i1 %.not.i, label %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.thread

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.thread: ; preds = %bb.m, %bb.l, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit
  %i.bc = phi ptr [ %.pre, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit ], [ %i.am, %bb.l ], [ %i.am, %bb.m ] ; 2 uses
  %i.bd = phi ptr [ %.pre1, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit ], [ %i.ap, %bb.l ], [ %i.ap, %bb.m ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 96
  %i.bf = load ptr, ptr %0, align 8, !tbaa !1177  ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 224
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 232 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !430 ; 2 uses
  %.not8.i = icmp eq ptr %i.bi, null
  %..i = select i1 %.not8.i, ptr %i.bg, ptr %i.bi
  store ptr %i.bd, ptr %..i, align 8, !tbaa !432
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 104
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !432
  store ptr %i.bk, ptr %i.bh, align 8, !tbaa !430
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  br label %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit

_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit: ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.thread, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit, %_ZN4asio6detail9scheduler13work_finishedEv.exit
  ret void

.body:                                            ; preds = %bb.j, %bb.k
  %i.bl = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.bl) #42
  unreachable
}

; Function Attrs: noreturn
declare void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr nofreeobj noundef align 8 dereferenceable(8)) local_unnamed_addr #18

declare i32 @pthread_cond_wait(ptr noundef, ptr noundef) local_unnamed_addr #9

declare i32 @pause() local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @pthread_cond_destroy(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN4asio6detail16service_registry6createINS0_23reactive_socket_serviceINS_5local15stream_protocolEEENS_10io_contextEEEPNS_17execution_context7serviceEPv(ptr noundef %0) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.asio::execution_context::service::key", align 8 ; 5 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #43 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %0, ptr %i.c, align 8, !tbaa !658
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.d, align 8, !tbaa !376
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4asio6detail30execution_context_service_baseINS0_23reactive_socket_serviceINS_5local15stream_protocolEEEEE, i64 16), ptr %i.a, align 8, !tbaa !257
  %i.e = load ptr, ptr %0, align 8, !tbaa !365    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  store ptr @_ZTIN4asio6detail14typeid_wrapperINS0_13epoll_reactorEEE, ptr %1, align 8, !tbaa !1086
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.f, align 8, !tbaa !1087
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1148, !nonnull !275, !align !411
  %i.i = invoke noundef nonnull align 8 dereferenceable(216) ptr @_ZN4asio6detail16service_registry14do_use_serviceERKNS_17execution_context7service3keyEPFPS3_PvES8_(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @_ZN4asio6detail16service_registry6createINS0_13epoll_reactorENS_17execution_contextEEEPNS4_7serviceEPv, ptr noundef nonnull %i.h)
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  store ptr %i.i, ptr %i.j, align 8, !tbaa !1180
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %i.k, align 8, !tbaa !285
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #44
  store ptr %i.m, ptr %i.l, align 8, !tbaa !286
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !427, !nonnull !275, !align !411
  invoke void @_ZN4asio6detail9scheduler9init_taskEv(ptr noundef nonnull align 8 dereferenceable(256) %i.o)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.noexc
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4asio6detail23reactive_socket_serviceINS_5local15stream_protocolEEE, i64 16), ptr %i.a, align 8, !tbaa !257
  ret ptr %i.a

bb.c:                                             ; preds = %.noexc, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #41
  resume { ptr, i32 } %i.p
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail23reactive_socket_serviceINS_5local15stream_protocolEED0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail23reactive_socket_serviceINS_5local15stream_protocolEE8shutdownEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

end_hunk_1
begin_hunk_2_@_ZN4asio9execution6detail17any_executor_base9prefer_fnINS0_12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS1_8blocking7never_tILi0EEENS0_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS1_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS1_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEENS_10io_context19basic_executor_typeISaIvELm0EEESF_EET_PKvS11_:bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio9execution6detail17any_executor_base8query_fnINS_10io_context19basic_executor_typeISaIvELm0EEENS0_11prefer_onlyINS1_16outstanding_work9tracked_tILi0EEEEEEEvPvPKvSF_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #43 ; 2 uses
  store i32 0, ptr %i.a, align 4
  store ptr %i.a, ptr %0, align 8, !tbaa !1189
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio9execution6detail17any_executor_base10require_fnINS0_12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS1_8blocking7never_tILi0EEENS0_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS1_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS1_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEENS_10io_context19basic_executor_typeISaIvELm0EEESJ_EET_PKvS11_(ptr dead_on_unwind noalias writable sret(%"class.asio::execution::any_executor") align 8 %0, ptr noundef %1, ptr noundef %2) #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false), !alias.scope !2834
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZZN4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE14prop_fns_tableIvEEPKNS6_17any_executor_base8prop_fnsISS_EEvE3fns, ptr %i.b, align 8, !tbaa !574, !alias.scope !2834
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio9execution6detail17any_executor_base9prefer_fnINS0_12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS1_8blocking7never_tILi0EEENS0_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS1_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS1_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEENS_10io_context19basic_executor_typeISaIvELm0EEESJ_EET_PKvS11_(ptr dead_on_unwind noalias writable sret(%"class.asio::execution::any_executor") align 8 %0, ptr noundef %1, ptr noundef %2) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.asio::io_context::basic_executor_type.676", align 8 ; 4 uses
  %4 = alloca %"class.asio::io_context::basic_executor_type.676", align 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2847)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2848)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2849)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2850)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2851)
  %i.a = load i64, ptr %1, align 8, !tbaa !663, !noalias !2852 ; 3 uses
  %i.b = and i64 %i.a, -4                         ; 2 uses
  store i64 %i.a, ptr %4, align 8, !tbaa !1191, !alias.scope !2853, !noalias !2847
  %.not.i.i.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4asio9execution6detail17any_executor_base14prefer_fn_implINS0_12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS1_8blocking7never_tILi0EEENS0_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS1_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS1_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEENS_10io_context19basic_executor_typeISaIvELm0EEESJ_EET_PKvS11_PNSt9enable_ifIXaantsr7is_sameIT0_vEE5valuesrT1_13is_preferableEvE4typeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !665, !noalias !2852, !nonnull !275, !align !411
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 216
  %i.g = atomicrmw add ptr %i.f, i64 1 seq_cst, align 8, !noalias !2852 ; 0 uses
  %.pre.i = load i64, ptr %4, align 8, !tbaa !1191, !noalias !2847
  br label %_ZN4asio9execution6detail17any_executor_base14prefer_fn_implINS0_12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS1_8blocking7never_tILi0EEENS0_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS1_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS1_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEENS_10io_context19basic_executor_typeISaIvELm0EEESJ_EET_PKvS11_PNSt9enable_ifIXaantsr7is_sameIT0_vEE5valuesrT1_13is_preferableEvE4typeE.exit

_ZN4asio9execution6detail17any_executor_base14prefer_fn_implINS0_12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS1_8blocking7never_tILi0EEENS0_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS1_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS1_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEENS_10io_context19basic_executor_typeISaIvELm0EEESJ_EET_PKvS11_PNSt9enable_ifIXaantsr7is_sameIT0_vEE5valuesrT1_13is_preferableEvE4typeE.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i64 [ %.pre.i, %bb.b ], [ %i.a, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !2847
  store i64 0, ptr %4, align 8, !tbaa !1191, !noalias !2847
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZZN4asio9execution6detail17any_executor_base16target_fns_tableINS_10io_context19basic_executor_typeISaIvELm4EEEEEPKNS2_10target_fnsEbPNSt9enable_ifIXntsr7is_sameIT_vEE5valueEvE4typeEE16fns_with_execute, ptr %i.i, align 8, !tbaa !572, !alias.scope !2847
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZZN4asio9execution6detail17any_executor_base16object_fns_tableINS_10io_context19basic_executor_typeISaIvELm4EEEEEPKNS2_10object_fnsEPNSt9enable_ifIXaantsr7is_sameIT_vEE5valuentsr7is_sameISC_NS1_22shared_target_executorEEE5valueEvE4typeEE3fns, ptr %i.j, align 8, !tbaa !351, !alias.scope !2847
  store i64 %i.h, ptr %0, align 8, !tbaa !1191, !alias.scope !2847
  store i64 0, ptr %3, align 8, !tbaa !1191, !noalias !2847
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %0, ptr %i.k, align 8, !tbaa !350, !alias.scope !2847
  call void @_ZN4asio10io_context19basic_executor_typeISaIvELm4EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #40, !inline_history !2845
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZZN4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE14prop_fns_tableINS_10io_context19basic_executor_typeISaIvELm4EEEEEPKNS6_17any_executor_base8prop_fnsISS_EEvE3fns, ptr %i.l, align 8, !tbaa !574, !alias.scope !2847
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !2847
  call void @_ZN4asio10io_context19basic_executor_typeISaIvELm4EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #40, !inline_history !2846
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio9execution6detail17any_executor_base8query_fnINS_10io_context19basic_executor_typeISaIvELm0EEENS0_11prefer_onlyINS1_16outstanding_work11untracked_tILi0EEEEEEEvPvPKvSF_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #43 ; 2 uses
  store i32 0, ptr %i.a, align 4
  store ptr %i.a, ptr %0, align 8, !tbaa !1189
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio9execution6detail17any_executor_base10require_fnINS0_12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS1_8blocking7never_tILi0EEENS0_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS1_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS1_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEENS_10io_context19basic_executor_typeISaIvELm0EEESM_EET_PKvS11_(ptr dead_on_unwind noalias writable sret(%"class.asio::execution::any_executor") align 8 %0, ptr noundef %1, ptr noundef %2) #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false), !alias.scope !2856
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZZN4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE14prop_fns_tableIvEEPKNS6_17any_executor_base8prop_fnsISS_EEvE3fns, ptr %i.b, align 8, !tbaa !574, !alias.scope !2856
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio9execution6detail17any_executor_base9prefer_fnINS0_12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS1_8blocking7never_tILi0EEENS0_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS1_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS1_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEENS_10io_context19basic_executor_typeISaIvELm0EEESM_EET_PKvS11_(ptr dead_on_unwind noalias writable sret(%"class.asio::execution::any_executor") align 8 %0, ptr noundef %1, ptr noundef %2) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2859)
  %i.a = load i64, ptr %1, align 8, !tbaa !663, !noalias !2859
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZZN4asio9execution6detail17any_executor_base16target_fns_tableINS_10io_context19basic_executor_typeISaIvELm0EEEEEPKNS2_10target_fnsEbPNSt9enable_ifIXntsr7is_sameIT_vEE5valueEvE4typeEE16fns_with_execute, ptr %i.b, align 8, !tbaa !572, !alias.scope !2859
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZZN4asio9execution6detail17any_executor_base16object_fns_tableINS_10io_context19basic_executor_typeISaIvELm0EEEEEPKNS2_10object_fnsEPNSt9enable_ifIXaantsr7is_sameIT_vEE5valuentsr7is_sameISC_NS1_22shared_target_executorEEE5valueEvE4typeEE3fns, ptr %i.c, align 8, !tbaa !351, !alias.scope !2859
  store i64 %i.a, ptr %0, align 8, !tbaa !663, !alias.scope !2859
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %0, ptr %i.d, align 8, !tbaa !350, !alias.scope !2859
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZZN4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE14prop_fns_tableINS_10io_context19basic_executor_typeISaIvELm0EEEEEPKNS6_17any_executor_base8prop_fnsISS_EEvE3fns, ptr %i.e, align 8, !tbaa !574, !alias.scope !2859
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio9execution6detail17any_executor_base8query_fnINS_10io_context19basic_executor_typeISaIvELm0EEENS0_11prefer_onlyINS1_12relationship6fork_tILi0EEEEEEEvPvPKvSF_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #43 ; 2 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !663
  %i.c = trunc i64 %i.b to i32
  %i.d = lshr i32 %i.c, 1
  %spec.select.i.i.i.i.i.i = and i32 %i.d, 1
  store i32 %spec.select.i.i.i.i.i.i, ptr %i.a, align 4
  store ptr %i.a, ptr %0, align 8, !tbaa !1193
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio9execution6detail17any_executor_base10require_fnINS0_12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS1_8blocking7never_tILi0EEENS0_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS1_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS1_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEENS_10io_context19basic_executor_typeISaIvELm0EEESQ_EET_PKvS11_(ptr dead_on_unwind noalias writable sret(%"class.asio::execution::any_executor") align 8 %0, ptr noundef %1, ptr noundef %2) #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false), !alias.scope !2862
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZZN4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE14prop_fns_tableIvEEPKNS6_17any_executor_base8prop_fnsISS_EEvE3fns, ptr %i.b, align 8, !tbaa !574, !alias.scope !2862
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio9execution6detail17any_executor_base9prefer_fnINS0_12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS1_8blocking7never_tILi0EEENS0_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS1_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS1_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEENS_10io_context19basic_executor_typeISaIvELm0EEESQ_EET_PKvS11_(ptr dead_on_unwind noalias writable sret(%"class.asio::execution::any_executor") align 8 %0, ptr noundef %1, ptr noundef %2) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2873)
  %i.a = load i64, ptr %1, align 8, !tbaa !663, !noalias !2874
  %i.b = and i64 %i.a, -3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZZN4asio9execution6detail17any_executor_base16target_fns_tableINS_10io_context19basic_executor_typeISaIvELm0EEEEEPKNS2_10target_fnsEbPNSt9enable_ifIXntsr7is_sameIT_vEE5valueEvE4typeEE16fns_with_execute, ptr %i.c, align 8, !tbaa !572, !alias.scope !2873
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZZN4asio9execution6detail17any_executor_base16object_fns_tableINS_10io_context19basic_executor_typeISaIvELm0EEEEEPKNS2_10object_fnsEPNSt9enable_ifIXaantsr7is_sameIT_vEE5valuentsr7is_sameISC_NS1_22shared_target_executorEEE5valueEvE4typeEE3fns, ptr %i.d, align 8, !tbaa !351, !alias.scope !2873
  store i64 %i.b, ptr %0, align 8, !tbaa !663, !alias.scope !2873
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %0, ptr %i.e, align 8, !tbaa !350, !alias.scope !2873
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZZN4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE14prop_fns_tableINS_10io_context19basic_executor_typeISaIvELm0EEEEEPKNS6_17any_executor_base8prop_fnsISS_EEvE3fns, ptr %i.f, align 8, !tbaa !574, !alias.scope !2873
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio9execution6detail17any_executor_base8query_fnINS_10io_context19basic_executor_typeISaIvELm0EEENS0_11prefer_onlyINS1_12relationship14continuation_tILi0EEEEEEEvPvPKvSF_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #43 ; 2 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !663
  %i.c = trunc i64 %i.b to i32
  %i.d = lshr i32 %i.c, 1
  %spec.select.i.i.i.i.i.i = and i32 %i.d, 1
  store i32 %spec.select.i.i.i.i.i.i, ptr %i.a, align 4
  store ptr %i.a, ptr %0, align 8, !tbaa !1193
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio9execution6detail17any_executor_base10require_fnINS0_12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS1_8blocking7never_tILi0EEENS0_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS1_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS1_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEENS_10io_context19basic_executor_typeISaIvELm0EEEST_EET_PKvS11_(ptr dead_on_unwind noalias writable sret(%"class.asio::execution::any_executor") align 8 %0, ptr noundef %1, ptr noundef %2) #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false), !alias.scope !2877
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZZN4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE14prop_fns_tableIvEEPKNS6_17any_executor_base8prop_fnsISS_EEvE3fns, ptr %i.b, align 8, !tbaa !574, !alias.scope !2877
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio9execution6detail17any_executor_base9prefer_fnINS0_12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS1_8blocking7never_tILi0EEENS0_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS1_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS1_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEENS_10io_context19basic_executor_typeISaIvELm0EEEST_EET_PKvS11_(ptr dead_on_unwind noalias writable sret(%"class.asio::execution::any_executor") align 8 %0, ptr noundef %1, ptr noundef %2) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2888)
  %i.a = load i64, ptr %1, align 8, !tbaa !663, !noalias !2889
  %i.b = or i64 %i.a, 2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZZN4asio9execution6detail17any_executor_base16target_fns_tableINS_10io_context19basic_executor_typeISaIvELm0EEEEEPKNS2_10target_fnsEbPNSt9enable_ifIXntsr7is_sameIT_vEE5valueEvE4typeEE16fns_with_execute, ptr %i.c, align 8, !tbaa !572, !alias.scope !2888
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZZN4asio9execution6detail17any_executor_base16object_fns_tableINS_10io_context19basic_executor_typeISaIvELm0EEEEEPKNS2_10object_fnsEPNSt9enable_ifIXaantsr7is_sameIT_vEE5valuentsr7is_sameISC_NS1_22shared_target_executorEEE5valueEvE4typeEE3fns, ptr %i.d, align 8, !tbaa !351, !alias.scope !2888
  store i64 %i.b, ptr %0, align 8, !tbaa !663, !alias.scope !2888
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %0, ptr %i.e, align 8, !tbaa !350, !alias.scope !2888
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZZN4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE14prop_fns_tableINS_10io_context19basic_executor_typeISaIvELm0EEEEEPKNS6_17any_executor_base8prop_fnsISS_EEvE3fns, ptr %i.f, align 8, !tbaa !574, !alias.scope !2888
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio10io_context19basic_executor_typeISaIvELm4EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !1191
  %i.b = and i64 %i.a, -4                         ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %_ZN4asio6detail9scheduler13work_finishedEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !665, !nonnull !275, !align !411 ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 216
  %1 = atomicrmw add ptr %i.f, i64 -1 seq_cst, align 8
  %i.g = icmp eq i64 %1, 1
  br i1 %i.g, label %bb.c, label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !419, !range !274, !noundef !275
  %i.j = trunc nuw i8 %i.i to i1                  ; 3 uses
  br i1 %i.j, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  store i8 1, ptr %i.k, align 8, !tbaa !506
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.m = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.l) #40 ; 0 uses
  %.pre.i.i = load i8, ptr %i.h, align 8, !tbaa !419, !range !274
  %i.n = trunc nuw i8 %.pre.i.i to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  store i8 1, ptr %i.o, align 8, !tbaa !506
  br i1 %i.n, label %bb.d, label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

bb.d:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 160 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !450
  %i.s = or i64 %i.r, 1
  store i64 %i.s, ptr %i.q, align 8, !tbaa !450
  %i.t = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull align 8 dereferenceable(56) %i.p) #40 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i: ; preds = %bb.d, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 208 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8, !tbaa !451, !range !274, !noundef !275
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !452  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.u, align 8, !tbaa !451
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !257
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  invoke void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.y)
          to label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i unwind label %bb.h, !inline_history !17

_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i: ; preds = %bb.f, %bb.e, %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i
  br i1 %i.j, label %bb.g, label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.g:                                             ; preds = %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.ad = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) #40 ; 0 uses
  br label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.h:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  br i1 %i.j, label %bb.i, label %.body

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.ag = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.af) #40 ; 0 uses
  br label %.body

_ZN4asio6detail9scheduler13work_finishedEv.exit:  ; preds = %bb.g, %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, %bb.b, %bb.a
  ret void

.body:                                            ; preds = %bb.h, %bb.i
  %i.ah = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #42
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN4asio9execution6detail17any_executor_base14target_type_exINS_10io_context19basic_executor_typeISaIvELm4EEEEERKSt9type_infov() #2 comdat align 2 {
bb.a:
  ret ptr @_ZTIN4asio10io_context19basic_executor_typeISaIvELm4EEE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4asio9execution6detail17any_executor_base8equal_exINS_10io_context19basic_executor_typeISaIvELm4EEEEEbRKS2_S9_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !350
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNK4asio9execution6detail17any_executor_base6targetINS_10io_context19basic_executor_typeISaIvELm4EEEEEPKT_v.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !572
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !714
  %i.f = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.e(), !inline_history !120
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !657  ; 3 uses
  %i.i = icmp eq ptr %i.h, @_ZTSN4asio10io_context19basic_executor_typeISaIvELm4EEE
  br i1 %i.i, label %_ZNKSt9type_infoeqERKS_.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i8, ptr %i.h, align 1, !tbaa !165
  %.not.i.i = icmp eq i8 %i.j, 42
  br i1 %.not.i.i, label %_ZNK4asio9execution6detail17any_executor_base6targetINS_10io_context19basic_executor_typeISaIvELm4EEEEEPKT_v.exit, label %_ZNKSt9type_infoeqERKS_.exit.i

_ZNKSt9type_infoeqERKS_.exit.i:                   ; preds = %bb.c
  %i.k = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(52) @_ZTSN4asio10io_context19basic_executor_typeISaIvELm4EEE) #40
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZNKSt9type_infoeqERKS_.exit.thread.i, label %_ZNK4asio9execution6detail17any_executor_base6targetINS_10io_context19basic_executor_typeISaIvELm4EEEEEPKT_v.exit

_ZNKSt9type_infoeqERKS_.exit.thread.i:            ; preds = %_ZNKSt9type_infoeqERKS_.exit.i, %bb.b
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !350
  br label %_ZNK4asio9execution6detail17any_executor_base6targetINS_10io_context19basic_executor_typeISaIvELm4EEEEEPKT_v.exit

_ZNK4asio9execution6detail17any_executor_base6targetINS_10io_context19basic_executor_typeISaIvELm4EEEEEPKT_v.exit: ; preds = %bb.a, %bb.c, %_ZNKSt9type_infoeqERKS_.exit.i, %_ZNKSt9type_infoeqERKS_.exit.thread.i
  %i.n = phi ptr [ %i.m, %_ZNKSt9type_infoeqERKS_.exit.thread.i ], [ null, %_ZNKSt9type_infoeqERKS_.exit.i ], [ null, %bb.a ], [ null, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !572
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !714
  %i.r = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.q(), !inline_history !120 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !350, !nonnull !275, !noundef !275
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %i.u = load i64, ptr %i.n, align 8, !tbaa !1191
  %i.v = load i64, ptr %i.t, align 8, !tbaa !1191
  %i.w = icmp eq i64 %i.u, %i.v
  ret i1 %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio9execution6detail17any_executor_base10execute_exINS_10io_context19basic_executor_typeISaIvELm4EEEEEvRKS2_ONS_6detail17executor_functionE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #1 comdat align 2 {
_ZNKSt9type_infoeqERKS_.exit.thread.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !572
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !714
  %i.d = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.c(), !inline_history !120 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !350, !nonnull !275, !noundef !275
  tail call void @_ZNK4asio10io_context19basic_executor_typeISaIvELm4EE7executeINS_6detail17executor_functionEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4asio10io_context19basic_executor_typeISaIvELm4EE7executeINS_6detail17executor_functionEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.asio::detail::executor_op<asio::detail::executor_function, std::allocator<void>>::ptr", align 8 ; 10 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !1191   ; 2 uses
  %i.b = and i64 %i.a, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %._ZN4asio6detail9scheduler12can_dispatchEv.exit.thread_crit_edge

._ZN4asio6detail9scheduler12can_dispatchEv.exit.thread_crit_edge: ; preds = %bb.a
  %.pre = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  br label %_ZN4asio6detail9scheduler12can_dispatchEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.a, -4
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !665, !nonnull !275, !align !411
  %i.h = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E) ; 3 uses
  %.08.i.i = load ptr, ptr %i.h, align 8, !tbaa !448 ; 2 uses
  %.not9.i.i = icmp eq ptr %.08.i.i, null
  br i1 %.not9.i.i, label %_ZN4asio6detail9scheduler12can_dispatchEv.exit.thread.thread, label %.lr.ph.i.i

_ZN4asio6detail9scheduler12can_dispatchEv.exit.thread.thread: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  store ptr %0, ptr %2, align 8, !tbaa !1183
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %_ZN4asio6detail11executor_opINS0_17executor_functionESaIvENS0_19scheduler_operationEE3ptr8allocateERKS3_.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.010.i.i = phi ptr [ %.0.i.i, %bb.c ], [ %.08.i.i, %bb.b ] ; 3 uses
  %i.j = load ptr, ptr %.010.i.i, align 8, !tbaa !447
  %i.k = icmp eq ptr %i.j, %i.g
  br i1 %i.k, label %_ZN4asio6detail9scheduler12can_dispatchEv.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 16
  %.0.i.i = load ptr, ptr %i.l, align 8, !tbaa !448 ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i, label %_ZN4asio6detail9scheduler12can_dispatchEv.exit.thread, label %.lr.ph.i.i, !llvm.loop !15

_ZN4asio6detail9scheduler12can_dispatchEv.exit:   ; preds = %.lr.ph.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !449
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %_ZN4asio6detail9scheduler12can_dispatchEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN4asio6detail9scheduler12can_dispatchEv.exit
  %i.o = load ptr, ptr %1, align 8, !tbaa !731    ; 3 uses
  store ptr null, ptr %1, align 8, !tbaa !731
  fence acquire
  %.not.i.i12 = icmp eq ptr %i.o, null
  br i1 %.not.i.i12, label %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail17executor_functionES3_EEvRT_RT0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
end_hunk_2
begin_hunk_3_@_ZN4crow21routing_handle_resultD2Ev:bb.a
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %i.f = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !164 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !165
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #41
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.e
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !24

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !569
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.l = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !571
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #41
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1403 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1404
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #41
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i

_ZNSt6vectorIdSaIdEED2Ev.exit.i:                  ; preds = %bb.c, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1406 ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1407
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #41
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.d, %_ZNSt6vectorIdSaIdEED2Ev.exit.i
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !1409 ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i3.i, label %_ZN4crow14routing_paramsD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1410
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #41
  br label %_ZN4crow14routing_paramsD2Ev.exit

_ZN4crow14routing_paramsD2Ev.exit:                ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i, %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1406 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4crow14routing_paramsD2Ev.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1407
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ar) #41
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZN4crow14routing_paramsD2Ev.exit, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4crow14routing_paramsD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !569  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !570  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !164 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !165
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #41
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !24

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !569
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !571
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #41
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1403 ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1404
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #41
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1406 ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1407
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #41
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.d
  %i.ae = load ptr, ptr %0, align 8, !tbaa !1409  ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1410
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #41
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4crow10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(5176) dereferenceable(5176) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3147, !nonnull !275, !align !1285
  %1 = atomicrmw add ptr %i.b, i32 -1 seq_cst, align 4 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5080
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !164  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5096 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.g = load i64, ptr %i.e, align 8, !tbaa !165
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5048
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !164  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 5064 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.m = load i64, ptr %i.k, align 8, !tbaa !165
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 5016
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !164  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 5032 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.s = load i64, ptr %i.q, align 8, !tbaa !165
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4992
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !604  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4asio12const_bufferESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 5008
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !599
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #41
  br label %_ZNSt6vectorIN4asio12const_bufferESaIS1_EED2Ev.exit

_ZNSt6vectorIN4asio12const_bufferESaIS1_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4792
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !164 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4808 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN4crow8response16static_file_infoD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN4asio12const_bufferESaIS1_EED2Ev.exit
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !165
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #41
  br label %_ZN4crow8response16static_file_infoD2Ev.exit.i

_ZN4crow8response16static_file_infoD2Ev.exit.i:   ; preds = %_ZNSt6vectorIN4asio12const_bufferESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4776
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !244 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN4crow8response16static_file_infoD2Ev.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4760 ; 2 uses
  %i.ak = invoke noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  tail call void @__clang_call_terminate(ptr %i.am) #42
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.c, %_ZN4crow8response16static_file_infoD2Ev.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4744
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !244 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.ao, null
  br i1 %.not.i1.i, label %_ZNSt14_Function_baseD2Ev.exit2.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4728 ; 2 uses
  %i.aq = invoke noundef zeroext i1 %i.ao(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %i.ap, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2.i unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  tail call void @__clang_call_terminate(ptr %i.as) #42
  unreachable

_ZNSt14_Function_baseD2Ev.exit2.i:                ; preds = %bb.e, %_ZNSt14_Function_baseD2Ev.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4664
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.at) #40
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4632
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !164 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4648 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZN4crow8responseD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !165
  %i.az = add i64 %i.ay, 1
  tail call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #41
  br label %_ZN4crow8responseD2Ev.exit

_ZN4crow8responseD2Ev.exit:                       ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4608
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1398 ; 3 uses
  %.not.i = icmp eq ptr %i.bb, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4crow21routing_handle_resultESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4crow21routing_handle_resultEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4crow21routing_handle_resultEEclEPS1_.exit.i: ; preds = %_ZN4crow8responseD2Ev.exit
  tail call void @_ZN4crow21routing_handle_resultD2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %i.bb) #40
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 144) #41
  br label %_ZNSt10unique_ptrIN4crow21routing_handle_resultESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4crow21routing_handle_resultESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN4crow8responseD2Ev.exit, %_ZNKSt14default_deleteIN4crow21routing_handle_resultEEclEPS1_.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 4568
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !164 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 4584 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7: ; preds = %_ZNSt10unique_ptrIN4crow21routing_handle_resultESt14default_deleteIS1_EED2Ev.exit
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !165
  %i.bh = add i64 %i.bg, 1
  tail call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt10unique_ptrIN4crow21routing_handle_resultESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 4536
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !164 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 4552 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZN4crow10HTTPParserINS_10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEJEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !165
  %i.bn = add i64 %i.bm, 1
  tail call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #41
  br label %_ZN4crow10HTTPParserINS_10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEJEEEED2Ev.exit

_ZN4crow10HTTPParserINS_10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEJEEEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 4248
  tail call void @_ZN4crow7requestD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %i.bo) #40
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !349
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZN4asio6detail28reactive_socket_service_base7destroyERNS1_24base_implementation_typeE(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %i.bs)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZN4crow10HTTPParserINS_10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEJEEEED2Ev.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !350
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_ZN4crow17UnixSocketAdaptorD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !351
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !353
  invoke void %i.bz(ptr noundef nonnull align 8 dereferenceable(56) %i.bw)
          to label %_ZN4crow17UnixSocketAdaptorD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  tail call void @__clang_call_terminate(ptr %i.cb) #42
  unreachable

bb.j:                                             ; preds = %_ZN4crow10HTTPParserINS_10ConnectionINS_17UnixSocketAdaptorENS_4CrowIJEEEJEEEED2Ev.exit
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  tail call void @__clang_call_terminate(ptr %i.cd) #42
  unreachable

_ZN4crow17UnixSocketAdaptorD2Ev.exit:             ; preds = %bb.g, %bb.h
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !648 ; 4 uses
  %.not.i.i.i9 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i9, label %_ZNSt23enable_shared_from_thisIN4crow10ConnectionINS0_17UnixSocketAdaptorENS0_4CrowIJEEEJEEEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4crow17UnixSocketAdaptorD2Ev.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 12 ; 3 uses
end_hunk_3
begin_hunk_4_@_ZN4crow10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEJEEC2ERN4asio10io_contextEPS3_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt5tupleIJEERSt8functionIFSE_vEERNS_6detail10task_timerEPvRSt6atomicIjE:bb.a
  store ptr %i.g, ptr %i.k, align 8, !tbaa !350
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr @_ZZN4asio9execution12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS0_6detail8blocking7never_tILi0EEENS0_11prefer_onlyINS7_10possibly_tILi0EEEEENSA_INS6_16outstanding_work9tracked_tILi0EEEEENSA_INSE_11untracked_tILi0EEEEENSA_INS6_12relationship6fork_tILi0EEEEENSA_INSL_14continuation_tILi0EEEEEEE14prop_fns_tableINS_10io_context19basic_executor_typeISaIvELm0EEEEEPKNS6_17any_executor_base8prop_fnsISS_EEvE3fns, ptr %i.l, align 8, !tbaa !574
  store i32 -1, ptr %i.e, align 8, !tbaa !485
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 0, ptr %i.m, align 4, !tbaa !488
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.n, align 8, !tbaa !757
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %2, ptr %i.o, align 8, !tbaa !1545
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4208 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4240
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4248 ; 2 uses
  store i8 1, ptr %i.r, align 8, !tbaa !1389
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4256
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4272 ; 2 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !160
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4264
  store i64 0, ptr %i.u, align 8, !tbaa !166
  store i8 0, ptr %i.t, align 8, !tbaa !165
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4288
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4304 ; 2 uses
  store ptr %i.w, ptr %i.v, align 8, !tbaa !160
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4296
  store i64 0, ptr %i.x, align 8, !tbaa !166
  store i8 0, ptr %i.w, align 8, !tbaa !165
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4320
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4336 ; 2 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !160
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4328
  store i64 0, ptr %i.aa, align 8, !tbaa !166
  store i8 0, ptr %i.z, align 8, !tbaa !165
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4376
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4424
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !538
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4384
  store i64 1, ptr %i.ae, align 8, !tbaa !539
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4392
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ag, align 8, !tbaa !177
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4416
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4432
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 2 uses
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !160
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4440
  store i64 0, ptr %i.ak, align 8, !tbaa !166
  store i8 0, ptr %i.aj, align 8, !tbaa !165
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4464
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4480 ; 2 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !160
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4472
  store i64 0, ptr %i.an, align 8, !tbaa !166
  store i8 0, ptr %i.am, align 8, !tbaa !165
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4536
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4552 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(29) %i.ao, i8 0, i64 29, i1 false)
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !160
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4544
  store i64 0, ptr %i.ar, align 8, !tbaa !166
  store i8 0, ptr %i.aq, align 8, !tbaa !165
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4568
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4584 ; 2 uses
  store ptr %i.at, ptr %i.as, align 8, !tbaa !160
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4576
  store i64 0, ptr %i.au, align 8, !tbaa !166
  store i8 0, ptr %i.at, align 8, !tbaa !165
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 4600
  store ptr %0, ptr %i.av, align 8, !tbaa !1546
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.p, i8 0, i64 32, i1 false)
  store i32 256, ptr %i.p, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4608
  store ptr null, ptr %i.aw, align 8, !tbaa !1391
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4616
  store ptr %i.r, ptr %i.ax, align 8, !tbaa !1392
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 4624
  store i32 200, ptr %i.ay, align 8, !tbaa !537
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 4632
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4648 ; 2 uses
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !160
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 4640
  store i64 0, ptr %i.bb, align 8, !tbaa !166
  store i8 0, ptr %i.ba, align 8, !tbaa !165
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 4664
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4712
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !538
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 4672
  store i64 1, ptr %i.be, align 8, !tbaa !539
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 4680
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 4696
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bg, align 8, !tbaa !177
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 4704
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 4728
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 4792
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 4808 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.bh, i8 0, i64 19, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bi, i8 0, i64 64, i1 false)
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !160
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4800
  store i64 0, ptr %i.bl, align 8, !tbaa !166
  store i8 0, ptr %i.bk, align 8, !tbaa !165
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 4976
  store i8 0, ptr %i.bm, align 8, !tbaa !1547
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 4984
  store ptr %3, ptr %i.bn, align 8, !tbaa !584
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 4992
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i8 0, i64 24, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 5016
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 5032 ; 2 uses
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !160
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 5024
  store i64 0, ptr %i.br, align 8, !tbaa !166
  store i8 0, ptr %i.bq, align 8, !tbaa !165
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 5048
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 5064 ; 2 uses
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !160
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 5056
  store i64 0, ptr %i.bu, align 8, !tbaa !166
  store i8 0, ptr %i.bt, align 8, !tbaa !165
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 5080
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 5096 ; 2 uses
  store ptr %i.bw, ptr %i.bv, align 8, !tbaa !160
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 5088
  store i64 0, ptr %i.bx, align 8, !tbaa !166
  store i8 0, ptr %i.bw, align 8, !tbaa !165
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 5112
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 5128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.by, i8 0, i64 12, i1 false)
  store ptr %4, ptr %i.bz, align 8, !tbaa !1548
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 5144
  store ptr %5, ptr %i.ca, align 8, !tbaa !1395
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 5152
  store ptr %6, ptr %i.cb, align 8, !tbaa !1230
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 5160
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !162
  store i64 %i.ce, ptr %i.cc, align 8, !tbaa !1549
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 5168
  store ptr %8, ptr %i.cf, align 8, !tbaa !1397
  %i.cg = atomicrmw add ptr %8, i32 1 seq_cst, align 4 ; 0 uses
  ret void

bb.c:                                             ; preds = %bb.a
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt23enable_shared_from_thisIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEJEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #40
  resume { ptr, i32 } %i.ch
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23enable_shared_from_thisIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEJEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !648  ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10__weak_ptrIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEJEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  %i.d = load i8, ptr @__libc_single_threaded, align 1, !tbaa !165
  %.not.i.i.i = icmp eq i8 %i.d, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.c, align 4, !tbaa !276  ; 2 uses
  %i.f = add nsw i32 %i.e, -1
  store i32 %i.f, ptr %i.c, align 4, !tbaa !276
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.g = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi i32 [ %i.e, %bb.c ], [ %i.g, %bb.d ]
  %i.h = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.h, label %bb.e, label %_ZNSt10__weak_ptrIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEJEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !257
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #40, !inline_history !3410
  br label %_ZNSt10__weak_ptrIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEJEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt10__weak_ptrIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEJEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4crow10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(5176) dereferenceable(5176) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3412, !nonnull !275, !align !1285
  %1 = atomicrmw add ptr %i.b, i32 -1 seq_cst, align 4 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5080
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !164  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5096 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.g = load i64, ptr %i.e, align 8, !tbaa !165
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5048
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !164  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 5064 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.m = load i64, ptr %i.k, align 8, !tbaa !165
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 5016
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !164  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 5032 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.s = load i64, ptr %i.q, align 8, !tbaa !165
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4992
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !604  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4asio12const_bufferESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 5008
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !599
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #41
  br label %_ZNSt6vectorIN4asio12const_bufferESaIS1_EED2Ev.exit

_ZNSt6vectorIN4asio12const_bufferESaIS1_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4792
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !164 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4808 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN4crow8response16static_file_infoD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN4asio12const_bufferESaIS1_EED2Ev.exit
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !165
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #41
  br label %_ZN4crow8response16static_file_infoD2Ev.exit.i

_ZN4crow8response16static_file_infoD2Ev.exit.i:   ; preds = %_ZNSt6vectorIN4asio12const_bufferESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4776
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !244 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN4crow8response16static_file_infoD2Ev.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4760 ; 2 uses
  %i.ak = invoke noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  tail call void @__clang_call_terminate(ptr %i.am) #42
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.c, %_ZN4crow8response16static_file_infoD2Ev.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4744
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !244 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.ao, null
  br i1 %.not.i1.i, label %_ZNSt14_Function_baseD2Ev.exit2.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4728 ; 2 uses
  %i.aq = invoke noundef zeroext i1 %i.ao(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %i.ap, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2.i unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  tail call void @__clang_call_terminate(ptr %i.as) #42
  unreachable

_ZNSt14_Function_baseD2Ev.exit2.i:                ; preds = %bb.e, %_ZNSt14_Function_baseD2Ev.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4664
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN4crow9ci_key_eqENSC_7ci_hashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.at) #40
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4632
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !164 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4648 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZN4crow8responseD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !165
  %i.az = add i64 %i.ay, 1
  tail call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #41
  br label %_ZN4crow8responseD2Ev.exit

_ZN4crow8responseD2Ev.exit:                       ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4608
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1398 ; 3 uses
  %.not.i = icmp eq ptr %i.bb, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4crow21routing_handle_resultESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4crow21routing_handle_resultEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4crow21routing_handle_resultEEclEPS1_.exit.i: ; preds = %_ZN4crow8responseD2Ev.exit
  tail call void @_ZN4crow21routing_handle_resultD2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %i.bb) #40
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 144) #41
  br label %_ZNSt10unique_ptrIN4crow21routing_handle_resultESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4crow21routing_handle_resultESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN4crow8responseD2Ev.exit, %_ZNKSt14default_deleteIN4crow21routing_handle_resultEEclEPS1_.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 4568
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !164 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 4584 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7: ; preds = %_ZNSt10unique_ptrIN4crow21routing_handle_resultESt14default_deleteIS1_EED2Ev.exit
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !165
  %i.bh = add i64 %i.bg, 1
  tail call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt10unique_ptrIN4crow21routing_handle_resultESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 4536
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !164 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 4552 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZN4crow10HTTPParserINS_10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEJEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !165
  %i.bn = add i64 %i.bm, 1
  tail call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #41
  br label %_ZN4crow10HTTPParserINS_10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEJEEEED2Ev.exit

_ZN4crow10HTTPParserINS_10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEJEEEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 4248
  tail call void @_ZN4crow7requestD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %i.bo) #40
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !505
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZN4asio6detail28reactive_socket_service_base7destroyERNS1_24base_implementation_typeE(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %i.bs)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZN4crow10HTTPParserINS_10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEJEEEED2Ev.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !350
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_ZN4crow13SocketAdaptorD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !351
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !353
  invoke void %i.bz(ptr noundef nonnull align 8 dereferenceable(56) %i.bw)
          to label %_ZN4crow13SocketAdaptorD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  tail call void @__clang_call_terminate(ptr %i.cb) #42
  unreachable

bb.j:                                             ; preds = %_ZN4crow10HTTPParserINS_10ConnectionINS_13SocketAdaptorENS_4CrowIJEEEJEEEED2Ev.exit
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  tail call void @__clang_call_terminate(ptr %i.cd) #42
  unreachable

_ZN4crow13SocketAdaptorD2Ev.exit:                 ; preds = %bb.g, %bb.h
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !648 ; 4 uses
  %.not.i.i.i9 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i9, label %_ZNSt23enable_shared_from_thisIN4crow10ConnectionINS0_13SocketAdaptorENS0_4CrowIJEEEJEEEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4crow13SocketAdaptorD2Ev.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 12 ; 3 uses
end_hunk_4
