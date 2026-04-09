inline.NumInlined: 405
inline.NumDeleted: 234
begin_hunk_0_@"_ZZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvENK3$_0clEvENUlvE0_8__invokeEv":bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !100
  invoke void %i.z(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZNKSt8functionIFvSt3anyEEclES0_.exit.i.i unwind label %.loopexit.i.i, !inline_history !99

_ZNKSt8functionIFvSt3anyEEclES0_.exit.i.i:        ; preds = %bb.k
  %i.aa = load ptr, ptr %2, align 8, !tbaa !82    ; 2 uses
end_hunk_0
begin_hunk_1_@"_ZZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvENK3$_0clEvENUlvE0_8__invokeEv":bb.a

_ZNSt3anyD2Ev.exit.i.i:                           ; preds = %bb.l, %_ZNKSt8functionIFvSt3anyEEclES0_.exit.i.i, %bb.f
  %i.ag = icmp eq ptr %i.o, %i.h
  br i1 %i.ag, label %"_ZZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvENK3$_0clEvENKUlvE0_clEv.exit", label %bb.f, !llvm.loop !102

_ZNSt3anyD2Ev.exit16.i.i:                         ; preds = %bb.o, %bb.n
  call fastcc void @_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %1) #18, !inline_history !99
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EED2Ev:bb.a
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #18, !inline_history !103
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !25
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #18, !inline_history !103
  br label %_ZSt8_DestroyIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerEEvPT_.exit.i.i

bb.f:                                             ; preds = %bb.d
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EED2Ev:bb.a
_ZSt8_DestroyIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerEEvPT_.exit.i.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.e, %_ZNSt3anyD2Ev.exit.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerES4_EvT_S6_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !104

_ZSt8_DestroyIPN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerES4_EvT_S6_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerEEvPT_.exit.i.i
  %.val.pr = load ptr, ptr %0, align 8, !tbaa !76
end_hunk_3
begin_hunk_4_@"_ZZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvENK3$_0clEvENUlvE1_8__invokeEv":bb.a
  br i1 %i.b, label %bb.b, label %_ZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEv.exit.i, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvE5state) #18, !inline_history !105
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @"_ZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvENK3$_0clEv"()
          to label %bb.d unwind label %bb.e, !inline_history !105

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt10unique_ptrIN5arrow8internal12_GLOBAL__N_111AtForkStateESt14default_deleteIS3_EED2Ev, ptr nonnull @_ZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvE5state, ptr nonnull @__dso_handle) #18, !inline_history !105 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvE5state) #18, !inline_history !105
  br label %_ZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEv.exit.i

common.resume.i:                                  ; preds = %_ZNSt3anyD2Ev.exit14.i.i, %bb.e
end_hunk_4
begin_hunk_5_@"_ZZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvENK3$_0clEvENUlvE1_8__invokeEv":bb.a
bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvE5state) #18, !inline_history !105
  br label %common.resume.i

_ZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEv.exit.i: ; preds = %bb.d, %bb.b, %bb.a
end_hunk_5
begin_hunk_6_@"_ZZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvENK3$_0clEvENUlvE1_8__invokeEv":bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #18
  store ptr %2, ptr %0, align 8, !tbaa !24
  invoke void %i.u(i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull %0)
          to label %_ZNSt3anyC2EOS_.exit.i.i unwind label %bb.i, !inline_history !106

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #22, !inline_history !106
  unreachable

_ZNSt3anyC2EOS_.exit.i.i:                         ; preds = %bb.h
end_hunk_6
begin_hunk_7_@"_ZZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvENK3$_0clEvENUlvE1_8__invokeEv":bb.a

bb.j:                                             ; preds = %_ZNSt3anyC2EOS_.exit.i.i
  invoke void @_ZSt25__throw_bad_function_callv() #19
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.i, !inline_history !106

.noexc.i.i:                                       ; preds = %bb.j
  unreachable
end_hunk_7
begin_hunk_8_@"_ZZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvENK3$_0clEvENUlvE1_8__invokeEv":bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !100
  invoke void %i.z(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZNKSt8functionIFvSt3anyEEclES0_.exit.i.i unwind label %.loopexit.i.i, !inline_history !106

_ZNKSt8functionIFvSt3anyEEclES0_.exit.i.i:        ; preds = %bb.k
  %i.aa = load ptr, ptr %2, align 8, !tbaa !82    ; 2 uses
end_hunk_8
begin_hunk_9_@"_ZZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvENK3$_0clEvENUlvE1_8__invokeEv":bb.a

bb.l:                                             ; preds = %_ZNKSt8functionIFvSt3anyEEclES0_.exit.i.i
  invoke void %i.aa(i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef null)
          to label %_ZNSt3anyD2Ev.exit.i.i unwind label %bb.m, !inline_history !106

bb.m:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #22, !inline_history !106
  unreachable

.loopexit.i.i:                                    ; preds = %bb.k
end_hunk_9
begin_hunk_10_@"_ZZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvENK3$_0clEvENUlvE1_8__invokeEv":bb.a

bb.o:                                             ; preds = %bb.n
  invoke void %i.ad(i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef null)
          to label %_ZNSt3anyD2Ev.exit14.i.i unwind label %bb.p, !inline_history !106

bb.p:                                             ; preds = %bb.o
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #22, !inline_history !106
  unreachable

_ZNSt3anyD2Ev.exit14.i.i:                         ; preds = %bb.o, %bb.n
  call fastcc void @_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %1) #18, !inline_history !106
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %common.resume.i

_ZNSt3anyD2Ev.exit.i.i:                           ; preds = %bb.l, %_ZNKSt8functionIFvSt3anyEEclES0_.exit.i.i, %bb.f
  %i.ag = icmp eq ptr %i.o, %i.h
  br i1 %i.ag, label %"_ZZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvENK3$_0clEvENKUlvE1_clEv.exit", label %bb.f, !llvm.loop !107

"_ZZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvENK3$_0clEvENKUlvE1_clEv.exit": ; preds = %_ZNSt3anyD2Ev.exit.i.i, %_ZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEv.exit.i
  call fastcc void @_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %1) #18, !inline_history !106
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
end_hunk_10
begin_hunk_11_@_ZN5arrow6Status17FromDetailAndArgsIJRA36_KcEEES0_NS_10StatusCodeESt10shared_ptrINS_12StatusDetailEEDpOT_:bb.a
  %4 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::shared_ptr.17", align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18, !noalias !108
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4), !noalias !108
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111, !noalias !108, !nonnull !50, !align !121
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(36) %3) #18, !noalias !108
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(36) %3, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA36_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !108 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA36_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %4)
end_hunk_11
begin_hunk_12_@_ZN5arrow6Status17FromDetailAndArgsIJRA36_KcEEES0_NS_10StatusCodeESt10shared_ptrINS_12StatusDetailEEDpOT_:bb.a
bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !108
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA36_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA36_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !108
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load <2 x ptr>, ptr %2, align 8, !tbaa !15
  store ptr null, ptr %i.g, align 8, !tbaa !57
  store <2 x ptr> %i.h, ptr %6, align 16, !tbaa !15
  store ptr null, ptr %2, align 8, !tbaa !122
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_12StatusDetailEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull %5, ptr noundef nonnull %6)
          to label %bb.e unwind label %bb.l

end_hunk_12
begin_hunk_13_@_ZN5arrow6Status17FromDetailAndArgsIJRA36_KcEEES0_NS_10StatusCodeESt10shared_ptrINS_12StatusDetailEEDpOT_:bb.a
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #18, !inline_history !123
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !25
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #18, !inline_history !123
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
end_hunk_13
begin_hunk_14_@_ZN5arrow6Status17FromDetailAndArgsIJRA36_KcEEES0_NS_10StatusCodeESt10shared_ptrINS_12StatusDetailEEDpOT_:bb.a
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  %i.z = load ptr, ptr %5, align 8, !tbaa !124    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
end_hunk_14
begin_hunk_15_@_ZN5arrow6Status17FromDetailAndArgsIJRA36_KcEEES0_NS_10StatusCodeESt10shared_ptrINS_12StatusDetailEEDpOT_:bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #18
  %i.af = load ptr, ptr %5, align 8, !tbaa !124   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
end_hunk_15
begin_hunk_16_@_ZN5arrow6Status11DeleteStateEv:bb.a
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18, !inline_history !125
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #18, !inline_history !125
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
end_hunk_16
begin_hunk_17_@_ZN5arrow6Status11DeleteStateEv:bb.a

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !124  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN5arrow6Status5StateD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
end_hunk_17
begin_hunk_18_@_ZNSt6vectorISt8weak_ptrIN5arrow8internal13AtForkHandlerEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_:bb.a
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !25
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #18, !inline_history !126
  br label %_ZNSt8weak_ptrIN5arrow8internal13AtForkHandlerEEaSEOS3_.exit.i.i.i.i.i.i

_ZNSt8weak_ptrIN5arrow8internal13AtForkHandlerEEaSEOS3_.exit.i.i.i.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
end_hunk_18
begin_hunk_19_@_ZNSt6vectorISt8weak_ptrIN5arrow8internal13AtForkHandlerEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 16
  %i.ae = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.af = icmp sgt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.af, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.loopexit.i, !llvm.loop !127

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.loopexit.i: ; preds = %_ZNSt8weak_ptrIN5arrow8internal13AtForkHandlerEEaSEOS3_.exit.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %i.j, align 8, !tbaa !16 ; 2 uses
end_hunk_19
begin_hunk_20_@_ZNSt6vectorISt8weak_ptrIN5arrow8internal13AtForkHandlerEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_:bb.a
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !25
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #18, !inline_history !128
  br label %_ZSt8_DestroyISt8weak_ptrIN5arrow8internal13AtForkHandlerEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt8weak_ptrIN5arrow8internal13AtForkHandlerEEEvPT_.exit.i.i.i.i: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
end_hunk_20
begin_hunk_21_@_ZNSt6vectorISt8weak_ptrIN5arrow8internal13AtForkHandlerEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_:bb.a
.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt8weak_ptrIN5arrow8internal13AtForkHandlerEESaIS4_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt8weak_ptrIN5arrow8internal13AtForkHandlerEESaIS4_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt8weak_ptrIN5arrow8internal13AtForkHandlerEESaIS4_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.s = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !15, !alias.scope !132, !noalias !129
  store <2 x ptr> %i.s, ptr %.012.i.i.i, align 8, !tbaa !15, !alias.scope !129, !noalias !132
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i, i8 0, i64 16, i1 false), !alias.scope !132, !noalias !129
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt8weak_ptrIN5arrow8internal13AtForkHandlerEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !134

_ZNSt6vectorISt8weak_ptrIN5arrow8internal13AtForkHandlerEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt8weak_ptrIN5arrow8internal13AtForkHandlerEESaIS4_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt8weak_ptrIN5arrow8internal13AtForkHandlerEESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.u, %.lr.ph.i.i.i ]
end_hunk_21
begin_hunk_22_@_ZNSt6vectorISt8weak_ptrIN5arrow8internal13AtForkHandlerEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_:bb.a
.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt8weak_ptrIN5arrow8internal13AtForkHandlerEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.y, %.lr.ph.i.i.i17 ], [ %i.v, %_ZNSt6vectorISt8weak_ptrIN5arrow8internal13AtForkHandlerEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.x, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt8weak_ptrIN5arrow8internal13AtForkHandlerEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %i.w = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !15, !alias.scope !138, !noalias !135
  store <2 x ptr> %i.w, ptr %.012.i.i.i18, align 8, !tbaa !15, !alias.scope !135, !noalias !138
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i19, i8 0, i64 16, i1 false), !alias.scope !138, !noalias !135
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.x, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt8weak_ptrIN5arrow8internal13AtForkHandlerEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !134

_ZNSt6vectorISt8weak_ptrIN5arrow8internal13AtForkHandlerEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt8weak_ptrIN5arrow8internal13AtForkHandlerEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.v, %_ZNSt6vectorISt8weak_ptrIN5arrow8internal13AtForkHandlerEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.y, %.lr.ph.i.i.i17 ]
end_hunk_22
begin_hunk_23_@llvm.umax.i64
!99 = distinct !{null}
!100 = !{!101, !11, i64 24}
!101 = !{!"_ZTSSt8functionIFvSt3anyEE", !89, i64 0, !11, i64 24}
!102 = distinct !{!102, !19}
!103 = distinct !{null, null, null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow8internal13AtForkHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!104 = distinct !{!104, !19}
!105 = distinct !{null, null}
!106 = distinct !{null}
!107 = distinct !{!107, !19}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZN5arrow8internal12JoinToStringIJRA36_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!110 = distinct !{!110, !"_ZN5arrow8internal12JoinToStringIJRA36_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!111 = !{!112, !120, i64 8}
!112 = !{!"_ZTSN5arrow8internal19StringStreamWrapperE", !113, i64 0, !120, i64 8}
!113 = !{!"_ZTSSt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !114, i64 0}
!114 = !{!"_ZTSSt15__uniq_ptr_dataINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_ELb1ELb1EE", !115, i64 0}
!115 = !{!"_ZTSSt15__uniq_ptr_implINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !116, i64 0}
!116 = !{!"_ZTSSt5tupleIJPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !117, i64 0}
!117 = !{!"_ZTSSt11_Tuple_implILm0EJPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !118, i64 0}
!118 = !{!"_ZTSSt10_Head_baseILm0EPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEELb0EE", !119, i64 0}
!119 = !{!"p1 _ZTSNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!120 = !{!"p1 _ZTSSo", !11, i64 0}
!121 = !{i64 8}
!122 = !{!46, !47, i64 0}
!123 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!124 = !{!41, !43, i64 0}
!125 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!126 = distinct !{null, null, null, null, null, null, null, null, null, null, null}
!127 = distinct !{!127, !19}
!128 = distinct !{null, null, null, null, null, null, null, null, null}
!129 = !{!130}
!130 = distinct !{!130, !131, !"_ZSt19__relocate_object_aISt8weak_ptrIN5arrow8internal13AtForkHandlerEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!131 = distinct !{!131, !"_ZSt19__relocate_object_aISt8weak_ptrIN5arrow8internal13AtForkHandlerEES4_SaIS4_EEvPT_PT0_RT1_"}
!132 = !{!133}
!133 = distinct !{!133, !131, !"_ZSt19__relocate_object_aISt8weak_ptrIN5arrow8internal13AtForkHandlerEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!134 = distinct !{!134, !19}
!135 = !{!136}
!136 = distinct !{!136, !137, !"_ZSt19__relocate_object_aISt8weak_ptrIN5arrow8internal13AtForkHandlerEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!137 = distinct !{!137, !"_ZSt19__relocate_object_aISt8weak_ptrIN5arrow8internal13AtForkHandlerEES4_SaIS4_EEvPT_PT0_RT1_"}
!138 = !{!139}
!139 = distinct !{!139, !137, !"_ZSt19__relocate_object_aISt8weak_ptrIN5arrow8internal13AtForkHandlerEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
end_hunk_23
