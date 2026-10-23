Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/chat-peg-parser?download=true
inline.NumInlined: 4148
inline.NumDeleted: 1810
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN23common_chat_peg_builder7permuteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorI17common_peg_parserSaIS9_EE:bb.a

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !59
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKj17common_peg_parserESt10_Select1stIS3_ESt4lessIjESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.z)
          to label %_ZNSt3mapIj17common_peg_parserSt4lessIjESaISt4pairIKjS0_EEED2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #26
  unreachable

_ZNSt3mapIj17common_peg_parserSt4lessIjESaISt4pairIKjS0_EEED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.n

bb.k:                                             ; preds = %bb.e, %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !19 ; 2 uses
  %.not.i14 = icmp eq ptr %i.ae, null
  br i1 %.not.i14, label %_ZNSt14_Function_baseD2Ev.exit15, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = invoke noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit15 unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit15:                 ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @_ZNSt3mapIj17common_peg_parserSt4lessIjESaISt4pairIKjS0_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %i.ac

bb.n:                                             ; preds = %_ZNSt3mapIj17common_peg_parserSt4lessIjESaISt4pairIKjS0_EEED2Ev.exit, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN25common_peg_parser_builder3epsEv(ptr dead_on_unwind noalias writable sret(%class.common_peg_parser) align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt7variantIJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEEC2ERKSL_.exit.i:
  %2 = alloca %class.anon.134, align 1            ; 3 uses
  %3 = alloca %class.anon.134, align 1            ; 3 uses
  %4 = alloca %"class.std::variant", align 8      ; 7 uses
  %5 = alloca %"class.std::variant", align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  store i8 0, ptr %i.a, align 8, !tbaa !84
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  store i8 0, ptr %i.b, align 8, !tbaa !84, !noalias !213
  %i.c = invoke noundef i64 @_ZN16common_peg_arena10add_parserESt7variantIJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr nofreeobj noundef nonnull align 8 dereferenceable(80) %4)
          to label %bb.a unwind label %common.resume.i, !noalias !213

bb.a:                                             ; preds = %_ZNSt7variantIJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEEC2ERKSL_.exit.i
  store i64 %i.c, ptr %0, align 8, !tbaa !78, !alias.scope !214
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.d, align 8, !tbaa !82, !alias.scope !214
  %i.e = load i8, ptr %i.b, align 8, !tbaa !84, !noalias !213 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.e, -1
  br i1 %.not.i.i.i, label %.thread, label %bb.b, !prof !85

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !213
  %i.f = sext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableIvOZNS0_16_Variant_storageILb0EJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S4_S5_S6_S7_S8_S9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_EEEE9_S_vtableE, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !86, !noalias !213
  invoke void %i.h(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.d unwind label %bb.c, !noalias !213, !inline_history !1

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #26, !noalias !213
  unreachable

common.resume.i:                                  ; preds = %_ZNSt7variantIJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEEC2ERKSL_.exit.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEED2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %4) #25, !noalias !213
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEED2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %i.k

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !213
  %.pre = load i8, ptr %i.a, align 8, !tbaa !84   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not.i.i = icmp eq i8 %.pre, -1
  br i1 %.not.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEED2Ev.exit, label %bb.e, !prof !87

bb.e:                                             ; preds = %.thread, %bb.d
  %i.l = phi i8 [ 0, %.thread ], [ %.pre, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.m = sext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableIvOZNS0_16_Variant_storageILb0EJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S4_S5_S6_S7_S8_S9_SA_SB_SC_SD_SE_SF_SG_SH_SI_SJ_SK_SL_SM_SN_EEEE9_S_vtableE, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !86
  invoke void %i.o(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %.noexc.i unwind label %bb.f, !inline_history !1

.noexc.i:                                         ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #26
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJ25common_peg_epsilon_parser23common_peg_start_parser21common_peg_end_parser25common_peg_literal_parser26common_peg_sequence_parser24common_peg_choice_parser28common_peg_repetition_parser21common_peg_and_parser21common_peg_not_parser21common_peg_any_parser23common_peg_space_parser23common_peg_chars_parser24common_peg_string_parser23common_peg_until_parser24common_peg_schema_parser22common_peg_rule_parser21common_peg_ref_parser24common_peg_atomic_parser21common_peg_tag_parser22common_peg_gbnf_parser20common_peg_ac_parserEED2Ev.exit: ; preds = %bb.d, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret void
}

declare void @_ZN25common_peg_parser_builder8sequenceERKSt6vectorI17common_peg_parserSaIS1_EE(ptr dead_on_unwind writable sret(%class.common_peg_parser) align 8, ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3mapIj17common_peg_parserSt4lessIjESaISt4pairIKjS0_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKj17common_peg_parserESt10_Select1stIS3_ESt4lessIjESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIjSt4pairIKj17common_peg_parserESt10_Select1stIS3_ESt4lessIjESaIS3_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #26
  unreachable

_ZNSt8_Rb_treeIjSt4pairIKj17common_peg_parserESt10_Select1stIS3_ESt4lessIjESaIS3_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZN22common_chat_peg_mapper11args_targetB5cxx11Ev(ptr nofree noundef nonnull readonly align 8 captures(ret: address, provenance) dereferenceable(168) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !43
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = phi ptr [ %i.f, %bb.c ], [ %i.g, %bb.d ]
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define void @_ZN22common_chat_peg_mapper25normalize_container_valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 25 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !40, !alias.scope !219
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 23 uses
  store i64 0, ptr %i.b, align 8, !tbaa !43, !alias.scope !219
  store i8 0, ptr %i.a, align 8, !tbaa !45, !alias.scope !219
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !43, !noalias !219
  %i.e = add i64 %i.d, 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.e)
          to label %.preheader.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader.i:                                     ; preds = %bb.a
  %i.f = load i64, ptr %i.c, align 8, !tbaa !43, !noalias !219 ; 2 uses
  %.not197.i = icmp eq i64 %i.f, 0
  br i1 %.not197.i, label %_ZL24normalize_quotes_to_jsonRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph196.i

.lr.ph196.i:                                      ; preds = %.preheader.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i
  %i.g = phi i64 [ %i.gq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i ], [ %i.f, %.preheader.i ] ; 2 uses
  %.081195.i = phi i8 [ %.283.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i ], [ 0, %.preheader.i ] ; 6 uses
  %.090194.i = phi i64 [ %i.gp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i ], [ 0, %.preheader.i ] ; 12 uses
  %.094193.i = phi i8 [ %.296.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i ], [ 0, %.preheader.i ] ; 9 uses
  %i.h = load ptr, ptr %2, align 8, !tbaa !42, !noalias !219 ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 %.090194.i ; 8 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !45    ; 4 uses
  switch i8 %i.j, label %bb.ab [
    i8 92, label %bb.b
    i8 34, label %bb.s
    i8 39, label %bb.w
  ]

bb.b:                                             ; preds = %.lr.ph196.i
  %i.k = add nuw i64 %.090194.i, 1                ; 6 uses
  %i.l = icmp ult i64 %i.k, %i.g
  br i1 %i.l, label %bb.c, label %bb.ab

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.k
  %i.n = load i8, ptr %i.m, align 1, !tbaa !45    ; 3 uses
  %i.o = trunc nuw i8 %.081195.i to i1
  br i1 %i.o, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.b, align 8, !tbaa !43, !alias.scope !219 ; 9 uses
  switch i8 %i.n, label %bb.h [
    i8 39, label %bb.e
    i8 34, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.q = add i64 %i.p, 1                          ; 3 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !42, !alias.scope !219 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.a
  br i1 %i.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.e
  %i.t = icmp ult i64 %i.p, 16
  tail call void @llvm.assume(i1 %i.t)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.u = load i64, ptr %i.a, align 8, !tbaa !45, !alias.scope !219
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.v = phi i64 [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %i.w = icmp ugt i64 %i.q, %i.v
  br i1 %i.w, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.p, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i:                                         ; preds = %bb.f
  %.pre.i.i.i = load ptr, ptr %0, align 8, !tbaa !42, !alias.scope !219
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i: ; preds = %.noexc.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.x = phi ptr [ %.pre.i.i.i, %.noexc.i ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.p
  store i8 39, ptr %i.y, align 1, !tbaa !45
  store i64 %i.q, ptr %i.b, align 8, !tbaa !43, !alias.scope !219
  %i.z = load ptr, ptr %0, align 8, !tbaa !42, !alias.scope !219
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.q
  store i8 0, ptr %i.aa, align 1, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i

bb.g:                                             ; preds = %bb.d
  %i.ab = and i64 %i.p, -2
  %i.ac = icmp eq i64 %i.ab, 4611686018427387902
  br i1 %i.ac, label %.invoke.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i: ; preds = %bb.g
  %i.ad = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.55, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.h:                                             ; preds = %bb.d
  %i.ae = add i64 %i.p, 1                         ; 3 uses
  %i.af = load ptr, ptr %0, align 8, !tbaa !42, !alias.scope !219 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.a
  br i1 %i.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i112.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i109.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i112.i: ; preds = %bb.h
  %i.ah = icmp ult i64 %i.p, 16
  tail call void @llvm.assume(i1 %i.ah)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i110.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i109.i: ; preds = %bb.h
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !45, !alias.scope !219
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i110.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i110.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i109.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i112.i
  %i.aj = phi i64 [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i109.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i112.i ]
  %i.ak = icmp ugt i64 %i.ae, %i.aj
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i110.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.p, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc113.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc113.i:                                      ; preds = %bb.i
  %.pre.i.i111.i = load ptr, ptr %0, align 8, !tbaa !42, !alias.scope !219
  br label %bb.j

bb.j:                                             ; preds = %.noexc113.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i110.i
  %i.al = phi ptr [ %.pre.i.i111.i, %.noexc113.i ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i110.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.p
  store i8 92, ptr %i.am, align 1, !tbaa !45
  store i64 %i.ae, ptr %i.b, align 8, !tbaa !43, !alias.scope !219
  %i.an = load ptr, ptr %0, align 8, !tbaa !42, !alias.scope !219
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ae
  store i8 0, ptr %i.ao, align 1, !tbaa !45
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !43, !alias.scope !219 ; 4 uses
  %i.aq = add i64 %i.ap, 1                        ; 3 uses
  %i.ar = load ptr, ptr %0, align 8, !tbaa !42, !alias.scope !219 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.a
  br i1 %i.as, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i118.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i115.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i118.i: ; preds = %bb.j
  %i.at = icmp ult i64 %i.ap, 16
  tail call void @llvm.assume(i1 %i.at)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i116.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i115.i: ; preds = %bb.j
  %i.au = load i64, ptr %i.a, align 8, !tbaa !45, !alias.scope !219
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i116.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i116.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i115.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i118.i
  %i.av = phi i64 [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i115.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i118.i ]
  %i.aw = icmp ugt i64 %i.aq, %i.av
  br i1 %i.aw, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit120.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i116.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ap, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc119.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc119.i:                                      ; preds = %bb.k
  %.pre.i.i117.i = load ptr, ptr %0, align 8, !tbaa !42, !alias.scope !219
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit120.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit120.i: ; preds = %.noexc119.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i116.i
  %i.ax = phi ptr [ %.pre.i.i117.i, %.noexc119.i ], [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i116.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ap
  store i8 %i.n, ptr %i.ay, align 1, !tbaa !45
  store i64 %i.aq, ptr %i.b, align 8, !tbaa !43, !alias.scope !219
  %i.az = load ptr, ptr %0, align 8, !tbaa !42, !alias.scope !219
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.aq
  store i8 0, ptr %i.ba, align 1, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i

bb.l:                                             ; preds = %bb.c
  %i.bb = trunc nuw i8 %.094193.i to i1
  %i.bc = load i64, ptr %i.b, align 8, !tbaa !43, !alias.scope !219 ; 7 uses
  %i.bd = add i64 %i.bc, 1                        ; 6 uses
  %i.be = load ptr, ptr %0, align 8, !tbaa !42, !alias.scope !219 ; 3 uses
  %i.bf = icmp eq ptr %i.be, %i.a                 ; 2 uses
  br i1 %i.bb, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  br i1 %i.bf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i124.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i121.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i124.i: ; preds = %bb.m
  %i.bg = icmp ult i64 %i.bc, 16
  tail call void @llvm.assume(i1 %i.bg)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i122.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i121.i: ; preds = %bb.m
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !45, !alias.scope !219
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i122.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i122.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i121.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i124.i
  %i.bi = phi i64 [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i121.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i124.i ]
  %i.bj = icmp ugt i64 %i.bd, %i.bi
  br i1 %i.bj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i122.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bc, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc125.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc125.i:                                      ; preds = %bb.n
  %.pre.i.i123.i = load ptr, ptr %0, align 8, !tbaa !42, !alias.scope !219
  br label %bb.o

bb.o:                                             ; preds = %.noexc125.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i122.i
  %i.bk = phi ptr [ %.pre.i.i123.i, %.noexc125.i ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i122.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bc
  store i8 92, ptr %i.bl, align 1, !tbaa !45
  store i64 %i.bd, ptr %i.b, align 8, !tbaa !43, !alias.scope !219
  %i.bm = load ptr, ptr %0, align 8, !tbaa !42, !alias.scope !219
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bd
  store i8 0, ptr %i.bn, align 1, !tbaa !45
  %i.bo = load i64, ptr %i.b, align 8, !tbaa !43, !alias.scope !219 ; 4 uses
  %i.bp = add i64 %i.bo, 1                        ; 3 uses
  %i.bq = load ptr, ptr %0, align 8, !tbaa !42, !alias.scope !219 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.a
  br i1 %i.br, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i130.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i127.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i130.i: ; preds = %bb.o
  %i.bs = icmp ult i64 %i.bo, 16
  tail call void @llvm.assume(i1 %i.bs)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i128.i
end_hunk_0
begin_hunk_1_@_ZN22common_chat_peg_mapper25normalize_container_valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  store i64 %i.bp, ptr %i.b, align 8, !tbaa !43, !alias.scope !219
  %i.by = load ptr, ptr %0, align 8, !tbaa !42, !alias.scope !219
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bp
  store i8 0, ptr %i.bz, align 1, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i

bb.q:                                             ; preds = %bb.l
  br i1 %i.bf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i136.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i133.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i136.i: ; preds = %bb.q
  %i.ca = icmp ult i64 %i.bc, 16
  tail call void @llvm.assume(i1 %i.ca)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i134.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i133.i: ; preds = %bb.q
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !45, !alias.scope !219
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i134.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i134.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i133.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i136.i
  %i.cc = phi i64 [ %i.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i133.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i136.i ]
  %i.cd = icmp ugt i64 %i.bd, %i.cc
  br i1 %i.cd, label %bb.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit138.i

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i134.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bc, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc137.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc137.i:                                      ; preds = %bb.r
  %.pre.i.i135.i = load ptr, ptr %0, align 8, !tbaa !42, !alias.scope !219
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit138.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit138.i: ; preds = %.noexc137.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i134.i
  %i.ce = phi ptr [ %.pre.i.i135.i, %.noexc137.i ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i134.i ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bc
  store i8 92, ptr %i.cf, align 1, !tbaa !45
  store i64 %i.bd, ptr %i.b, align 8, !tbaa !43, !alias.scope !219
  %i.cg = load ptr, ptr %0, align 8, !tbaa !42, !alias.scope !219
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.bd
  store i8 0, ptr %i.ch, align 1, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i

bb.s:                                             ; preds = %.lr.ph196.i
  %i.ci = trunc nuw i8 %.081195.i to i1
  br i1 %i.ci, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cj = load i64, ptr %i.b, align 8, !tbaa !43, !alias.scope !219
  %i.ck = and i64 %i.cj, -2
  %i.cl = icmp eq i64 %i.ck, 4611686018427387902
  br i1 %i.cl, label %.invoke.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i139.i

.invoke.i:                                        ; preds = %.thread.i, %bb.t, %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.62) #28
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i139.i: ; preds = %bb.t
  %i.cm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.55, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.u:                                             ; preds = %bb.s
  %i.cn = xor i8 %.094193.i, 1
  %i.co = load i64, ptr %i.b, align 8, !tbaa !43, !alias.scope !219 ; 4 uses
  %i.cp = add i64 %i.co, 1                        ; 3 uses
  %i.cq = load ptr, ptr %0, align 8, !tbaa !42, !alias.scope !219 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.a
  br i1 %i.cr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i146.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i143.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i146.i: ; preds = %bb.u
  %i.cs = icmp ult i64 %i.co, 16
  tail call void @llvm.assume(i1 %i.cs)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i144.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i143.i: ; preds = %bb.u
  %i.ct = load i64, ptr %i.a, align 8, !tbaa !45, !alias.scope !219
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i144.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i144.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i143.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i146.i
  %i.cu = phi i64 [ %i.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i143.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i146.i ]
  %i.cv = icmp ugt i64 %i.cp, %i.cu
  br i1 %i.cv, label %bb.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit148.i

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i144.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.co, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc147.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc147.i:                                      ; preds = %bb.v
  %.pre.i.i145.i = load ptr, ptr %0, align 8, !tbaa !42, !alias.scope !219
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit148.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit148.i: ; preds = %.noexc147.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i144.i
  %i.cw = phi ptr [ %.pre.i.i145.i, %.noexc147.i ], [ %i.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i144.i ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.co
  store i8 34, ptr %i.cx, align 1, !tbaa !45
  store i64 %i.cp, ptr %i.b, align 8, !tbaa !43, !alias.scope !219
  %i.cy = load ptr, ptr %0, align 8, !tbaa !42, !alias.scope !219
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cp
  store i8 0, ptr %i.cz, align 1, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i

bb.w:                                             ; preds = %.lr.ph196.i
  %i.da = trunc nuw i8 %.094193.i to i1
  br i1 %i.da, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.db = load i64, ptr %i.b, align 8, !tbaa !43, !alias.scope !219 ; 4 uses
  %i.dc = add i64 %i.db, 1                        ; 3 uses
  %i.dd = load ptr, ptr %0, align 8, !tbaa !42, !alias.scope !219 ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.a
  br i1 %i.de, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i152.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i149.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i152.i: ; preds = %bb.x
  %i.df = icmp ult i64 %i.db, 16
  tail call void @llvm.assume(i1 %i.df)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i150.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i149.i: ; preds = %bb.x
  %i.dg = load i64, ptr %i.a, align 8, !tbaa !45, !alias.scope !219
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i150.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i150.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i149.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i152.i
  %i.dh = phi i64 [ %i.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i149.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i152.i ]
  %i.di = icmp ugt i64 %i.dc, %i.dh
  br i1 %i.di, label %bb.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit154.i

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i150.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.db, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc153.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc153.i:                                      ; preds = %bb.y
  %.pre.i.i151.i = load ptr, ptr %0, align 8, !tbaa !42, !alias.scope !219
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit154.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit154.i: ; preds = %.noexc153.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i150.i
  %i.dj = phi ptr [ %.pre.i.i151.i, %.noexc153.i ], [ %i.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i150.i ]
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.db
  store i8 39, ptr %i.dk, align 1, !tbaa !45
  store i64 %i.dc, ptr %i.b, align 8, !tbaa !43, !alias.scope !219
  %i.dl = load ptr, ptr %0, align 8, !tbaa !42, !alias.scope !219
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dc
  store i8 0, ptr %i.dm, align 1, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i

bb.z:                                             ; preds = %bb.w
  %..i = xor i8 %.081195.i, 1
  %i.dn = load i64, ptr %i.b, align 8, !tbaa !43, !alias.scope !219 ; 4 uses
  %i.do = add i64 %i.dn, 1                        ; 3 uses
  %i.dp = load ptr, ptr %0, align 8, !tbaa !42, !alias.scope !219 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.a
  br i1 %i.dq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i158.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i155.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i158.i: ; preds = %bb.z
  %i.dr = icmp ult i64 %i.dn, 16
  tail call void @llvm.assume(i1 %i.dr)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i156.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i155.i: ; preds = %bb.z
  %i.ds = load i64, ptr %i.a, align 8, !tbaa !45, !alias.scope !219
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i156.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i156.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i155.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i158.i
  %i.dt = phi i64 [ %i.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i155.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i158.i ]
  %i.du = icmp ugt i64 %i.do, %i.dt
  br i1 %i.du, label %bb.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit160.i

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i156.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.dn, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc159.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc159.i:                                      ; preds = %bb.aa
  %.pre.i.i157.i = load ptr, ptr %0, align 8, !tbaa !42, !alias.scope !219
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit160.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit160.i: ; preds = %.noexc159.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i156.i
  %i.dv = phi ptr [ %.pre.i.i157.i, %.noexc159.i ], [ %i.dp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i156.i ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dn
  store i8 34, ptr %i.dw, align 1, !tbaa !45
  store i64 %i.do, ptr %i.b, align 8, !tbaa !43, !alias.scope !219
  %i.dx = load ptr, ptr %0, align 8, !tbaa !42, !alias.scope !219
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.do
  store i8 0, ptr %i.dy, align 1, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i

bb.ab:                                            ; preds = %bb.b, %.lr.ph196.i
  %i.dz = trunc nuw i8 %.081195.i to i1
  %i.ea = trunc nuw i8 %.094193.i to i1
  %or.cond.i = select i1 %i.dz, i1 true, i1 %i.ea
  br i1 %or.cond.i, label %bb.aj, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  switch i8 %i.j, label %bb.aj [
    i8 84, label %bb.ad
    i8 78, label %bb.ad
    i8 70, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac, %bb.ac, %bb.ac
  %i.eb = icmp eq i64 %.090194.i, 0
  br i1 %i.eb, label %.lr.ph.preheader.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ec = getelementptr i8, ptr %i.i, i64 -1
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !45  ; 2 uses
  %i.ee = zext i8 %i.ed to i32
  %i.ef = tail call i32 @isalnum(i32 noundef %i.ee) #30
  %i.eg = icmp ne i32 %i.ef, 0
  %i.eh = icmp eq i8 %i.ed, 95
  %i.ei = or i1 %i.eh, %i.eg
  br i1 %i.ei, label %bb.aj, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.ae, %bb.ad
  %i.ej = sub nuw i64 %i.g, %.090194.i            ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.af, %.lr.ph.preheader.i
  %.088188.i = phi i64 [ %i.eq, %bb.af ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %gep.i = getelementptr i8, ptr %i.i, i64 %.088188.i
  %i.ek = load i8, ptr %gep.i, align 1, !tbaa !45 ; 2 uses
  %i.el = zext i8 %i.ek to i32
  %i.em = tail call i32 @isalnum(i32 noundef %i.el) #30
  %i.en = icmp ne i32 %i.em, 0
  %i.eo = icmp eq i8 %i.ek, 95
  %i.ep = or i1 %i.eo, %i.en
  br i1 %i.ep, label %bb.af, label %.critedge.i

bb.af:                                            ; preds = %.lr.ph.i
  %i.eq = add i64 %.088188.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.eq, %i.ej
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !217

.critedge.i:                                      ; preds = %bb.af, %.lr.ph.i
  %.088.lcssa.i = phi i64 [ %i.ej, %bb.af ], [ %.088188.i, %.lr.ph.i ] ; 7 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %.088.lcssa.i, i64 4) ; 2 uses
  %.not187.i = icmp ugt i64 %.088.lcssa.i, 4
  br i1 %.not187.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.critedge.i
  %i.er = icmp eq i64 %.088.lcssa.i, 0
  br i1 %i.er, label %.thread.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.ag
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull @.str.56, ptr nonnull %i.i, i64 %.sroa.speculated.i.i)
  %i.es = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.es, label %.thread.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.1.i.thread

.thread.i:                                        ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.1.i.thread, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.2.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.1.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.ag
  %.084.ptr.lcssa.i = phi ptr [ @_ZZL24normalize_quotes_to_jsonRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8literals, %bb.ag ], [ @_ZZL24normalize_quotes_to_jsonRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8literals, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZL24normalize_quotes_to_jsonRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8literals, i64 64), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.2.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZL24normalize_quotes_to_jsonRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8literals, i64 32), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.1.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZL24normalize_quotes_to_jsonRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8literals, i64 32), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.1.i.thread ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.084.ptr.lcssa.i, i64 16
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !116, !noalias !219
  %.sroa.speculated.i161.i = tail call i64 @llvm.umin.i64(i64 %i.eu, i64 %.088.lcssa.i) ; 2 uses
  %i.ev = load i64, ptr %i.b, align 8, !tbaa !43, !alias.scope !219
  %i.ew = sub i64 4611686018427387903, %i.ev
  %i.ex = icmp ult i64 %i.ew, %.sroa.speculated.i161.i
  br i1 %i.ex, label %.invoke.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i.i: ; preds = %.thread.i
  %i.ey = getelementptr inbounds nuw i8, ptr %.084.ptr.lcssa.i, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !220, !noalias !219
  %i.fa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ez, i64 noundef %.sroa.speculated.i161.i)
          to label %.thread183.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.thread183.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i.i
  %i.fb = add i64 %.090194.i, -1
  %i.fc = add i64 %i.fb, %.088.lcssa.i
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ak, %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i.i, %bb.aa, %bb.y, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i139.i, %bb.r, %bb.p, %bb.n, %bb.k, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i, %bb.f, %.invoke.i, %bb.a
  %lpad.loopexit.split-lp15 = landingpad { ptr, i32 }
          cleanup
  %i.fd = load ptr, ptr %0, align 8, !tbaa !42, !alias.scope !219 ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.a
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.ah:                                            ; preds = %.critedge.i
  %.not187.1.not.i = icmp eq i64 %.088.lcssa.i, 5
  br i1 %.not187.1.not.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.1.i, label %.thread236.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.1.i: ; preds = %bb.ah
  %i.ff = load i32, ptr %i.i, align 1
  %i.fg = xor i32 1936482630, %i.ff
  %i.fh = getelementptr i8, ptr %i.i, i64 4
  %i.fi = load i8, ptr %i.fh, align 1
  %i.fj = zext i8 %i.fi to i32
  %i.fk = xor i32 101, %i.fj
  %i.fl = or i32 %i.fg, %i.fk
  %i.fm = icmp ne i32 %i.fl, 0
  %i.fn = zext i1 %i.fm to i32
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %.thread.i, label %.thread236.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.1.i.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %bcmp.i.1.i2 = tail call i32 @bcmp(ptr nonnull @.str.58, ptr nonnull %i.i, i64 %.088.lcssa.i)
  %i.fp = icmp eq i32 %bcmp.i.1.i2, 0
  br i1 %i.fp, label %.thread.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.2.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.2.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.1.i.thread
  %bcmp.i.2.i = tail call i32 @bcmp(ptr nonnull @.str.60, ptr nonnull %i.i, i64 %.sroa.speculated.i.i)
  %i.fq = icmp eq i32 %bcmp.i.2.i, 0
  br i1 %i.fq, label %.thread.i, label %.thread236.i

.thread236.i:                                     ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.1.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.2.i, %bb.ah
  %i.fr = load i64, ptr %i.b, align 8, !tbaa !43, !alias.scope !219 ; 4 uses
  %i.fs = add i64 %i.fr, 1                        ; 3 uses
  %i.ft = load ptr, ptr %0, align 8, !tbaa !42, !alias.scope !219 ; 2 uses
  %i.fu = icmp eq ptr %i.ft, %i.a
  br i1 %i.fu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i169.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i166.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i169.i: ; preds = %.thread236.i
  %i.fv = icmp ult i64 %i.fr, 16
  tail call void @llvm.assume(i1 %i.fv)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i167.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i166.i: ; preds = %.thread236.i
  %i.fw = load i64, ptr %i.a, align 8, !tbaa !45, !alias.scope !219
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i167.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i167.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i166.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i169.i
  %i.fx = phi i64 [ %i.fw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i166.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i169.i ]
  %i.fy = icmp ugt i64 %i.fs, %i.fx
  br i1 %i.fy, label %bb.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit171.i

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i167.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.fr, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc170.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc170.i:                                      ; preds = %bb.ai
  %.pre.i.i168.i = load ptr, ptr %0, align 8, !tbaa !42, !alias.scope !219
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit171.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit171.i: ; preds = %.noexc170.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i167.i
  %i.fz = phi ptr [ %.pre.i.i168.i, %.noexc170.i ], [ %i.ft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i167.i ]
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.fr
  store i8 %i.j, ptr %i.ga, align 1, !tbaa !45
  store i64 %i.fs, ptr %i.b, align 8, !tbaa !43, !alias.scope !219
  %i.gb = load ptr, ptr %0, align 8, !tbaa !42, !alias.scope !219
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.fs
  store i8 0, ptr %i.gc, align 1, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i

bb.aj:                                            ; preds = %bb.ae, %bb.ac, %bb.ab
  %i.gd = load i64, ptr %i.b, align 8, !tbaa !43, !alias.scope !219 ; 4 uses
  %i.ge = add i64 %i.gd, 1                        ; 3 uses
  %i.gf = load ptr, ptr %0, align 8, !tbaa !42, !alias.scope !219 ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.a
  br i1 %i.gg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i175.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i172.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i175.i: ; preds = %bb.aj
  %i.gh = icmp ult i64 %i.gd, 16
  tail call void @llvm.assume(i1 %i.gh)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i173.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i172.i: ; preds = %bb.aj
  %i.gi = load i64, ptr %i.a, align 8, !tbaa !45, !alias.scope !219
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i173.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i173.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i172.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i175.i
  %i.gj = phi i64 [ %i.gi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i172.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i175.i ]
  %i.gk = icmp ugt i64 %i.ge, %i.gj
  br i1 %i.gk, label %bb.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit177.i

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i173.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.gd, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc176.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc176.i:                                      ; preds = %bb.ak
  %.pre.i.i174.i = load ptr, ptr %0, align 8, !tbaa !42, !alias.scope !219
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit177.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit177.i: ; preds = %.noexc176.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i173.i
  %i.gl = phi ptr [ %.pre.i.i174.i, %.noexc176.i ], [ %i.gf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i173.i ]
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gd
  store i8 %i.j, ptr %i.gm, align 1, !tbaa !45
  store i64 %i.ge, ptr %i.b, align 8, !tbaa !43, !alias.scope !219
  %i.gn = load ptr, ptr %0, align 8, !tbaa !42, !alias.scope !219
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.ge
  store i8 0, ptr %i.go, align 1, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit177.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit171.i, %.thread183.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit160.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit154.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit148.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i139.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit138.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit132.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit120.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i
  %.296.i = phi i8 [ %.094193.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit138.i ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit132.i ], [ %.094193.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit120.i ], [ %.094193.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit177.i ], [ %.094193.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i ], [ %i.cn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit148.i ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit154.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit160.i ], [ %.094193.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i139.i ], [ 0, %.thread183.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit171.i ]
  %.6.i = phi i64 [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i ], [ %.090194.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit138.i ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit132.i ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit120.i ], [ %.090194.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit177.i ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i ], [ %.090194.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit148.i ], [ %.090194.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit154.i ], [ %.090194.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit160.i ], [ %.090194.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i139.i ], [ %i.fc, %.thread183.i ], [ %.090194.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit171.i ]
  %.283.i = phi i8 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit138.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit132.i ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit120.i ], [ %.081195.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit177.i ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit148.i ], [ %.081195.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit154.i ], [ %..i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit160.i ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i139.i ], [ 0, %.thread183.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit171.i ]
  %i.gp = add i64 %.6.i, 1                        ; 2 uses
  %i.gq = load i64, ptr %i.c, align 8, !tbaa !43, !noalias !219 ; 2 uses
  %i.gr = icmp ult i64 %i.gp, %i.gq
  br i1 %i.gr, label %.lr.ph196.i, label %_ZL24normalize_quotes_to_jsonRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, !llvm.loop !218

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.gs = load i64, ptr %i.a, align 8, !tbaa !45, !alias.scope !219
  %i.gt = add i64 %i.gs, 1
  tail call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.gt) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %lpad.loopexit.split-lp15

_ZL24normalize_quotes_to_jsonRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i, %.preheader.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN22common_chat_peg_mapper8from_astERK20common_peg_ast_arenaRK23common_peg_parse_result(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function", align 8     ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.a = ptrtoint ptr %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.d, align 8
  store i64 %i.a, ptr %3, align 8, !tbaa !118
  store ptr @"_ZNSt17_Function_handlerIFvRK19common_peg_ast_nodeEZN22common_chat_peg_mapper8from_astERK20common_peg_ast_arenaRK23common_peg_parse_resultE3$_0E9_M_invokeERKSt9_Any_dataS2_", ptr %i.c, align 8, !tbaa !18
  store ptr @"_ZNSt17_Function_handlerIFvRK19common_peg_ast_nodeEZN22common_chat_peg_mapper8from_astERK20common_peg_ast_arenaRK23common_peg_parse_resultE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation", ptr %i.b, align 8, !tbaa !19
  invoke void @_ZNK20common_peg_ast_arena5visitERK23common_peg_parse_resultRKSt8functionIFvRK19common_peg_ast_nodeEE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.k = load i8, ptr %i.j, align 8, !tbaa !119, !range !120, !noundef !80
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.e, label %_ZNSt8optionalI21common_chat_tool_callE5resetEv.exit

bb.e:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !43
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZNSt8optionalI21common_chat_tool_callE5resetEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.q = load i64, ptr %i.p, align 8, !tbaa !43
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.s)
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %.not.i24 = icmp eq ptr %i.v, null
  br i1 %.not.i24, label %_ZNSt14_Function_baseD2Ev.exit25, label %bb.i
end_hunk_1
