Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmCMakePresetsGraph?download=true
inline.NumInlined: 5147
inline.NumDeleted: 2292
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN27cmCMakePresetsGraphInternal21ExpandImmediateMacrosIN19cmCMakePresetsGraph14WorkflowPresetEEEbRT_:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Optional_baseIN19cmCMakePresetsGraph14WorkflowPresetELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !134, !range !27, !noundef !28
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !134
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadIN19cmCMakePresetsGraph14WorkflowPresetELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN19cmCMakePresetsGraph14WorkflowPresetE, i64 16), ptr %0, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !136  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !139  ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN19cmCMakePresetsGraph14WorkflowPreset12WorkflowStepES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.b, %_ZSt8_DestroyIN19cmCMakePresetsGraph14WorkflowPreset12WorkflowStepEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyIN19cmCMakePresetsGraph14WorkflowPreset12WorkflowStepEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.e, %bb.b ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !67   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyIN19cmCMakePresetsGraph14WorkflowPreset12WorkflowStepEEvPT_.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !70
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #26, !inline_history !140
  br label %_ZSt8_DestroyIN19cmCMakePresetsGraph14WorkflowPreset12WorkflowStepEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIN19cmCMakePresetsGraph14WorkflowPreset12WorkflowStepEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.g
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN19cmCMakePresetsGraph14WorkflowPreset12WorkflowStepES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !141

_ZSt8_DestroyIPN19cmCMakePresetsGraph14WorkflowPreset12WorkflowStepES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN19cmCMakePresetsGraph14WorkflowPreset12WorkflowStepEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !136
  br label %_ZSt8_DestroyIPN19cmCMakePresetsGraph14WorkflowPreset12WorkflowStepES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPN19cmCMakePresetsGraph14WorkflowPreset12WorkflowStepES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN19cmCMakePresetsGraph14WorkflowPreset12WorkflowStepES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %bb.b
  %i.o = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPN19cmCMakePresetsGraph14WorkflowPreset12WorkflowStepES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.e, %bb.b ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZNSt22_Optional_payload_baseIN19cmCMakePresetsGraph14WorkflowPresetEE10_M_destroyEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN19cmCMakePresetsGraph14WorkflowPreset12WorkflowStepES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !142
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #26, !inline_history !140
  br label %_ZNSt22_Optional_payload_baseIN19cmCMakePresetsGraph14WorkflowPresetEE10_M_destroyEv.exit.i.i

_ZNSt22_Optional_payload_baseIN19cmCMakePresetsGraph14WorkflowPresetEE10_M_destroyEv.exit.i.i: ; preds = %bb.c, %_ZSt8_DestroyIPN19cmCMakePresetsGraph14WorkflowPreset12WorkflowStepES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i
  tail call void @_ZN19cmCMakePresetsGraph6PresetD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(273) %0) #24, !inline_history !140
  br label %_ZNSt17_Optional_payloadIN19cmCMakePresetsGraph14WorkflowPresetELb0ELb0ELb0EED2Ev.exit

_ZNSt17_Optional_payloadIN19cmCMakePresetsGraph14WorkflowPresetELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.a, %_ZNSt22_Optional_payload_baseIN19cmCMakePresetsGraph14WorkflowPresetEE10_M_destroyEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN27cmCMakePresetsGraphInternal12ExpandMacrosERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISt10unique_ptrINS_13MacroExpanderESt14default_deleteIS9_EESaISC_EEi(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 36 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 22 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 22 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 17 uses
  store i64 0, ptr %i.b, align 8, !tbaa !68
  store i8 0, ptr %i.a, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !66
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 12 uses
  store i64 0, ptr %i.d, align 8, !tbaa !68
  store i8 0, ptr %i.c, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.e, ptr %5, align 8, !tbaa !66
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 0, ptr %i.f, align 8, !tbaa !68
  store i8 0, ptr %i.e, align 8, !tbaa !70
  %i.g = load ptr, ptr %0, align 8, !tbaa !67     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !68   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i ; 5 uses
  %.not134 = icmp samesign eq i64 %i.i, 0
  br i1 %.not134, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit88, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN12_GLOBAL__N_121IsValidMacroNamespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.jt0, %.lr.ph
  %.sroa.0105.0135173 = phi ptr [ %i.ff, %_ZN12_GLOBAL__N_121IsValidMacroNamespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.jt0 ], [ %i.g, %.lr.ph ] ; 3 uses
  %i.l = load i8, ptr %.sroa.0105.0135173, align 1, !tbaa !70 ; 2 uses
  %i.m = icmp eq i8 %i.l, 36
  br i1 %i.m, label %_ZN12_GLOBAL__N_121IsValidMacroNamespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.jt1.preheader, label %bb.c

_ZN12_GLOBAL__N_121IsValidMacroNamespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.jt1.preheader: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0105.0135173, i64 1 ; 2 uses
  %.not.jt1205 = icmp eq ptr %i.n, %i.j
  br i1 %.not.jt1205, label %._crit_edge, label %.lr.ph206

bb.c:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.b, align 8, !tbaa !68   ; 4 uses
  %i.p = add i64 %i.o, 1                          ; 3 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !67     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.a
  br i1 %i.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.c
  %i.s = icmp ult i64 %i.o, 16
  call void @llvm.assume(i1 %i.s)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.t = load i64, ptr %i.a, align 8, !tbaa !70
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.u = phi i64 [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.v = icmp ugt i64 %i.p, %i.u
  br i1 %i.v, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.o, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  %.pre.i.i = load ptr, ptr %3, align 8, !tbaa !67
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %.noexc
  %i.w = phi ptr [ %.pre.i.i, %.noexc ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  store i8 %i.l, ptr %i.x, align 1, !tbaa !70
  store i64 %i.p, ptr %i.b, align 8, !tbaa !68
  %i.y = load ptr, ptr %3, align 8, !tbaa !67
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.p
  store i8 0, ptr %i.z, align 1, !tbaa !70
  br label %_ZN12_GLOBAL__N_121IsValidMacroNamespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.jt0

.loopexit.loopexit:                               ; preds = %bb.u
  %lpad.loopexit184 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.loopexit.split-lp.loopexit:             ; preds = %bb.k
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.loopexit.split-lp.loopexit.split-lp:    ; preds = %bb.d, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.h, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i68
  %lpad.loopexit.split-lp186 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.lr.ph206:                                        ; preds = %_ZN12_GLOBAL__N_121IsValidMacroNamespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.jt1.preheader, %_ZN12_GLOBAL__N_121IsValidMacroNamespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.jt1.backedge
  %i.aa = phi ptr [ %i.cy, %_ZN12_GLOBAL__N_121IsValidMacroNamespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.jt1.backedge ], [ %i.n, %_ZN12_GLOBAL__N_121IsValidMacroNamespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.jt1.preheader ] ; 5 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !70  ; 2 uses
  %i.ac = icmp eq i8 %i.ab, 123
  br i1 %i.ac, label %bb.e, label %bb.j

bb.e:                                             ; preds = %.lr.ph206
  %.val = load ptr, ptr %4, align 8               ; 5 uses
  %.val39 = load i64, ptr %i.d, align 8
  %.fr163.i.i.i.i.i.i = freeze i64 %.val39
  switch i64 %.fr163.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_121IsValidMacroNamespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit [
    i64 0, label %_ZN12_GLOBAL__N_121IsValidMacroNamespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.jt2.preheader
    i64 3, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_121IsValidMacroNamespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPKPKcEEbT_.exit41.i.i.i.i.i.i"
    i64 4, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_121IsValidMacroNamespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPKPKcEEbT_.exit43.i.i.i.i.i.i"
    i64 6, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_121IsValidMacroNamespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPKPKcEEbT_.exit45.i.i.i.i.i.i"
  ]

"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_121IsValidMacroNamespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPKPKcEEbT_.exit41.i.i.i.i.i.i": ; preds = %bb.e
  %i.ad = load i16, ptr %.val, align 1
  %i.ae = xor i16 %i.ad, 28261
  %i.af = getelementptr i8, ptr %.val, i64 2
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i16
  %i.ai = xor i16 %i.ah, 118
  %i.aj = or i16 %i.ae, %i.ai
  %i.ak = icmp ne i16 %i.aj, 0
  %i.al = zext i1 %i.ak to i32
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %_ZN12_GLOBAL__N_121IsValidMacroNamespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.jt2.preheader, label %_ZN12_GLOBAL__N_121IsValidMacroNamespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN12_GLOBAL__N_121IsValidMacroNamespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.jt2.preheader: ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_121IsValidMacroNamespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPKPKcEEbT_.exit43.i.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_121IsValidMacroNamespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPKPKcEEbT_.exit45.i.i.i.i.i.i", %bb.e, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_121IsValidMacroNamespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPKPKcEEbT_.exit41.i.i.i.i.i.i"
  %6 = getelementptr inbounds nuw i8, ptr %i.aa, i64 1 ; 2 uses
  %.not.jt2207 = icmp eq ptr %6, %i.j
  br i1 %.not.jt2207, label %.thread121, label %.lr.ph208

"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_121IsValidMacroNamespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPKPKcEEbT_.exit43.i.i.i.i.i.i": ; preds = %bb.e
  %i.an = load i32, ptr %.val, align 1
  %i.ao = icmp ne i32 %i.an, 1986946416
  %i.ap = zext i1 %i.ao to i32
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %_ZN12_GLOBAL__N_121IsValidMacroNamespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.jt2.preheader, label %_ZN12_GLOBAL__N_121IsValidMacroNamespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_121IsValidMacroNamespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPKPKcEEbT_.exit45.i.i.i.i.i.i": ; preds = %bb.e
  %i.ar = load i32, ptr %.val, align 1
  %i.as = xor i32 %i.ar, 1684956534
  %i.at = getelementptr i8, ptr %.val, i64 4
  %i.au = load i16, ptr %i.at, align 1
  %i.av = zext i16 %i.au to i32
  %i.aw = xor i32 %i.av, 29295
  %i.ax = or i32 %i.as, %i.aw
  %i.ay = icmp ne i32 %i.ax, 0
  %i.az = zext i1 %i.ay to i32
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %_ZN12_GLOBAL__N_121IsValidMacroNamespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.jt2.preheader, label %_ZN12_GLOBAL__N_121IsValidMacroNamespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN12_GLOBAL__N_121IsValidMacroNamespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_121IsValidMacroNamespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPKPKcEEbT_.exit43.i.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_121IsValidMacroNamespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPKPKcEEbT_.exit41.i.i.i.i.i.i", %bb.e, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_121IsValidMacroNamespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPKPKcEEbT_.exit45.i.i.i.i.i.i"
  %i.bb = load i64, ptr %i.b, align 8, !tbaa !68  ; 4 uses
  %i.bc = add i64 %i.bb, 1                        ; 3 uses
  %i.bd = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.a
  br i1 %i.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i45: ; preds = %_ZN12_GLOBAL__N_121IsValidMacroNamespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bf = icmp ult i64 %i.bb, 16
  call void @llvm.assume(i1 %i.bf)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42: ; preds = %_ZN12_GLOBAL__N_121IsValidMacroNamespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bg = load i64, ptr %i.a, align 8, !tbaa !70
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i43: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i45
  %i.bh = phi i64 [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i45 ]
  %i.bi = icmp ugt i64 %i.bc, %i.bh
  br i1 %i.bi, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i43
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.bb, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc46 unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc46:                                         ; preds = %bb.f
  %.pre.i.i44 = load ptr, ptr %3, align 8, !tbaa !67
  br label %bb.g

bb.g:                                             ; preds = %.noexc46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i43
  %i.bj = phi ptr [ %.pre.i.i44, %.noexc46 ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i43 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bb
  store i8 36, ptr %i.bk, align 1, !tbaa !70
  store i64 %i.bc, ptr %i.b, align 8, !tbaa !68
  %i.bl = load ptr, ptr %3, align 8, !tbaa !67
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bc
  store i8 0, ptr %i.bm, align 1, !tbaa !70
  %i.bn = load i64, ptr %i.d, align 8, !tbaa !68  ; 2 uses
  %i.bo = load i64, ptr %i.b, align 8, !tbaa !68
  %i.bp = sub i64 4611686018427387903, %i.bo
  %i.bq = icmp ult i64 %i.bp, %i.bn
  br i1 %i.bq, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

.invoke:                                          ; preds = %bb.o, %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #28
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.g
  %i.br = load ptr, ptr %4, align 8, !tbaa !67
  %i.bs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.br, i64 noundef %i.bn)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.bt = load i64, ptr %i.b, align 8, !tbaa !68  ; 4 uses
  %i.bu = add i64 %i.bt, 1                        ; 3 uses
  %i.bv = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.a
  br i1 %i.bw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.bx = icmp ult i64 %i.bt, 16
  call void @llvm.assume(i1 %i.bx)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.by = load i64, ptr %i.a, align 8, !tbaa !70
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i51: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i53
  %i.bz = phi i64 [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i53 ]
  %i.ca = icmp ugt i64 %i.bu, %i.bz
  br i1 %i.ca, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i51
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.bt, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc54 unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc54:                                         ; preds = %bb.h
  %.pre.i.i52 = load ptr, ptr %3, align 8, !tbaa !67
  br label %bb.i

bb.i:                                             ; preds = %.noexc54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i51
  %i.cb = phi ptr [ %.pre.i.i52, %.noexc54 ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i51 ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bt
  store i8 123, ptr %i.cc, align 1, !tbaa !70
  store i64 %i.bu, ptr %i.b, align 8, !tbaa !68
  %i.cd = load ptr, ptr %3, align 8, !tbaa !67
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bu
  store i8 0, ptr %i.ce, align 1, !tbaa !70
  store i64 0, ptr %i.d, align 8, !tbaa !68
  %i.cf = load ptr, ptr %4, align 8, !tbaa !67
  store i8 0, ptr %i.cf, align 1, !tbaa !70
  br label %_ZN12_GLOBAL__N_121IsValidMacroNamespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.jt0

bb.j:                                             ; preds = %.lr.ph206
  %i.cg = load i64, ptr %i.d, align 8, !tbaa !68  ; 4 uses
  %i.ch = add i64 %i.cg, 1                        ; 3 uses
  %i.ci = load ptr, ptr %4, align 8, !tbaa !67    ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.c
  br i1 %i.cj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i59: ; preds = %bb.j
  %i.ck = icmp ult i64 %i.cg, 16
  call void @llvm.assume(i1 %i.ck)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56: ; preds = %bb.j
  %i.cl = load i64, ptr %i.c, align 8, !tbaa !70
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i57: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i59
  %i.cm = phi i64 [ %i.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i59 ]
  %i.cn = icmp ugt i64 %i.ch, %i.cm
  br i1 %i.cn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i57
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.cg, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc60 unwind label %.loopexit.loopexit.split-lp.loopexit

.noexc60:                                         ; preds = %bb.k
  %.pre.i.i58 = load ptr, ptr %4, align 8, !tbaa !67
  br label %bb.l

bb.l:                                             ; preds = %.noexc60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i57
  %i.co = phi ptr [ %.pre.i.i58, %.noexc60 ], [ %i.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i57 ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cg
  store i8 %i.ab, ptr %i.cp, align 1, !tbaa !70
  store i64 %i.ch, ptr %i.d, align 8, !tbaa !68
  %i.cq = load ptr, ptr %4, align 8, !tbaa !67
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ch
  store i8 0, ptr %i.cr, align 1, !tbaa !70
  %.val40 = load ptr, ptr %4, align 8             ; 3 uses
  %.val41 = load i64, ptr %i.d, align 8           ; 7 uses
  %.old.not.i.i.i.i.i.not.i = icmp eq i64 %.val41, 0
  br i1 %.old.not.i.i.i.i.i.not.i, label %_ZN12_GLOBAL__N_121IsValidMacroNamespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.jt1.backedge, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i48.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i48.i.i.i.i.i.i: ; preds = %bb.l
  %.sroa.speculated.i.i.i.i.i47.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val41, i64 3)
  %bcmp.i.i.i49.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly @.str.20, ptr readonly %.val40, i64 %.sroa.speculated.i.i.i.i.i47.i.i.i.i.i.i)
  %i.cs = icmp eq i32 %bcmp.i.i.i49.i.i.i.i.i.i, 0
  %i.ct = icmp ult i64 %.val41, 4
  %or.cond91.i.i.i.i.i.i = and i1 %i.ct, %i.cs
  br i1 %or.cond91.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_121IsValidMacroNamespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.jt1.backedge, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i54.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i54.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i48.i.i.i.i.i.i
  %.sroa.speculated.i.i.i.i.i53.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val41, i64 4)
  %bcmp.i.i.i55.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly @.str.21, ptr readonly %.val40, i64 %.sroa.speculated.i.i.i.i.i53.i.i.i.i.i.i)
  %i.cu = icmp eq i32 %bcmp.i.i.i55.i.i.i.i.i.i, 0
  %i.cv = icmp ult i64 %.val41, 5
  %or.cond93.i.i.i.i.i.i = and i1 %i.cv, %i.cu
  br i1 %or.cond93.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_121IsValidMacroNamespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.jt1.backedge, label %_ZN12_GLOBAL__N_127PrefixesValidMacroNamespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN12_GLOBAL__N_127PrefixesValidMacroNamespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i54.i.i.i.i.i.i
  %.sroa.speculated.i.i.i.i.i59.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val41, i64 6)
  %bcmp.i.i.i61.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly @.str, ptr readonly %.val40, i64 %.sroa.speculated.i.i.i.i.i59.i.i.i.i.i.i)
  %i.cw = icmp eq i32 %bcmp.i.i.i61.i.i.i.i.i.i, 0
  %i.cx = icmp ult i64 %.val41, 7
  %or.cond95.i.i.i.i.i.i = and i1 %i.cx, %i.cw
  br i1 %or.cond95.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_121IsValidMacroNamespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.jt1.backedge, label %bb.m

_ZN12_GLOBAL__N_121IsValidMacroNamespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.jt1.backedge: ; preds = %_ZN12_GLOBAL__N_127PrefixesValidMacroNamespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i54.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i48.i.i.i.i.i.i, %bb.l
  %i.cy = getelementptr inbounds nuw i8, ptr %i.aa, i64 1 ; 2 uses
  %.not.jt1 = icmp eq ptr %i.cy, %i.j
  br i1 %.not.jt1, label %._crit_edge, label %.lr.ph206

bb.m:                                             ; preds = %_ZN12_GLOBAL__N_127PrefixesValidMacroNamespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.cz = load i64, ptr %i.b, align 8, !tbaa !68  ; 4 uses
  %i.da = add i64 %i.cz, 1                        ; 3 uses
  %i.db = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.a
  br i1 %i.dc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i65: ; preds = %bb.m
  %i.dd = icmp ult i64 %i.cz, 16
  call void @llvm.assume(i1 %i.dd)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62: ; preds = %bb.m
  %i.de = load i64, ptr %i.a, align 8, !tbaa !70
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i63: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i65
  %i.df = phi i64 [ %i.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i65 ]
  %i.dg = icmp ugt i64 %i.da, %i.df
  br i1 %i.dg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i63
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.cz, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc66 unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc66:                                         ; preds = %bb.n
  %.pre.i.i64 = load ptr, ptr %3, align 8, !tbaa !67
  br label %bb.o

bb.o:                                             ; preds = %.noexc66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i63
  %i.dh = phi ptr [ %.pre.i.i64, %.noexc66 ], [ %i.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i63 ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.cz
  store i8 36, ptr %i.di, align 1, !tbaa !70
end_hunk_0
