Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/party?download=true
inline.NumInlined: 2890
inline.NumDeleted: 2013
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@"_ZN9grpc_core5Party15ParticipantImplIZNS0_6ToJsonEN4absl12lts_2025051212AnyInvocableIFvSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12experimental4JsonESt4lessISB_ESaISt4pairIKSB_SD_EEEEEEE3$_0ZNS0_6ToJsonESM_E3$_1E22PollParticipantPromiseEv":bb.a
  %i.ag = load <2 x ptr>, ptr %i.g, align 16, !tbaa !59
  store <2 x ptr> %i.ag, ptr %i.e, align 16, !tbaa !59
  store ptr @_ZN4absl12lts_2025051222internal_any_invocable12EmptyManagerENS1_14FunctionToCallEPNS1_15TypeErasedStateES4_, ptr %i.g, align 16, !tbaa !58
  store ptr null, ptr %i.i, align 8, !tbaa !60
  %i.ah = load ptr, ptr %i.k, align 16, !tbaa !62 ; 2 uses
  store ptr %i.ah, ptr %i.l, align 16, !tbaa !62
  store i8 1, ptr %i.a, align 16, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %"_ZN9grpc_core14promise_detail11PromiseLikeIZZNS_5Party6ToJsonEN4absl12lts_2025051212AnyInvocableIFvSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12experimental4JsonESt4lessISC_ESaISt4pairIKSC_SE_EEEEEEEN3$_0clEvEUlvE_vED2Ev.exit"
  %i.ai = phi ptr [ %.pre, %._crit_edge ], [ %i.ah, %"_ZN9grpc_core14promise_detail11PromiseLikeIZZNS_5Party6ToJsonEN4absl12lts_2025051212AnyInvocableIFvSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12experimental4JsonESt4lessISC_ESaISt4pairIKSC_SE_EEEEEEEN3$_0clEvEUlvE_vED2Ev.exit" ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39, !noalias !385
  call void @_ZN9grpc_core5Party24ChannelzPropertiesLockedEv(ptr dead_on_unwind nonnull writable sret(%"class.grpc_core::channelz::PropertyList") align 8 %3, ptr noundef nonnull align 8 dereferenceable(168) %i.ai), !noalias !385
  invoke void @_ZN9grpc_core8channelz12PropertyList14TakeJsonObjectB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::map") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.j unwind label %bb.o, !noalias !385

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !60, !noalias !385
  invoke void %i.al(ptr noundef nonnull align 16 dereferenceable(40) %i.aj, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS9_ESaISt4pairIKS9_SC_EEEEEclESJ_.exit.i unwind label %bb.p, !noalias !385, !inline_history !384

_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS9_ESaISt4pairIKS9_SC_EEEEEclESJ_.exit.i: ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !202, !noalias !385
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12experimental4JsonEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.an)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i unwind label %bb.k, !noalias !385, !inline_history !387

bb.k:                                             ; preds = %_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS9_ESaISt4pairIKS9_SC_EEEEEclESJ_.exit.i
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #37, !noalias !385, !inline_history !387
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i: ; preds = %_ZN4absl12lts_2025051222internal_any_invocable4ImplIFvSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS9_ESaISt4pairIKS9_SC_EEEEEclESJ_.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !99, !noalias !385 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !100, !noalias !385 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.ar, %i.at
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.be, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i ], [ %i.ar, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i ] ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 64
  %i.av = load i8, ptr %i.au, align 8, !tbaa !102, !noalias !385
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.av, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i.i, label %bb.l, !prof !42

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #39, !noalias !385
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(33) %i.aw)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.m, !noalias !385

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #39, !noalias !385
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #37, !noalias !385
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.az = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !71, !noalias !385 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i.i
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !73, !noalias !385
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #38, !noalias !385
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i.i12 = icmp eq ptr %i.be, %i.at
  br i1 %.not.i.i.i.i.i12, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !99, !noalias !385
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i
  %i.bf = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.ar, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i1.i.i.i, label %_ZN9grpc_core4PollIN4absl12lts_202505126StatusEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !105, !noalias !385
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bf to i64
  %i.bk = sub i64 %i.bi, %i.bj
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bk) #38, !noalias !385
  br label %_ZN9grpc_core4PollIN4absl12lts_202505126StatusEED2Ev.exit

bb.o:                                             ; preds = %bb.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.j
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12experimental4JsonESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #39, !noalias !385
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn.i = phi { ptr, i32 } [ %i.bm, %bb.p ], [ %i.bl, %bb.o ]
  call void @_ZN9grpc_core8channelz12PropertyListD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #39, !noalias !385
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39, !noalias !385
  resume { ptr, i32 } %.pn.i

_ZN9grpc_core4PollIN4absl12lts_202505126StatusEED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39, !noalias !385
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call fastcc void @"_ZN9grpc_core5Party15ParticipantImplIZNS0_6ToJsonEN4absl12lts_2025051212AnyInvocableIFvSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12experimental4JsonESt4lessISB_ESaISt4pairIKSB_SD_EEEEEEE3$_0ZNS0_6ToJsonESM_E3$_1ED2Ev"(ptr noundef nonnull align 16 dead_on_return(65) dereferenceable(80) %0) #39
  call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #38
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN9grpc_core5Party15ParticipantImplIZNS0_6ToJsonEN4absl12lts_2025051212AnyInvocableIFvSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12experimental4JsonESt4lessISB_ESaISt4pairIKSB_SD_EEEEEEE3$_0ZNS0_6ToJsonESM_E3$_1E7DestroyEv"(ptr noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call fastcc void @"_ZN9grpc_core5Party15ParticipantImplIZNS0_6ToJsonEN4absl12lts_2025051212AnyInvocableIFvSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12experimental4JsonESt4lessISB_ESaISt4pairIKSB_SD_EEEEEEE3$_0ZNS0_6ToJsonESM_E3$_1ED2Ev"(ptr noundef nonnull align 16 dead_on_return(65) dereferenceable(80) %0) #39
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #38
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN9grpc_core5Party15ParticipantImplIZNS0_6ToJsonEN4absl12lts_2025051212AnyInvocableIFvSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12experimental4JsonESt4lessISB_ESaISt4pairIKSB_SD_EEEEEEE3$_0ZNS0_6ToJsonESM_E3$_1E18ChannelzPropertiesEv"(ptr dead_on_unwind noalias writable sret(%"class.grpc_core::channelz::PropertyList") align 8 %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(80) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.117, align 1            ; 3 uses
  %3 = alloca %class.anon.117, align 1            ; 3 uses
  %4 = alloca %class.anon.117, align 1            ; 3 uses
  %5 = alloca %class.anon.117, align 1            ; 3 uses
  %6 = alloca %"class.std::variant", align 8      ; 6 uses
  %7 = alloca %"class.std::optional.62", align 8  ; 9 uses
  %8 = alloca %"class.grpc_core::channelz::PropertyList", align 8 ; 8 uses
  %9 = alloca %"class.grpc_core::channelz::PropertyList", align 8 ; 9 uses
  %10 = alloca %"class.grpc_core::channelz::PropertyList", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core8channelz12PropertyListE, i64 16), ptr %9, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN9grpc_core8channelz12PropertyList3SetISt17basic_string_viewIcSt11char_traitsIcEEEERS1_S6_T_(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 11, ptr nonnull @.str.44, i64 73, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.48, i64 45))
          to label %bb.b unwind label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN9grpc_core8channelz12PropertyList3SetISt17basic_string_viewIcSt11char_traitsIcEEEERS1_S6_T_(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 7, ptr nonnull @.str.45, i64 73, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.51, i64 45))
          to label %bb.c unwind label %bb.t

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !394)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39, !noalias !394
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core8channelz12PropertyListE, i64 16), ptr %8, align 8, !tbaa !28, !noalias !394
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false), !noalias !394
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load i8, ptr %i.e, align 16, !tbaa !65, !range !110, !noalias !394, !noundef !111
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !394
  call void @llvm.experimental.noalias.scope.decl(metadata !395)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39, !noalias !396
  %i.h = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #36
          to label %.noexc.i unwind label %bb.k, !noalias !394 ; 8 uses

.noexc.i:                                         ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 1, ptr %i.i, align 8, !tbaa !87, !noalias !397
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 1, ptr %i.j, align 4, !tbaa !88, !noalias !397
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.h, align 8, !tbaa !28, !noalias !397
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core8channelz20property_list_detail20PromisePropertyValueE, i64 16), ptr %i.k, align 8, !tbaa !28, !noalias !397
  %i.l = invoke ptr @upb_Arena_Init(ptr noundef null, i64 noundef 0, ptr noundef nonnull @upb_alloc_global)
          to label %.noexc.i.i.i.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i.i, !noalias !397 ; 5 uses

.noexc.i.i.i.i.i.i.i:                             ; preds = %.noexc.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.l, ptr %i.m, align 8, !tbaa !206, !noalias !397
  %i.n = load i16, ptr getelementptr inbounds nuw (i8, ptr @grpc__channelz__v2__Promise_msg_init, i64 8), align 8, !tbaa !209, !noalias !397
  %i.o = zext i16 %i.n to i64                     ; 5 uses
  %i.p = and i64 %i.o, 7
  %i.q = icmp eq i64 %i.p, 0
  call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !211, !noalias !397
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !212, !noalias !397 ; 4 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp ult i64 %i.w, %i.o
  br i1 %i.x, label %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, !prof !42

upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.o
  store ptr %i.y, ptr %i.l, align 8, !tbaa !212, !noalias !397
  br label %bb.e

upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i:    ; preds = %.noexc.i.i.i.i.i.i.i
  %i.z = invoke ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.l, i64 noundef %i.o)
          to label %.noexc9.i.i.i.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i.i, !noalias !397 ; 2 uses

.noexc9.i.i.i.i.i.i.i:                            ; preds = %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ]
  br label %bb.e

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i.i: ; preds = %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 40) #38, !noalias !397
  br label %.body.i

bb.e:                                             ; preds = %.noexc9.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i
  %.sink.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.t, %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.z, %.noexc9.i.i.i.i.i.i.i ] ; 5 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.sink.i.i.i.i.i.i.i.i.i.i, i8 0, i64 %i.o, i1 false), !noalias !397
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %.sink.i.i.i.i.i.i.i.i.i.i, ptr %i.ab, align 8, !tbaa !213, !noalias !397
  %i.ac = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.i.i.i.i.i.i.i, i64 8
  store i32 2, ptr %i.ac, align 4, !tbaa !89, !noalias !397
  %i.ad = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.i.i.i.i.i.i.i, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.53, i64 45), ptr %i.ad, align 4, !noalias !397
  %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.i.i.i.i.i.i.i, i64 24
  store i64 74, ptr %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !397
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 10, ptr %i.af, align 8, !tbaa !102, !noalias !396
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  store ptr %i.k, ptr %7, align 8, !tbaa !135, !alias.scope !395, !noalias !394
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.ae, align 8, !tbaa !76, !noalias !396
  store ptr %i.h, ptr %i.ah, align 8, !tbaa !76, !alias.scope !395, !noalias !394
  store ptr null, ptr %6, align 8, !tbaa !135, !noalias !396
  store i8 10, ptr %i.ag, align 8, !tbaa !102, !alias.scope !395, !noalias !394
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  store i8 1, ptr %i.ai, align 8, !tbaa !109, !alias.scope !395, !noalias !394
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39, !noalias !396
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(33) %6)
          to label %"_ZN9grpc_core8channelz20property_list_detail7WrapperINS_15PromisePropertyINS_14promise_detail11PromiseLikeIZZNS_5Party6ToJsonEN4absl12lts_2025051212AnyInvocableIFvSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12experimental4JsonESt4lessISG_ESaISt4pairIKSG_SI_EEEEEEEN3$_0clEvEUlvE_vEEEEvE4WrapB5cxx11ESV_.exit.i.i" unwind label %bb.f, !noalias !396

bb.f:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #37, !noalias !396
  unreachable

"_ZN9grpc_core8channelz20property_list_detail7WrapperINS_15PromisePropertyINS_14promise_detail11PromiseLikeIZZNS_5Party6ToJsonEN4absl12lts_2025051212AnyInvocableIFvSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12experimental4JsonESt4lessISG_ESaISt4pairIKSG_SI_EEEEEEEN3$_0clEvEUlvE_vEEEEvE4WrapB5cxx11ESV_.exit.i.i": ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39, !noalias !396
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39, !noalias !396
  invoke void @_ZN9grpc_core8channelz12PropertyList11SetInternalESt17basic_string_viewIcSt11char_traitsIcEESt8optionalISt7variantIJS5_NSt7__cxx1112basic_stringIcS4_SaIcEEElmdbNS_8DurationENS_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINS0_18OtherPropertyValueEEEEE(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 7, ptr nonnull @.str.52, ptr noundef nonnull align 8 %7)
          to label %bb.g unwind label %bb.j, !noalias !394

bb.g:                                             ; preds = %"_ZN9grpc_core8channelz20property_list_detail7WrapperINS_15PromisePropertyINS_14promise_detail11PromiseLikeIZZNS_5Party6ToJsonEN4absl12lts_2025051212AnyInvocableIFvSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12experimental4JsonESt4lessISG_ESaISt4pairIKSG_SI_EEEEEEEN3$_0clEvEUlvE_vEEEEvE4WrapB5cxx11ESV_.exit.i.i"
  %i.al = load i8, ptr %i.ai, align 8, !tbaa !109, !range !110, !noalias !394, !noundef !111
  %i.am = trunc nuw i8 %i.al to i1
  store i8 0, ptr %i.ai, align 8, !tbaa !109, !noalias !394
  %i.an = load i8, ptr %i.ag, align 8, !noalias !394
  %.not.i.i.i.i.i.i.i.i = icmp ne i8 %i.an, -1
  %or.cond.not.i.i.i.i.i = select i1 %i.am, i1 %.not.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i.i, label %bb.h, label %"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyINS_14promise_detail11PromiseLikeIZZNS_5Party6ToJsonEN4absl12lts_2025051212AnyInvocableIFvSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12experimental4JsonESt4lessISG_ESaISt4pairIKSG_SI_EEEEEEEN3$_0clEvEUlvE_vEEEEEERS1_St17basic_string_viewIcSE_ET_.exit.i", !prof !112

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39, !noalias !394
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %.noexc.i.i.i.i.i6.i.i unwind label %bb.i, !noalias !394

.noexc.i.i.i.i.i6.i.i:                            ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39, !noalias !394
  br label %"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyINS_14promise_detail11PromiseLikeIZZNS_5Party6ToJsonEN4absl12lts_2025051212AnyInvocableIFvSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12experimental4JsonESt4lessISG_ESaISt4pairIKSG_SI_EEEEEEEN3$_0clEvEUlvE_vEEEEEERS1_St17basic_string_viewIcSE_ET_.exit.i"

bb.i:                                             ; preds = %bb.h
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #37, !noalias !394
  unreachable

bb.j:                                             ; preds = %"_ZN9grpc_core8channelz20property_list_detail7WrapperINS_15PromisePropertyINS_14promise_detail11PromiseLikeIZZNS_5Party6ToJsonEN4absl12lts_2025051212AnyInvocableIFvSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12experimental4JsonESt4lessISG_ESaISt4pairIKSG_SI_EEEEEEEN3$_0clEvEUlvE_vEEEEvE4WrapB5cxx11ESV_.exit.i.i"
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #39, !noalias !394
  br label %.body.i

"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyINS_14promise_detail11PromiseLikeIZZNS_5Party6ToJsonEN4absl12lts_2025051212AnyInvocableIFvSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12experimental4JsonESt4lessISG_ESaISt4pairIKSG_SI_EEEEEEEN3$_0clEvEUlvE_vEEEEEERS1_St17basic_string_viewIcSE_ET_.exit.i": ; preds = %.noexc.i.i.i.i.i6.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !394
  %i.ar = load <2 x ptr>, ptr %i.d, align 8, !tbaa !181, !noalias !394
  %.phi.trans.insert4.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.pre5.i = load ptr, ptr %.phi.trans.insert4.i, align 8, !tbaa !105, !noalias !394
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.k, %bb.j, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.as, %bb.k ], [ %i.aa, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i.i ], [ %i.aq, %bb.j ]
  call void @_ZN9grpc_core8channelz12PropertyListD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #39, !noalias !394
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39, !noalias !394
  br label %.body

bb.l:                                             ; preds = %"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyINS_14promise_detail11PromiseLikeIZZNS_5Party6ToJsonEN4absl12lts_2025051212AnyInvocableIFvSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12experimental4JsonESt4lessISG_ESaISt4pairIKSG_SI_EEEEEEEN3$_0clEvEUlvE_vEEEEEERS1_St17basic_string_viewIcSE_ET_.exit.i", %bb.c
  %i.at = phi ptr [ %.pre5.i, %"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyINS_14promise_detail11PromiseLikeIZZNS_5Party6ToJsonEN4absl12lts_2025051212AnyInvocableIFvSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12experimental4JsonESt4lessISG_ESaISt4pairIKSG_SI_EEEEEEEN3$_0clEvEUlvE_vEEEEEERS1_St17basic_string_viewIcSE_ET_.exit.i" ], [ null, %bb.c ]
  %i.au = phi <2 x ptr> [ %i.ar, %"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyINS_14promise_detail11PromiseLikeIZZNS_5Party6ToJsonEN4absl12lts_2025051212AnyInvocableIFvSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12experimental4JsonESt4lessISG_ESaISt4pairIKSG_SI_EEEEEEEN3$_0clEvEUlvE_vEEEEEERS1_St17basic_string_viewIcSE_ET_.exit.i" ], [ splat (ptr null), %bb.c ]
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core8channelz12PropertyListE, i64 16), ptr %10, align 8, !tbaa !28, !alias.scope !394
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 16
  store <2 x ptr> %i.au, ptr %i.av, align 8, !tbaa !181, !alias.scope !394
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  store ptr %i.at, ptr %i.ax, align 8, !tbaa !105, !alias.scope !394
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39, !noalias !394
  %i.ay = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN9grpc_core8channelz12PropertyList5MergeES1_(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 %10)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core8channelz12PropertyListE, i64 16), ptr %0, align 8, !tbaa !28
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESaISM_EEC2ERKSO_(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit unwind label %bb.u

_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit: ; preds = %bb.m
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !99 ; 3 uses
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !100 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.bb, %i.bc
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bn, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i ], [ %i.bb, %_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit ] ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !102
  %.not.i.i.i.i.i.i.i.i8 = icmp eq i8 %i.be, -1
  br i1 %.not.i.i.i.i.i.i.i.i8, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i, label %bb.n, !prof !42

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(33) %i.bf)
          to label %.noexc.i.i.i.i.i.i.i9 unwind label %bb.o

.noexc.i.i.i.i.i.i.i9:                            ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #37
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i9, %.lr.ph.i.i.i.i
  %i.bi = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !71 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !73
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #38
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bn, %i.bc
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.av, align 8, !tbaa !99
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i, %_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit
  %i.bo = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.bb, %_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i1.i.i, label %_ZN9grpc_core8channelz12PropertyListD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i
  %i.bp = load ptr, ptr %i.ax, align 8, !tbaa !105
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = sub i64 %i.bq, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bs) #38
  br label %_ZN9grpc_core8channelz12PropertyListD2Ev.exit

_ZN9grpc_core8channelz12PropertyListD2Ev.exit:    ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i, %bb.p
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !99  ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !100 ; 2 uses
  %.not4.i.i.i.i10 = icmp eq ptr %i.bt, %i.bv
  br i1 %.not4.i.i.i.i10, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i21, label %.lr.ph.i.i.i.i11

.lr.ph.i.i.i.i11:                                 ; preds = %_ZN9grpc_core8channelz12PropertyListD2Ev.exit, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i17
  %.05.i.i.i.i12 = phi ptr [ %i.cg, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i17 ], [ %i.bt, %_ZN9grpc_core8channelz12PropertyListD2Ev.exit ] ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i12, i64 64
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !102
  %.not.i.i.i.i.i.i.i.i13 = icmp eq i8 %i.bx, -1
  br i1 %.not.i.i.i.i.i.i.i.i13, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i15, label %bb.q, !prof !42

bb.q:                                             ; preds = %.lr.ph.i.i.i.i11
  %i.by = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i12, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(33) %i.by)
          to label %.noexc.i.i.i.i.i.i.i14 unwind label %bb.r

.noexc.i.i.i.i.i.i.i14:                           ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i15

bb.r:                                             ; preds = %bb.q
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #37
end_hunk_0
begin_hunk_1_@"_ZN9grpc_core5Party15ParticipantImplIZZNS0_16ExportToChannelzENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8channelz8DataSinkEN4absl12lts_2025051212AnyInvocableIFNS8_12PropertyListEvEEEEN3$_0clEvEUlvE_ZZNS0_16ExportToChannelzES7_S9_SF_ENSG_clEvEUlNSB_6StatusEE_E22PollParticipantPromiseEv":bb.a
bb.r:                                             ; preds = %bb.q, %bb.n
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.q ], [ %i.bz, %bb.n ]
  call void @_ZN9grpc_core8channelz12PropertyListD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #39, !noalias !454
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39, !noalias !454
  resume { ptr, i32 } %.pn.pn.i

.thread:                                          ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i32.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39, !noalias !454
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call fastcc void @"_ZZZN9grpc_core5Party16ExportToChannelzENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8channelz8DataSinkEN4absl12lts_2025051212AnyInvocableIFNS7_12PropertyListEvEEEEN3$_0clEvENUlvE_D2Ev"(ptr noundef nonnull align 16 dead_on_return(112) dereferenceable(112) %.phi.trans.insert) #39
  store i8 1, ptr %i.a, align 16, !tbaa !258
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 55, ptr %i.cc, align 16, !tbaa !104, !noalias !456
  br label %_ZN4absl12lts_202505126StatusD2Ev.exit10.thread

bb.s:                                             ; preds = %bb.a
  %.pre = load i64, ptr %.phi.trans.insert, align 16, !tbaa !104, !noalias !456 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i64 55, ptr %i.cd, align 16, !tbaa !104, !noalias !456
  %i.ce = trunc i64 %.pre to i1
  br i1 %i.ce, label %_ZN4absl12lts_202505126StatusD2Ev.exit10.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cf = inttoptr i64 %.pre to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.cf)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit10 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  tail call void @__clang_call_terminate(ptr %i.ch) #37
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit10:         ; preds = %bb.t
  %.pre18 = load i8, ptr %i.a, align 16, !tbaa !258, !range !110
  %i.ci = trunc nuw i8 %.pre18 to i1
  br i1 %i.ci, label %_ZN4absl12lts_202505126StatusD2Ev.exit10.thread, label %bb.v

bb.v:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit10
  tail call fastcc void @"_ZZZN9grpc_core5Party16ExportToChannelzENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8channelz8DataSinkEN4absl12lts_2025051212AnyInvocableIFNS7_12PropertyListEvEEEEN3$_0clEvENUlvE_D2Ev"(ptr noundef nonnull align 16 dead_on_return(112) dereferenceable(112) %i.cd) #39
  br label %"_ZN9grpc_core14promise_detail11PromiseLikeIZNS0_18PromiseFactoryImplIZZNS_5Party16ExportToChannelzENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8channelz8DataSinkEN4absl12lts_2025051212AnyInvocableIFNSA_12PropertyListEvEEEEN3$_0clEvEUlvE_EEDaNSt9enable_ifIXaaaantsr14IsVoidCallableINS0_9ResultOfTIFT_vEvE1TEEE5valuentclsr10PollTraitsISP_EE7is_pollEntsr3stdE9is_same_vISP_vEENS0_9OnceTokenEE4typeEOSM_EUlvE_vED2Ev.exit.i"

_ZN4absl12lts_202505126StatusD2Ev.exit10.thread:  ; preds = %.thread, %bb.s, %_ZN4absl12lts_202505126StatusD2Ev.exit10
  %i.cj = phi ptr [ %i.cd, %_ZN4absl12lts_202505126StatusD2Ev.exit10 ], [ %i.cc, %.thread ], [ %i.cd, %bb.s ]
  %.val.i = load i64, ptr %i.cj, align 8, !tbaa !104 ; 2 uses
  %i.ck = trunc i64 %.val.i to i1
  br i1 %i.ck, label %"_ZN9grpc_core14promise_detail11PromiseLikeIZNS0_18PromiseFactoryImplIZZNS_5Party16ExportToChannelzENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8channelz8DataSinkEN4absl12lts_2025051212AnyInvocableIFNSA_12PropertyListEvEEEEN3$_0clEvEUlvE_EEDaNSt9enable_ifIXaaaantsr14IsVoidCallableINS0_9ResultOfTIFT_vEvE1TEEE5valuentclsr10PollTraitsISP_EE7is_pollEntsr3stdE9is_same_vISP_vEENS0_9OnceTokenEE4typeEOSM_EUlvE_vED2Ev.exit.i", label %bb.w

bb.w:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit10.thread
  %i.cl = inttoptr i64 %.val.i to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.cl)
          to label %"_ZN9grpc_core14promise_detail11PromiseLikeIZNS0_18PromiseFactoryImplIZZNS_5Party16ExportToChannelzENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8channelz8DataSinkEN4absl12lts_2025051212AnyInvocableIFNSA_12PropertyListEvEEEEN3$_0clEvEUlvE_EEDaNSt9enable_ifIXaaaantsr14IsVoidCallableINS0_9ResultOfTIFT_vEvE1TEEE5valuentclsr10PollTraitsISP_EE7is_pollEntsr3stdE9is_same_vISP_vEENS0_9OnceTokenEE4typeEOSM_EUlvE_vED2Ev.exit.i" unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  call void @__clang_call_terminate(ptr %i.cn) #37
  unreachable

"_ZN9grpc_core14promise_detail11PromiseLikeIZNS0_18PromiseFactoryImplIZZNS_5Party16ExportToChannelzENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8channelz8DataSinkEN4absl12lts_2025051212AnyInvocableIFNSA_12PropertyListEvEEEEN3$_0clEvEUlvE_EEDaNSt9enable_ifIXaaaantsr14IsVoidCallableINS0_9ResultOfTIFT_vEvE1TEEE5valuentclsr10PollTraitsISP_EE7is_pollEntsr3stdE9is_same_vISP_vEENS0_9OnceTokenEE4typeEOSM_EUlvE_vED2Ev.exit.i": ; preds = %bb.w, %_ZN4absl12lts_202505126StatusD2Ev.exit10.thread, %bb.v
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core5Party11ParticipantE, i64 16), ptr %0, align 16, !tbaa !28
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !26 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i, label %_ZN9grpc_core4PollIN4absl12lts_202505126StatusEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %"_ZN9grpc_core14promise_detail11PromiseLikeIZNS0_18PromiseFactoryImplIZZNS_5Party16ExportToChannelzENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8channelz8DataSinkEN4absl12lts_2025051212AnyInvocableIFNSA_12PropertyListEvEEEEN3$_0clEvEUlvE_EEDaNSt9enable_ifIXaaaantsr14IsVoidCallableINS0_9ResultOfTIFT_vEvE1TEEE5valuentclsr10PollTraitsISP_EE7is_pollEntsr3stdE9is_same_vISP_vEENS0_9OnceTokenEE4typeEOSM_EUlvE_vED2Ev.exit.i"
  invoke void @_ZN9grpc_core5Party6Handle12DropActivityEv(ptr noundef nonnull align 8 dereferenceable(32) %i.cp)
          to label %_ZN9grpc_core4PollIN4absl12lts_202505126StatusEED2Ev.exit unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #37
  unreachable

_ZN9grpc_core4PollIN4absl12lts_202505126StatusEED2Ev.exit: ; preds = %"_ZN9grpc_core14promise_detail11PromiseLikeIZNS0_18PromiseFactoryImplIZZNS_5Party16ExportToChannelzENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8channelz8DataSinkEN4absl12lts_2025051212AnyInvocableIFNSA_12PropertyListEvEEEEN3$_0clEvEUlvE_EEDaNSt9enable_ifIXaaaantsr14IsVoidCallableINS0_9ResultOfTIFT_vEvE1TEEE5valuentclsr10PollTraitsISP_EE7is_pollEntsr3stdE9is_same_vISP_vEENS0_9OnceTokenEE4typeEOSM_EUlvE_vED2Ev.exit.i", %bb.y
  call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #38
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN9grpc_core5Party15ParticipantImplIZZNS0_16ExportToChannelzENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8channelz8DataSinkEN4absl12lts_2025051212AnyInvocableIFNS8_12PropertyListEvEEEEN3$_0clEvEUlvE_ZZNS0_16ExportToChannelzES7_S9_SF_ENSG_clEvEUlNSB_6StatusEE_E7DestroyEv"(ptr noundef nonnull align 16 dereferenceable(144) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i8, ptr %i.a, align 16, !tbaa !258, !range !110, !noundef !111
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZZZN9grpc_core5Party16ExportToChannelzENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8channelz8DataSinkEN4absl12lts_2025051212AnyInvocableIFNS7_12PropertyListEvEEEEN3$_0clEvENUlvE_D2Ev"(ptr noundef nonnull align 16 dead_on_return(112) dereferenceable(112) %i.d) #39
  br label %"_ZN9grpc_core14promise_detail11PromiseLikeIZNS0_18PromiseFactoryImplIZZNS_5Party16ExportToChannelzENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8channelz8DataSinkEN4absl12lts_2025051212AnyInvocableIFNSA_12PropertyListEvEEEEN3$_0clEvEUlvE_EEDaNSt9enable_ifIXaaaantsr14IsVoidCallableINS0_9ResultOfTIFT_vEvE1TEEE5valuentclsr10PollTraitsISP_EE7is_pollEntsr3stdE9is_same_vISP_vEENS0_9OnceTokenEE4typeEOSM_EUlvE_vED2Ev.exit.i"

bb.c:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.d, align 16, !tbaa !104 ; 2 uses
  %i.e = trunc i64 %.val.i to i1
  br i1 %i.e, label %"_ZN9grpc_core14promise_detail11PromiseLikeIZNS0_18PromiseFactoryImplIZZNS_5Party16ExportToChannelzENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8channelz8DataSinkEN4absl12lts_2025051212AnyInvocableIFNSA_12PropertyListEvEEEEN3$_0clEvEUlvE_EEDaNSt9enable_ifIXaaaantsr14IsVoidCallableINS0_9ResultOfTIFT_vEvE1TEEE5valuentclsr10PollTraitsISP_EE7is_pollEntsr3stdE9is_same_vISP_vEENS0_9OnceTokenEE4typeEOSM_EUlvE_vED2Ev.exit.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = inttoptr i64 %.val.i to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %"_ZN9grpc_core14promise_detail11PromiseLikeIZNS0_18PromiseFactoryImplIZZNS_5Party16ExportToChannelzENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8channelz8DataSinkEN4absl12lts_2025051212AnyInvocableIFNSA_12PropertyListEvEEEEN3$_0clEvEUlvE_EEDaNSt9enable_ifIXaaaantsr14IsVoidCallableINS0_9ResultOfTIFT_vEvE1TEEE5valuentclsr10PollTraitsISP_EE7is_pollEntsr3stdE9is_same_vISP_vEENS0_9OnceTokenEE4typeEOSM_EUlvE_vED2Ev.exit.i" unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #37
  unreachable

"_ZN9grpc_core14promise_detail11PromiseLikeIZNS0_18PromiseFactoryImplIZZNS_5Party16ExportToChannelzENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8channelz8DataSinkEN4absl12lts_2025051212AnyInvocableIFNSA_12PropertyListEvEEEEN3$_0clEvEUlvE_EEDaNSt9enable_ifIXaaaantsr14IsVoidCallableINS0_9ResultOfTIFT_vEvE1TEEE5valuentclsr10PollTraitsISP_EE7is_pollEntsr3stdE9is_same_vISP_vEENS0_9OnceTokenEE4typeEOSM_EUlvE_vED2Ev.exit.i": ; preds = %bb.d, %bb.c, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9grpc_core5Party11ParticipantE, i64 16), ptr %0, align 16, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !26   ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %"_ZN9grpc_core5Party15ParticipantImplIZZNS0_16ExportToChannelzENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8channelz8DataSinkEN4absl12lts_2025051212AnyInvocableIFNS8_12PropertyListEvEEEEN3$_0clEvEUlvE_ZZNS0_16ExportToChannelzES7_S9_SF_ENSG_clEvEUlNSB_6StatusEE_ED2Ev.exit", label %bb.f

bb.f:                                             ; preds = %"_ZN9grpc_core14promise_detail11PromiseLikeIZNS0_18PromiseFactoryImplIZZNS_5Party16ExportToChannelzENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8channelz8DataSinkEN4absl12lts_2025051212AnyInvocableIFNSA_12PropertyListEvEEEEN3$_0clEvEUlvE_EEDaNSt9enable_ifIXaaaantsr14IsVoidCallableINS0_9ResultOfTIFT_vEvE1TEEE5valuentclsr10PollTraitsISP_EE7is_pollEntsr3stdE9is_same_vISP_vEENS0_9OnceTokenEE4typeEOSM_EUlvE_vED2Ev.exit.i"
  invoke void @_ZN9grpc_core5Party6Handle12DropActivityEv(ptr noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %"_ZN9grpc_core5Party15ParticipantImplIZZNS0_16ExportToChannelzENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8channelz8DataSinkEN4absl12lts_2025051212AnyInvocableIFNS8_12PropertyListEvEEEEN3$_0clEvEUlvE_ZZNS0_16ExportToChannelzES7_S9_SF_ENSG_clEvEUlNSB_6StatusEE_ED2Ev.exit" unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #37
  unreachable

"_ZN9grpc_core5Party15ParticipantImplIZZNS0_16ExportToChannelzENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8channelz8DataSinkEN4absl12lts_2025051212AnyInvocableIFNS8_12PropertyListEvEEEEN3$_0clEvEUlvE_ZZNS0_16ExportToChannelzES7_S9_SF_ENSG_clEvEUlNSB_6StatusEE_ED2Ev.exit": ; preds = %"_ZN9grpc_core14promise_detail11PromiseLikeIZNS0_18PromiseFactoryImplIZZNS_5Party16ExportToChannelzENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8channelz8DataSinkEN4absl12lts_2025051212AnyInvocableIFNSA_12PropertyListEvEEEEN3$_0clEvEUlvE_EEDaNSt9enable_ifIXaaaantsr14IsVoidCallableINS0_9ResultOfTIFT_vEvE1TEEE5valuentclsr10PollTraitsISP_EE7is_pollEntsr3stdE9is_same_vISP_vEENS0_9OnceTokenEE4typeEOSM_EUlvE_vED2Ev.exit.i", %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #38
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN9grpc_core5Party15ParticipantImplIZZNS0_16ExportToChannelzENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8channelz8DataSinkEN4absl12lts_2025051212AnyInvocableIFNS8_12PropertyListEvEEEEN3$_0clEvEUlvE_ZZNS0_16ExportToChannelzES7_S9_SF_ENSG_clEvEUlNSB_6StatusEE_E18ChannelzPropertiesEv"(ptr dead_on_unwind noalias writable sret(%"class.grpc_core::channelz::PropertyList") align 8 %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(144) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.117, align 1            ; 3 uses
  %3 = alloca %class.anon.117, align 1            ; 3 uses
  %4 = alloca %class.anon.117, align 1            ; 3 uses
  %5 = alloca %class.anon.117, align 1            ; 3 uses
  %6 = alloca %"class.std::variant", align 8      ; 6 uses
  %7 = alloca %"class.std::optional.62", align 8  ; 9 uses
  %8 = alloca %"class.grpc_core::channelz::PropertyList", align 8 ; 8 uses
  %9 = alloca %"class.grpc_core::channelz::PropertyList", align 8 ; 9 uses
  %10 = alloca %"class.grpc_core::channelz::PropertyList", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core8channelz12PropertyListE, i64 16), ptr %9, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN9grpc_core8channelz12PropertyList3SetISt17basic_string_viewIcSt11char_traitsIcEEEERS1_S6_T_(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 11, ptr nonnull @.str.44, i64 74, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.59, i64 45))
          to label %bb.b unwind label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN9grpc_core8channelz12PropertyList3SetISt17basic_string_viewIcSt11char_traitsIcEEEERS1_S6_T_(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 7, ptr nonnull @.str.45, i64 74, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.60, i64 45))
          to label %bb.c unwind label %bb.t

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !463)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39, !noalias !463
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core8channelz12PropertyListE, i64 16), ptr %8, align 8, !tbaa !28, !noalias !463
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false), !noalias !463
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.f = load i8, ptr %i.e, align 16, !tbaa !258, !range !110, !noalias !463, !noundef !111
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !463
  call void @llvm.experimental.noalias.scope.decl(metadata !464)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39, !noalias !465
  %i.h = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #36
          to label %.noexc.i unwind label %bb.k, !noalias !463 ; 8 uses

.noexc.i:                                         ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 1, ptr %i.i, align 8, !tbaa !87, !noalias !466
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 1, ptr %i.j, align 4, !tbaa !88, !noalias !466
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.h, align 8, !tbaa !28, !noalias !466
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core8channelz20property_list_detail20PromisePropertyValueE, i64 16), ptr %i.k, align 8, !tbaa !28, !noalias !466
  %i.l = invoke ptr @upb_Arena_Init(ptr noundef null, i64 noundef 0, ptr noundef nonnull @upb_alloc_global)
          to label %.noexc.i.i.i.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i.i, !noalias !466 ; 5 uses

.noexc.i.i.i.i.i.i.i:                             ; preds = %.noexc.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.l, ptr %i.m, align 8, !tbaa !206, !noalias !466
  %i.n = load i16, ptr getelementptr inbounds nuw (i8, ptr @grpc__channelz__v2__Promise_msg_init, i64 8), align 8, !tbaa !209, !noalias !466
  %i.o = zext i16 %i.n to i64                     ; 5 uses
  %i.p = and i64 %i.o, 7
  %i.q = icmp eq i64 %i.p, 0
  call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !211, !noalias !466
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !212, !noalias !466 ; 4 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp ult i64 %i.w, %i.o
  br i1 %i.x, label %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, !prof !42

upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.o
  store ptr %i.y, ptr %i.l, align 8, !tbaa !212, !noalias !466
  br label %bb.e

upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i:    ; preds = %.noexc.i.i.i.i.i.i.i
  %i.z = invoke ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.l, i64 noundef %i.o)
          to label %.noexc9.i.i.i.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i.i, !noalias !466 ; 2 uses

.noexc9.i.i.i.i.i.i.i:                            ; preds = %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ]
  br label %bb.e

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i.i: ; preds = %upb_Arena_Malloc.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 40) #38, !noalias !466
  br label %.body.i

bb.e:                                             ; preds = %.noexc9.i.i.i.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i
  %.sink.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.t, %upb_Arena_Malloc.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.z, %.noexc9.i.i.i.i.i.i.i ] ; 5 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.sink.i.i.i.i.i.i.i.i.i.i, i8 0, i64 %i.o, i1 false), !noalias !466
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %.sink.i.i.i.i.i.i.i.i.i.i, ptr %i.ab, align 8, !tbaa !213, !noalias !466
  %i.ac = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.i.i.i.i.i.i.i, i64 8
  store i32 2, ptr %i.ac, align 4, !tbaa !89, !noalias !466
  %i.ad = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.i.i.i.i.i.i.i, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.61, i64 45), ptr %i.ad, align 4, !noalias !466
  %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.i.i.i.i.i.i.i, i64 24
  store i64 90, ptr %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !466
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 10, ptr %i.af, align 8, !tbaa !102, !noalias !465
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  store ptr %i.k, ptr %7, align 8, !tbaa !135, !alias.scope !464, !noalias !463
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.ae, align 8, !tbaa !76, !noalias !465
  store ptr %i.h, ptr %i.ah, align 8, !tbaa !76, !alias.scope !464, !noalias !463
  store ptr null, ptr %6, align 8, !tbaa !135, !noalias !465
  store i8 10, ptr %i.ag, align 8, !tbaa !102, !alias.scope !464, !noalias !463
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  store i8 1, ptr %i.ai, align 8, !tbaa !109, !alias.scope !464, !noalias !463
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39, !noalias !465
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(33) %6)
          to label %"_ZN9grpc_core8channelz20property_list_detail7WrapperINS_15PromisePropertyINS_14promise_detail11PromiseLikeIZNS4_18PromiseFactoryImplIZZNS_5Party16ExportToChannelzENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8DataSinkEN4absl12lts_2025051212AnyInvocableIFNS0_12PropertyListEvEEEEN3$_0clEvEUlvE_EEDaNSt9enable_ifIXaaaantsr14IsVoidCallableINS4_9ResultOfTIFT_vEvE1TEEE5valuentclsr10PollTraitsISS_EE7is_pollEntsr3stdE9is_same_vISS_vEENS4_9OnceTokenEE4typeEOSP_EUlvE_vEEEEvE4WrapB5cxx11ESZ_.exit.i.i" unwind label %bb.f, !noalias !465

bb.f:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #37, !noalias !465
  unreachable

"_ZN9grpc_core8channelz20property_list_detail7WrapperINS_15PromisePropertyINS_14promise_detail11PromiseLikeIZNS4_18PromiseFactoryImplIZZNS_5Party16ExportToChannelzENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8DataSinkEN4absl12lts_2025051212AnyInvocableIFNS0_12PropertyListEvEEEEN3$_0clEvEUlvE_EEDaNSt9enable_ifIXaaaantsr14IsVoidCallableINS4_9ResultOfTIFT_vEvE1TEEE5valuentclsr10PollTraitsISS_EE7is_pollEntsr3stdE9is_same_vISS_vEENS4_9OnceTokenEE4typeEOSP_EUlvE_vEEEEvE4WrapB5cxx11ESZ_.exit.i.i": ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39, !noalias !465
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39, !noalias !465
  invoke void @_ZN9grpc_core8channelz12PropertyList11SetInternalESt17basic_string_viewIcSt11char_traitsIcEESt8optionalISt7variantIJS5_NSt7__cxx1112basic_stringIcS4_SaIcEEElmdbNS_8DurationENS_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINS0_18OtherPropertyValueEEEEE(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 7, ptr nonnull @.str.52, ptr noundef nonnull align 8 %7)
          to label %bb.g unwind label %bb.j, !noalias !463

bb.g:                                             ; preds = %"_ZN9grpc_core8channelz20property_list_detail7WrapperINS_15PromisePropertyINS_14promise_detail11PromiseLikeIZNS4_18PromiseFactoryImplIZZNS_5Party16ExportToChannelzENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8DataSinkEN4absl12lts_2025051212AnyInvocableIFNS0_12PropertyListEvEEEEN3$_0clEvEUlvE_EEDaNSt9enable_ifIXaaaantsr14IsVoidCallableINS4_9ResultOfTIFT_vEvE1TEEE5valuentclsr10PollTraitsISS_EE7is_pollEntsr3stdE9is_same_vISS_vEENS4_9OnceTokenEE4typeEOSP_EUlvE_vEEEEvE4WrapB5cxx11ESZ_.exit.i.i"
  %i.al = load i8, ptr %i.ai, align 8, !tbaa !109, !range !110, !noalias !463, !noundef !111
  %i.am = trunc nuw i8 %i.al to i1
  store i8 0, ptr %i.ai, align 8, !tbaa !109, !noalias !463
  %i.an = load i8, ptr %i.ag, align 8, !noalias !463
  %.not.i.i.i.i.i.i.i.i = icmp ne i8 %i.an, -1
  %or.cond.not.i.i.i.i.i = select i1 %i.am, i1 %.not.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i.i, label %bb.h, label %"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyINS_14promise_detail11PromiseLikeIZNS4_18PromiseFactoryImplIZZNS_5Party16ExportToChannelzENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8DataSinkEN4absl12lts_2025051212AnyInvocableIFS1_vEEEEN3$_0clEvEUlvE_EEDaNSt9enable_ifIXaaaantsr14IsVoidCallableINS4_9ResultOfTIFT_vEvE1TEEE5valuentclsr10PollTraitsISR_EE7is_pollEntsr3stdE9is_same_vISR_vEENS4_9OnceTokenEE4typeEOSO_EUlvE_vEEEEEERS1_St17basic_string_viewIcSB_ESO_.exit.i", !prof !112

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39, !noalias !463
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %.noexc.i.i.i.i.i6.i.i unwind label %bb.i, !noalias !463

.noexc.i.i.i.i.i6.i.i:                            ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39, !noalias !463
  br label %"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyINS_14promise_detail11PromiseLikeIZNS4_18PromiseFactoryImplIZZNS_5Party16ExportToChannelzENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8DataSinkEN4absl12lts_2025051212AnyInvocableIFS1_vEEEEN3$_0clEvEUlvE_EEDaNSt9enable_ifIXaaaantsr14IsVoidCallableINS4_9ResultOfTIFT_vEvE1TEEE5valuentclsr10PollTraitsISR_EE7is_pollEntsr3stdE9is_same_vISR_vEENS4_9OnceTokenEE4typeEOSO_EUlvE_vEEEEEERS1_St17basic_string_viewIcSB_ESO_.exit.i"

bb.i:                                             ; preds = %bb.h
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #37, !noalias !463
  unreachable

bb.j:                                             ; preds = %"_ZN9grpc_core8channelz20property_list_detail7WrapperINS_15PromisePropertyINS_14promise_detail11PromiseLikeIZNS4_18PromiseFactoryImplIZZNS_5Party16ExportToChannelzENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8DataSinkEN4absl12lts_2025051212AnyInvocableIFNS0_12PropertyListEvEEEEN3$_0clEvEUlvE_EEDaNSt9enable_ifIXaaaantsr14IsVoidCallableINS4_9ResultOfTIFT_vEvE1TEEE5valuentclsr10PollTraitsISS_EE7is_pollEntsr3stdE9is_same_vISS_vEENS4_9OnceTokenEE4typeEOSP_EUlvE_vEEEEvE4WrapB5cxx11ESZ_.exit.i.i"
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #39, !noalias !463
  br label %.body.i

"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyINS_14promise_detail11PromiseLikeIZNS4_18PromiseFactoryImplIZZNS_5Party16ExportToChannelzENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8DataSinkEN4absl12lts_2025051212AnyInvocableIFS1_vEEEEN3$_0clEvEUlvE_EEDaNSt9enable_ifIXaaaantsr14IsVoidCallableINS4_9ResultOfTIFT_vEvE1TEEE5valuentclsr10PollTraitsISR_EE7is_pollEntsr3stdE9is_same_vISR_vEENS4_9OnceTokenEE4typeEOSO_EUlvE_vEEEEEERS1_St17basic_string_viewIcSB_ESO_.exit.i": ; preds = %.noexc.i.i.i.i.i6.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !463
  %i.ar = load <2 x ptr>, ptr %i.d, align 8, !tbaa !181, !noalias !463
  %.phi.trans.insert4.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.pre5.i = load ptr, ptr %.phi.trans.insert4.i, align 8, !tbaa !105, !noalias !463
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.k, %bb.j, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.as, %bb.k ], [ %i.aa, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core8channelz20property_list_detail20PromisePropertyValueESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i.i.i ], [ %i.aq, %bb.j ]
  call void @_ZN9grpc_core8channelz12PropertyListD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #39, !noalias !463
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39, !noalias !463
  br label %.body

bb.l:                                             ; preds = %"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyINS_14promise_detail11PromiseLikeIZNS4_18PromiseFactoryImplIZZNS_5Party16ExportToChannelzENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8DataSinkEN4absl12lts_2025051212AnyInvocableIFS1_vEEEEN3$_0clEvEUlvE_EEDaNSt9enable_ifIXaaaantsr14IsVoidCallableINS4_9ResultOfTIFT_vEvE1TEEE5valuentclsr10PollTraitsISR_EE7is_pollEntsr3stdE9is_same_vISR_vEENS4_9OnceTokenEE4typeEOSO_EUlvE_vEEEEEERS1_St17basic_string_viewIcSB_ESO_.exit.i", %bb.c
  %i.at = phi ptr [ %.pre5.i, %"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyINS_14promise_detail11PromiseLikeIZNS4_18PromiseFactoryImplIZZNS_5Party16ExportToChannelzENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8DataSinkEN4absl12lts_2025051212AnyInvocableIFS1_vEEEEN3$_0clEvEUlvE_EEDaNSt9enable_ifIXaaaantsr14IsVoidCallableINS4_9ResultOfTIFT_vEvE1TEEE5valuentclsr10PollTraitsISR_EE7is_pollEntsr3stdE9is_same_vISR_vEENS4_9OnceTokenEE4typeEOSO_EUlvE_vEEEEEERS1_St17basic_string_viewIcSB_ESO_.exit.i" ], [ null, %bb.c ]
  %i.au = phi <2 x ptr> [ %i.ar, %"_ZN9grpc_core8channelz12PropertyList3SetINS_15PromisePropertyINS_14promise_detail11PromiseLikeIZNS4_18PromiseFactoryImplIZZNS_5Party16ExportToChannelzENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8DataSinkEN4absl12lts_2025051212AnyInvocableIFS1_vEEEEN3$_0clEvEUlvE_EEDaNSt9enable_ifIXaaaantsr14IsVoidCallableINS4_9ResultOfTIFT_vEvE1TEEE5valuentclsr10PollTraitsISR_EE7is_pollEntsr3stdE9is_same_vISR_vEENS4_9OnceTokenEE4typeEOSO_EUlvE_vEEEEEERS1_St17basic_string_viewIcSB_ESO_.exit.i" ], [ splat (ptr null), %bb.c ]
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core8channelz12PropertyListE, i64 16), ptr %10, align 8, !tbaa !28, !alias.scope !463
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 16
  store <2 x ptr> %i.au, ptr %i.av, align 8, !tbaa !181, !alias.scope !463
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  store ptr %i.at, ptr %i.ax, align 8, !tbaa !105, !alias.scope !463
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39, !noalias !463
  %i.ay = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN9grpc_core8channelz12PropertyList5MergeES1_(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 %10)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core8channelz12PropertyListE, i64 16), ptr %0, align 8, !tbaa !28
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESaISM_EEC2ERKSO_(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit unwind label %bb.u

_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit: ; preds = %bb.m
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !99 ; 3 uses
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !100 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.bb, %i.bc
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bn, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i ], [ %i.bb, %_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit ] ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !102
  %.not.i.i.i.i.i.i.i.i8 = icmp eq i8 %i.be, -1
  br i1 %.not.i.i.i.i.i.i.i.i8, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i, label %bb.n, !prof !42

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(33) %i.bf)
          to label %.noexc.i.i.i.i.i.i.i9 unwind label %bb.o

.noexc.i.i.i.i.i.i.i9:                            ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #37
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i9, %.lr.ph.i.i.i.i
  %i.bi = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !71 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !73
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #38
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bn, %i.bc
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.av, align 8, !tbaa !99
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i, %_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit
  %i.bo = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.bb, %_ZN9grpc_core8channelz12PropertyListC2ERKS1_.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i1.i.i, label %_ZN9grpc_core8channelz12PropertyListD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i
  %i.bp = load ptr, ptr %i.ax, align 8, !tbaa !105
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = sub i64 %i.bq, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bs) #38
  br label %_ZN9grpc_core8channelz12PropertyListD2Ev.exit

_ZN9grpc_core8channelz12PropertyListD2Ev.exit:    ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i, %bb.p
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !99  ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !100 ; 2 uses
  %.not4.i.i.i.i10 = icmp eq ptr %i.bt, %i.bv
  br i1 %.not4.i.i.i.i10, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i21, label %.lr.ph.i.i.i.i11

.lr.ph.i.i.i.i11:                                 ; preds = %_ZN9grpc_core8channelz12PropertyListD2Ev.exit, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i17
  %.05.i.i.i.i12 = phi ptr [ %i.cg, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i17 ], [ %i.bt, %_ZN9grpc_core8channelz12PropertyListD2Ev.exit ] ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i12, i64 64
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !102
  %.not.i.i.i.i.i.i.i.i13 = icmp eq i8 %i.bx, -1
  br i1 %.not.i.i.i.i.i.i.i.i13, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i15, label %bb.q, !prof !42

bb.q:                                             ; preds = %.lr.ph.i.i.i.i11
  %i.by = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i12, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(33) %i.by)
          to label %.noexc.i.i.i.i.i.i.i14 unwind label %bb.r

.noexc.i.i.i.i.i.i.i14:                           ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i15

bb.r:                                             ; preds = %bb.q
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #37
end_hunk_1
