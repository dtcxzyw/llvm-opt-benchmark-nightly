inline.NumInlined: 3295
inline.NumDeleted: 1187
begin_hunk_0_@_ZN8facebook6hermes7tracing20TracingHermesRuntimeD2Ev:bb.a
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #34, !inline_history !987
  br label %_ZNSt12__shared_ptrIN6hermes2vm12CrashManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !89
  %.not.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i = phi i32 [ %i.u, %bb.j ], [ %i.ae, %bb.k ]
  %i.af = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.af, label %bb.l, label %_ZNSt12__shared_ptrIN6hermes2vm12CrashManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !90

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #34
  br label %_ZNSt12__shared_ptrIN6hermes2vm12CrashManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6hermes2vm12CrashManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h, %bb.f, %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !988, !range !222, !noundef !96
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %_ZNKSt8functionIFvvEEclEv.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt12__shared_ptrIN6hermes2vm12CrashManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  invoke void @_ZN8facebook6hermes7tracing20TracingHermesRuntime33flushAndDisableBridgeTrafficTraceB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(696) %0)
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.m
  %i.aj = load ptr, ptr %1, align 8, !tbaa !219   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.noexc
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !89
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #35
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %.noexc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !120
  %.not.i.i1 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i1, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  invoke void @_ZSt25__throw_bad_function_callv() #38
          to label %.noexc2 unwind label %bb.t

.noexc2:                                          ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !968
  invoke void %i.as(ptr noundef nonnull align 8 dereferenceable(32) %i.aq)
          to label %_ZNKSt8functionIFvvEEclEv.exit unwind label %bb.t, !inline_history !1008

_ZNKSt8functionIFvvEEclEv.exit:                   ; preds = %bb.o, %_ZNSt12__shared_ptrIN6hermes2vm12CrashManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !219 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt8functionIFvvEEclEv.exit
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !89
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt8functionIFvvEEclEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !120 ; 2 uses
  %.not.i = icmp eq ptr %i.ba, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.bc = invoke noundef zeroext i1 %i.ba(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.q ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  call void @__clang_call_terminate(ptr %i.be) #37
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !120 ; 2 uses
  %.not.i4 = icmp eq ptr %i.bg, null
  br i1 %.not.i4, label %_ZNSt14_Function_baseD2Ev.exit5, label %bb.r

bb.r:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.bi = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, ptr noundef nonnull align 8 dereferenceable(32) %i.bh, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit5 unwind label %bb.s ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #37
  unreachable

_ZNSt14_Function_baseD2Ev.exit5:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.r
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 312
  call void @_ZN6hermes2vm13RuntimeConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(269) dereferenceable(269) %i.bl) #34
  call void @_ZN8facebook6hermes7tracing14TracingRuntimeD2Ev(ptr noundef nonnull align 8 dereferenceable(312) %0) #34
  ret void

bb.t:                                             ; preds = %bb.o, %bb.n, %bb.m, %_ZNK6hermes2vm13RuntimeConfig11getCrashMgrEv.exit
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #37
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #34 ; 0 uses
  tail call void @_ZSt9terminatev() #37
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing20TracingHermesRuntime20flushAndDisableTraceEv(ptr noundef nonnull align 8 dereferenceable(696) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  call void @_ZN8facebook6hermes7tracing20TracingHermesRuntime33flushAndDisableBridgeTrafficTraceB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(696) %0)
  %i.a = load ptr, ptr %1, align 8, !tbaa !219    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !89
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_ZThn8_N8facebook6hermes7tracing20TracingHermesRuntimeD1Ev(ptr noundef %0) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN8facebook6hermes7tracing20TracingHermesRuntimeD2Ev(ptr noundef nonnull align 8 dereferenceable(696) %i.a) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8facebook6hermes7tracing20TracingHermesRuntimeD0Ev(ptr noundef nonnull align 8 dereferenceable(696) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN8facebook6hermes7tracing20TracingHermesRuntimeD2Ev(ptr noundef nonnull align 8 dereferenceable(696) %0) #34
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 696) #35
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define hidden void @_ZThn8_N8facebook6hermes7tracing20TracingHermesRuntimeD0Ev(ptr noundef %0) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  tail call void @_ZN8facebook6hermes7tracing20TracingHermesRuntimeD2Ev(ptr noundef nonnull align 8 dereferenceable(696) %i.a) #34
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(696) %i.a, i64 noundef 696) #35
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing20TracingHermesRuntime33flushAndDisableBridgeTrafficTraceB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(696) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !988, !range !222, !noundef !96
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !216
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !219  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.j = load i64, ptr %i.i, align 8, !tbaa !221  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  store i64 %i.j, ptr %i.b, align 8, !tbaa !104
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.l = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !219
  %i.m = load i64, ptr %i.b, align 8, !tbaa !104
  store i64 %i.m, ptr %i.g, align 8, !tbaa !89
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.n = phi ptr [ %i.l, %.noexc.i ], [ %i.g, %bb.b ] ; 2 uses
  switch i64 %i.j, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.o = load i8, ptr %i.h, align 1, !tbaa !89
  store i8 %i.o, ptr %i.n, align 1, !tbaa !89
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.h, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.p = load i64, ptr %i.b, align 8, !tbaa !104  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !221
  %i.r = load ptr, ptr %0, align 8, !tbaa !219
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !210, !nonnull !96, !align !214
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !7
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 112
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef nonnull align 1 dereferenceable(1) ptr %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  tail call void @_ZN8facebook6hermes7tracing10SynthTrace15flushAndDisableERKN6hermes2vm11GCExecTraceE(ptr noundef nonnull align 8 dereferenceable(56) %i.t, ptr noundef nonnull align 1 dereferenceable(1) %i.aa)
  store i8 1, ptr %i.c, align 8, !tbaa !988
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !120, !noalias !1009
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %bb.f, label %_ZNKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEclEv.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt25__throw_bad_function_callv() #38, !noalias !1009
  unreachable

_ZNKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEclEv.exit: ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 584
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !966, !noalias !1009
  call void %i.af(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ad), !inline_history !1012
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 664 ; 5 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !219 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 680 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  %i.ak = load ptr, ptr %2, align 8, !tbaa !219   ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.am = icmp eq ptr %i.ak, %i.al                ; 2 uses
  br i1 %i.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEclEv.exit
  br i1 %i.am, label %bb.g, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEclEv.exit
  br i1 %i.am, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !221 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  call void @llvm.assume(i1 %i.ap)
  switch i64 %i.ao, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.aq = load i8, ptr %i.ak, align 1, !tbaa !89
  store i8 %i.aq, ptr %i.ah, align 1, !tbaa !89
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr align 1 %i.ak, i64 %i.ao, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.ar = load i64, ptr %i.an, align 8, !tbaa !221 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 672
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !221
  %i.at = load ptr, ptr %i.ag, align 8, !tbaa !219
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store i8 0, ptr %i.au, align 1, !tbaa !89
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !219
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 672
  store ptr %i.ak, ptr %i.ag, align 8, !tbaa !219
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ax = load <2 x i64>, ptr %i.aw, align 8, !tbaa !89
  store <2 x i64> %i.ax, ptr %i.av, align 8, !tbaa !89
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ay = load i64, ptr %i.ai, align 8, !tbaa !89
  store ptr %i.ak, ptr %i.ag, align 8, !tbaa !219
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.bb = load <2 x i64>, ptr %i.az, align 8, !tbaa !89
  store <2 x i64> %i.bb, ptr %i.ba, align 8, !tbaa !89
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ah, ptr %2, align 8, !tbaa !219
  store i64 %i.ay, ptr %i.al, align 8, !tbaa !89
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.al, ptr %2, align 8, !tbaa !219
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.j, %bb.k
  %3 = phi ptr [ %i.ah, %bb.j ], [ %i.al, %bb.k ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.bc, align 8, !tbaa !221
  store i8 0, ptr %3, align 1, !tbaa !89
  %i.bd = load ptr, ptr %2, align 8, !tbaa !219   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !89
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bi, ptr %0, align 8, !tbaa !216
  %i.bj = load ptr, ptr %i.ag, align 8, !tbaa !219 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !221 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %i.bl, ptr %i.a, align 8, !tbaa !104
  %i.bm = icmp ugt i64 %i.bl, 15
  br i1 %i.bm, label %.noexc.i2, label %._crit_edge.i.i1

.noexc.i2:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bn = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.bn, ptr %0, align 8, !tbaa !219
  %i.bo = load i64, ptr %i.a, align 8, !tbaa !104
  store i64 %i.bo, ptr %i.bi, align 8, !tbaa !89
  br label %._crit_edge.i.i1

._crit_edge.i.i1:                                 ; preds = %.noexc.i2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bp = phi ptr [ %i.bn, %.noexc.i2 ], [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  switch i64 %i.bl, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit3
  ]

bb.l:                                             ; preds = %._crit_edge.i.i1
  %i.bq = load i8, ptr %i.bj, align 1, !tbaa !89
  store i8 %i.bq, ptr %i.bp, align 1, !tbaa !89
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit3

bb.m:                                             ; preds = %._crit_edge.i.i1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bp, ptr align 1 %i.bj, i64 %i.bl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit3: ; preds = %._crit_edge.i.i1, %bb.l, %bb.m
  %i.br = load i64, ptr %i.a, align 8, !tbaa !104 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !221
  %i.bt = load ptr, ptr %0, align 8, !tbaa !219
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.br
  store i8 0, ptr %i.bu, align 1, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void
}

declare void @_ZN8facebook6hermes7tracing10SynthTrace15flushAndDisableERKN6hermes2vm11GCExecTraceE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

; Function Attrs: uwtable
define hidden void @_ZThn8_N8facebook6hermes7tracing20TracingHermesRuntime33flushAndDisableBridgeTrafficTraceB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1) unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -8
  tail call void @_ZN8facebook6hermes7tracing20TracingHermesRuntime33flushAndDisableBridgeTrafficTraceB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(696) %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing20TracingHermesRuntime18evaluateJavaScriptERKSt10shared_ptrIKNS_3jsi6BufferEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.facebook::jsi::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(696) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN8facebook6hermes7tracing14TracingRuntime18evaluateJavaScriptERKSt10shared_ptrIKNS_3jsi6BufferEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.facebook::jsi::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook6hermes7tracing20TracingHermesRuntime13crashCallbackEi(ptr noundef nonnull align 8 dereferenceable(696) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.llvh::raw_fd_ostream", align 8 ; 7 uses
  %3 = alloca %"class.hermes::JSONEmitter", align 8 ; 20 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.b = load i8, ptr %i.a, align 8, !tbaa !988, !range !222, !noundef !96
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  call void @_ZN4llvh14raw_fd_ostreamC1Eibb(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %1, i1 noundef zeroext false, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !83
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.e, align 8, !tbaa !1013
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 8, ptr %i.f, align 4, !tbaa !1014
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %2, ptr %i.g, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i8 0, ptr %i.h, align 8, !tbaa !1015
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 68
  store i32 0, ptr %i.i, align 4, !tbaa !1022
  invoke void @_ZN6hermes11JSONEmitter8openDictEv(ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr nonnull @.str.11, i64 4)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  invoke void @_ZN6hermes11JSONEmitter9emitValueEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr nonnull @.str.12, i64 7)
          to label %_ZN6hermes11JSONEmitter12emitKeyValueIA8_cEEvN4llvh9StringRefERKT_.exit unwind label %bb.e

_ZN6hermes11JSONEmitter12emitKeyValueIA8_cEEvN4llvh9StringRefERKT_.exit: ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.j, ptr noundef nonnull align 1 dereferenceable(15) @.str.13, i64 15, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 15, ptr %i.k, align 8, !tbaa !221
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 31
  store i8 0, ptr %i.l, align 1, !tbaa !89
  invoke void @_ZN8facebook6hermes7tracing20TracingHermesRuntime33flushAndDisableBridgeTrafficTraceB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(696) %0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZN6hermes11JSONEmitter12emitKeyValueIA8_cEEvN4llvh9StringRefERKT_.exit
  %i.m = load ptr, ptr %5, align 8, !tbaa !219    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.p = load i64, ptr %i.n, align 8, !tbaa !89
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.r = load i64, ptr %i.k, align 8, !tbaa !221
  %i.s = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef %i.r, ptr noundef nonnull @.str.14, i64 noundef 9)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.f ; 0 uses

bb.e:                                             ; preds = %.noexc, %bb.c, %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN6hermes11JSONEmitter12emitKeyValueIA8_cEEvN4llvh9StringRefERKT_.exit
  %i.u = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  %i.w = extractvalue { ptr, i32 } %i.u, 1
  %i.x = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #34
  %i.y = icmp eq i32 %i.w, %i.x
  %i.z = call ptr @__cxa_begin_catch(ptr %i.v) #34 ; 2 uses
  br i1 %i.y, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call noundef ptr %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z) #34
  invoke void (ptr, ptr, ...) @_ZN6hermes9hermesLogEPKcS1_z(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef %i.ad)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_end_catch()
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h, %bb.l
  invoke void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr nonnull @.str.17, i64 6)
          to label %.noexc21 unwind label %bb.m

.noexc21:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.ae = load ptr, ptr %4, align 8, !tbaa !219
  %i.af = load i64, ptr %i.k, align 8, !tbaa !221
  invoke void @_ZN6hermes11JSONEmitter9emitValueEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr %i.ae, i64 %i.af)
          to label %_ZN6hermes11JSONEmitter12emitKeyValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvN4llvh9StringRefERKT_.exit unwind label %bb.m

_ZN6hermes11JSONEmitter12emitKeyValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvN4llvh9StringRefERKT_.exit: ; preds = %.noexc21
  invoke void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr nonnull @.str.18, i64 8)
          to label %.noexc23 unwind label %bb.m

.noexc23:                                         ; preds = %_ZN6hermes11JSONEmitter12emitKeyValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvN4llvh9StringRefERKT_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !219
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !221
  invoke void @_ZN6hermes11JSONEmitter9emitValueEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr %i.ah, i64 %i.aj)
          to label %_ZN6hermes11JSONEmitter12emitKeyValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvN4llvh9StringRefERKT_.exit25 unwind label %bb.m

_ZN6hermes11JSONEmitter12emitKeyValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvN4llvh9StringRefERKT_.exit25: ; preds = %.noexc23
  invoke void @_ZN6hermes11JSONEmitter9closeDictEv(ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %_ZN6hermes11JSONEmitter12emitKeyValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvN4llvh9StringRefERKT_.exit25
end_hunk_0
