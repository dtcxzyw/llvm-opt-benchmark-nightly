Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/ConsoleMessage?download=true
inline.NumInlined: 170
inline.NumDeleted: 115
begin_hunk_0_@_ZN8facebook6hermes3cdp21ConsoleMessageStorage10addMessageENS1_14ConsoleMessageE:bb.a
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !26
  tail call void @_ZNSt5dequeIN8facebook6hermes3cdp14ConsoleMessageESaIS3_EE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(80) %i.a) #14
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aj = phi ptr [ %.pre, %bb.b ], [ %i.o, %bb.a ] ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !53
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -64
  %.not.i.i = icmp eq ptr %i.aj, %i.am
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aj, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 12, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ap = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !29
  store <2 x ptr> %i.ap, ptr %i.an, align 8, !tbaa !29
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !31
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.av = load <2 x ptr>, ptr %i.au, align 8, !tbaa !33
  store <2 x ptr> %i.av, ptr %i.at, align 8, !tbaa !33
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !35
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !35
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  %i.az = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  store ptr %i.ba, ptr %i.b, align 8, !tbaa !27
  br label %_ZNSt5dequeIN8facebook6hermes3cdp14ConsoleMessageESaIS3_EE9push_backEOS3_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN8facebook6hermes3cdp14ConsoleMessageESaIS3_EE16_M_push_back_auxIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1)
  br label %_ZNSt5dequeIN8facebook6hermes3cdp14ConsoleMessageESaIS3_EE9push_backEOS3_.exit

_ZNSt5dequeIN8facebook6hermes3cdp14ConsoleMessageESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeIN8facebook6hermes3cdp14ConsoleMessageESaIS3_EE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !54
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -64
  %.not = icmp eq ptr %i.b, %i.e
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !37   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !38   ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN8facebook6hermes8debugger13CallFrameInfoES3_EvT_S5_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZSt8_DestroyIN8facebook6hermes8debugger13CallFrameInfoEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN8facebook6hermes8debugger13CallFrameInfoEEvPT_.exit.i.i.i.i.i ], [ %i.g, %bb.b ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !42   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 64 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN8facebook6hermes8debugger14SourceLocationD2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !43
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #15
  br label %_ZN8facebook6hermes8debugger14SourceLocationD2Ev.exit.i.i.i.i.i.i.i

_ZN8facebook6hermes8debugger14SourceLocationD2Ev.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.p = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !42 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyIN8facebook6hermes8debugger13CallFrameInfoEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook6hermes8debugger14SourceLocationD2Ev.exit.i.i.i.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !43
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #15
  br label %_ZSt8_DestroyIN8facebook6hermes8debugger13CallFrameInfoEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN8facebook6hermes8debugger13CallFrameInfoEEvPT_.exit.i.i.i.i.i: ; preds = %_ZN8facebook6hermes8debugger14SourceLocationD2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 80 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.u, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN8facebook6hermes8debugger13CallFrameInfoES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN8facebook6hermes8debugger13CallFrameInfoES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN8facebook6hermes8debugger13CallFrameInfoEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !37
  br label %_ZSt8_DestroyIPN8facebook6hermes8debugger13CallFrameInfoES3_EvT_S5_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN8facebook6hermes8debugger13CallFrameInfoES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN8facebook6hermes8debugger13CallFrameInfoES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.b
  %i.v = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN8facebook6hermes8debugger13CallFrameInfoES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.g, %bb.b ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i.i, label %_ZN8facebook6hermes8debugger10StackTraceD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN8facebook6hermes8debugger13CallFrameInfoES3_EvT_S5_RSaIT0_E.exit.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #15
  br label %_ZN8facebook6hermes8debugger10StackTraceD2Ev.exit.i

_ZN8facebook6hermes8debugger10StackTraceD2Ev.exit.i: ; preds = %bb.c, %_ZSt8_DestroyIPN8facebook6hermes8debugger13CallFrameInfoES3_EvT_S5_RSaIT0_E.exit.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !45 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !46 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN8facebook3jsi5ValueES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN8facebook6hermes8debugger10StackTraceD2Ev.exit.i, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %i.ac, %_ZN8facebook6hermes8debugger10StackTraceD2Ev.exit.i ] ; 2 uses
  tail call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.05.i.i.i.i) #14
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, %i.ae
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN8facebook3jsi5ValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN8facebook3jsi5ValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.ab, align 8, !tbaa !45
  br label %_ZSt8_DestroyIPN8facebook3jsi5ValueES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN8facebook3jsi5ValueES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN8facebook3jsi5ValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %_ZN8facebook6hermes8debugger10StackTraceD2Ev.exit.i
  %i.ag = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN8facebook3jsi5ValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ac, %_ZN8facebook6hermes8debugger10StackTraceD2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i1.i.i, label %_ZN8facebook6hermes3cdp14ConsoleMessageD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN8facebook3jsi5ValueES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !31
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #15
  br label %_ZN8facebook6hermes3cdp14ConsoleMessageD2Ev.exit

_ZN8facebook6hermes3cdp14ConsoleMessageD2Ev.exit: ; preds = %_ZSt8_DestroyIPN8facebook3jsi5ValueES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.d
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  store ptr %i.an, ptr %i.a, align 8, !tbaa !36
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @_ZNSt5dequeIN8facebook6hermes3cdp14ConsoleMessageESaIS3_EE16_M_pop_front_auxEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN8facebook6hermes3cdp14ConsoleMessageD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN8facebook6hermes3cdp21ConsoleMessageStorage5clearEv(ptr noundef nonnull align 8 dereferenceable(96) initializes((8, 16)) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.a, align 8, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt5dequeIN8facebook6hermes3cdp14ConsoleMessageESaIS3_EE5clearEv(ptr noundef nonnull align 8 dereferenceable(80) %i.b) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeIN8facebook6hermes3cdp14ConsoleMessageESaIS3_EE5clearEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load <2 x ptr>, ptr %i.a, align 8, !tbaa !47, !noalias !60
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !23, !noalias !60 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25, !noalias !60 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22, !noalias !60 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23, !noalias !61
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24, !noalias !61
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22, !noalias !61 ; 3 uses
  %.06.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.n = icmp ult ptr %.06.i.i.i, %i.m
  br i1 %i.n, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.a
  %.not.i.i.i = icmp eq ptr %i.g, %i.m
  br i1 %.not.i.i.i, label %_ZNSt5dequeIN8facebook6hermes3cdp14ConsoleMessageESaIS3_EE15_M_destroy_dataESt15_Deque_iteratorIS3_RS3_PS3_ES9_RKS4_.exit.i, label %bb.b

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.noexc
  %.07.i.i.i = phi ptr [ %.0.i.i.i, %.noexc ], [ %.06.i.i.i, %bb.a ] ; 2 uses
  %i.o = load ptr, ptr %.07.i.i.i, align 8, !tbaa !47 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 512
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN8facebook6hermes3cdp14ConsoleMessageEEEvT_S7_(ptr noundef nonnull %i.o, ptr noundef nonnull %i.p)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %.lr.ph.i.i.i
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 8 ; 2 uses
  %i.q = icmp ult ptr %.0.i.i.i, %i.m
  br i1 %i.q, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !59

bb.b:                                             ; preds = %._crit_edge.i.i.i
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN8facebook6hermes3cdp14ConsoleMessageEEEvT_S7_(ptr noundef %i.c, ptr noundef %i.e)
          to label %_ZNSt5dequeIN8facebook6hermes3cdp14ConsoleMessageESaIS3_EE15_M_destroy_dataESt15_Deque_iteratorIS3_RS3_PS3_ES9_RKS4_.exit.i unwind label %bb.c

_ZNSt5dequeIN8facebook6hermes3cdp14ConsoleMessageESaIS3_EE15_M_destroy_dataESt15_Deque_iteratorIS3_RS3_PS3_ES9_RKS4_.exit.i: ; preds = %bb.b, %._crit_edge.i.i.i
  %.sink.i.i.i = phi ptr [ %i.c, %._crit_edge.i.i.i ], [ %i.k, %bb.b ]
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN8facebook6hermes3cdp14ConsoleMessageEEEvT_S7_(ptr noundef %.sink.i.i.i, ptr noundef %i.i)
          to label %.noexc2 unwind label %bb.c

.noexc2:                                          ; preds = %_ZNSt5dequeIN8facebook6hermes3cdp14ConsoleMessageESaIS3_EE15_M_destroy_dataESt15_Deque_iteratorIS3_RS3_PS3_ES9_RKS4_.exit.i
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !48   ; 2 uses
  %i.s = icmp ult ptr %i.g, %i.r
  br i1 %i.s, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %.noexc2, %.lr.ph.i.i
  %.06.i.pn.i = phi ptr [ %.06.i.i, %.lr.ph.i.i ], [ %i.g, %.noexc2 ]
  %.06.i.i = getelementptr inbounds nuw i8, ptr %.06.i.pn.i, i64 8 ; 3 uses
  %i.t = load ptr, ptr %.06.i.i, align 8, !tbaa !47
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef 512) #15
  %i.u = icmp ult ptr %.06.i.i, %i.r
  br i1 %i.u, label %.lr.ph.i.i, label %.loopexit, !llvm.loop !2

.loopexit:                                        ; preds = %.lr.ph.i.i, %.noexc2
  store <2 x ptr> %i.b, ptr %i.h, align 8, !tbaa !47
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !47
  store ptr %i.g, ptr %i.l, align 8, !tbaa !62
  ret void

bb.c:                                             ; preds = %.lr.ph.i.i.i, %_ZNSt5dequeIN8facebook6hermes3cdp14ConsoleMessageESaIS3_EE15_M_destroy_dataESt15_Deque_iteratorIS3_RS3_PS3_ES9_RKS4_.exit.i, %bb.b
  %lpad.loopexit.split-lp8 = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %lpad.loopexit.split-lp8, 0
  tail call void @__clang_call_terminate(ptr %i.v) #16
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 dereferenceable(80) ptr @_ZNK8facebook6hermes3cdp21ConsoleMessageStorage8messagesEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(96) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK8facebook6hermes3cdp21ConsoleMessageStorage9discardedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !26
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { double, i8 } @_ZNK8facebook6hermes3cdp21ConsoleMessageStorage15oldestTimestampEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.j to i64
  %i.k = shl nsw i64 %.neg.i.i, 3
  %i.l = add i64 %i.i, %i.k
  %i.m = and i64 %i.l, -8
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !24
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 6
  %i.u = add nsw i64 %i.t, %i.m
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !25
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 6
  %i.ac = sub nsw i64 0, %i.ab
  %i.ad = icmp eq i64 %i.u, %i.ac
  br i1 %i.ad, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ae = load double, ptr %i.x, align 8, !tbaa !64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.2.0 = phi i8 [ 1, %bb.b ], [ 0, %bb.a ]
  %.sroa.0.0 = phi double [ %i.ae, %bb.b ], [ undef, %bb.a ]
  %.fca.0.insert = insertvalue { double, i8 } poison, double %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { double, i8 } %.fca.0.insert, i8 %.sroa.2.0, 1
  ret { double, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt11_Deque_baseIN8facebook6hermes3cdp14ConsoleMessageESaIS3_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = lshr i64 %1, 3                           ; 2 uses
  %i.b = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.b, 3     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 %.sroa.speculated, ptr %i.c, align 8, !tbaa !49
  %i.d = icmp ugt i64 %1, 9223372036854775783
  br i1 %i.d, label %bb.b, label %_ZNSt11_Deque_baseIN8facebook6hermes3cdp14ConsoleMessageESaIS3_EE15_M_allocate_mapEm.exit, !prof !50

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %1, -25
  br i1 %i.e, label %.noexc.i, label %.noexc3.i

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

.noexc3.i:                                        ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #17
  unreachable

_ZNSt11_Deque_baseIN8facebook6hermes3cdp14ConsoleMessageESaIS3_EE15_M_allocate_mapEm.exit: ; preds = %bb.a
  %i.f = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.g = shl nuw nsw i64 %.sroa.speculated, 3
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #18 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !51
  %i.i = load i64, ptr %i.c, align 8, !tbaa !49
  %i.j = sub i64 %i.i, %i.f
  %i.k = lshr i64 %i.j, 1
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.k ; 6 uses
  %.idx = shl nuw nsw i64 %i.f, 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseIN8facebook6hermes3cdp14ConsoleMessageESaIS3_EE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseIN8facebook6hermes3cdp14ConsoleMessageESaIS3_EE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.o, %_ZNSt11_Deque_baseIN8facebook6hermes3cdp14ConsoleMessageESaIS3_EE16_M_allocate_nodeEv.exit.i ], [ %i.l, %_ZNSt11_Deque_baseIN8facebook6hermes3cdp14ConsoleMessageESaIS3_EE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.n = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #18
          to label %_ZNSt11_Deque_baseIN8facebook6hermes3cdp14ConsoleMessageESaIS3_EE16_M_allocate_nodeEv.exit.i unwind label %bb.c

_ZNSt11_Deque_baseIN8facebook6hermes3cdp14ConsoleMessageESaIS3_EE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.n, ptr %.011.i, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.p = icmp ult ptr %i.o, %i.m
  br i1 %i.p, label %.lr.ph.i, label %_ZNSt11_Deque_baseIN8facebook6hermes3cdp14ConsoleMessageESaIS3_EE15_M_create_nodesEPPS3_S7_.exit, !llvm.loop !65

bb.c:                                             ; preds = %.lr.ph.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #14 ; 0 uses
  %i.t = icmp ult ptr %i.l, %.011.i
  br i1 %i.t, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIN8facebook6hermes3cdp14ConsoleMessageESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %i.u = load ptr, ptr %.06.i.i, align 8, !tbaa !47
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef 512) #15
  %i.v = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.w = icmp ult ptr %i.v, %.011.i
  br i1 %i.w, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIN8facebook6hermes3cdp14ConsoleMessageESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i, !llvm.loop !2

_ZNSt11_Deque_baseIN8facebook6hermes3cdp14ConsoleMessageESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  invoke void @__cxa_rethrow() #17
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt11_Deque_baseIN8facebook6hermes3cdp14ConsoleMessageESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #16
  unreachable

bb.f:                                             ; preds = %_ZNSt11_Deque_baseIN8facebook6hermes3cdp14ConsoleMessageESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i
  unreachable

.body:                                            ; preds = %bb.d
  %i.aa = extractvalue { ptr, i32 } %i.x, 0
  %i.ab = tail call ptr @__cxa_begin_catch(ptr %i.aa) #14 ; 0 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !51
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !49
  %i.ae = shl i64 %i.ad, 3
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ae) #15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #17
          to label %bb.j unwind label %bb.g

bb.g:                                             ; preds = %.body
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.af

_ZNSt11_Deque_baseIN8facebook6hermes3cdp14ConsoleMessageESaIS3_EE15_M_create_nodesEPPS3_S7_.exit: ; preds = %_ZNSt11_Deque_baseIN8facebook6hermes3cdp14ConsoleMessageESaIS3_EE16_M_allocate_nodeEv.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.l, ptr %i.ah, align 8, !tbaa !22
  %i.ai = load ptr, ptr %i.l, align 8, !tbaa !47  ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 512
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !25
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.an = getelementptr inbounds i8, ptr %i.m, i64 -8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !22
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !47 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 512
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !25
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !36
  %i.at = and i64 %1, 7
  %i.au = getelementptr inbounds nuw [64 x i8], ptr %i.ap, i64 %i.at
  store ptr %i.au, ptr %i.am, align 8, !tbaa !27
  ret void

bb.i:                                             ; preds = %bb.g
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
end_hunk_0
