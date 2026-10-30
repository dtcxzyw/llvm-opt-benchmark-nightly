Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/test_thread?download=true
inline.NumInlined: 2074
inline.NumDeleted: 892
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag:bb.a

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.i = phi ptr [ %.pre, %._crit_edge ], [ %i.f, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %1, align 1, !tbaa !14
  store i8 %i.j, ptr %i.i, align 1, !tbaa !14
  br label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %1, i64 %i.d, i1 false)
  br label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.k = load i64, ptr %i.a, align 8, !tbaa !71   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !142
  %i.m = load ptr, ptr %0, align 8, !tbaa !141
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4findERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !129
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = tail call ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1) #27 ; 3 uses
  %i.e = icmp eq ptr %i.d, %i.c
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.g = invoke noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.f) #27
          to label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #29
  unreachable

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %bb.b
  %i.j = icmp slt i32 %i.g, 0
  %spec.select = select i1 %i.j, ptr %i.c, ptr %i.d
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, %bb.a
  %.sroa.0.0 = phi ptr [ %i.c, %bb.a ], [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not11 = icmp eq ptr %1, null
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.013 = phi ptr [ %.1, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %1, %bb.a ] ; 3 uses
  %.0812 = phi ptr [ %.19, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %2, %bb.a ]
  %i.a = getelementptr inbounds nuw i8, ptr %.013, i64 32
  %i.b = invoke noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %3) #27
          to label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #29
  unreachable

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %.lr.ph
  %i.e = icmp slt i32 %i.b, 0                     ; 2 uses
  %.19 = select i1 %i.e, ptr %.0812, ptr %.013    ; 2 uses
  %.1.in.v = select i1 %i.e, i64 24, i64 16
  %.1.in = getelementptr inbounds nuw i8, ptr %.013, i64 %.1.in.v
  %.1 = load ptr, ptr %.1.in, align 8, !tbaa !134 ; 2 uses
  %.not = icmp eq ptr %.1, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !344

._crit_edge:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, %bb.a
  %.08.lcssa = phi ptr [ %2, %bb.a ], [ %.19, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  ret ptr %.08.lcssa
}

; Function Attrs: mustprogress optsize uwtable
declare noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2 align 2

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKSG_SM_E_bJST_SM_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSZ_jPNS0_12cleanup_listEE_8__invokeES1D_S1E_jS1G_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRKSG_SM_E_bJST_SM_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSZ_jPNS0_12cleanup_listEE_clES1D_S1E_jS1G_.exit:
  %4 = alloca %"struct.nanobind::detail::tuple.485", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr null, ptr %4, align 8, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %1, align 8, !tbaa !11
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEE, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #25
  %spec.select = select i1 %i.e, ptr @_Py_FalseStruct, ptr inttoptr (i64 1 to ptr)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret ptr %spec.select
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlNS_8handle_tISG_EEE0_NS_5typedINS_8iteratorEJRSD_EEEJST_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPS13_jPNS0_12cleanup_listEE_8__invokeES1H_S1I_jS1K_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.nanobind::typed.492", align 8 ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !11     ; 2 uses
  %i.b = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.c = tail call noundef zeroext i1 @_ZN8nanobind6detail18nb_type_isinstanceEPNS0_12nb_internalsEP7_objectPKSt9type_info(ptr noundef %i.b, ptr noundef %i.a, ptr noundef nonnull @_ZTISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEE) #25
  br i1 %i.c, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlNS_8handle_tISG_EEE0_NS_5typedINS_8iteratorEJRSD_EEEJST_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS13_jPNS0_12cleanup_listEE_clES1H_S1I_jS1K_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13, !noalias !347
  %i.e = tail call noundef ptr @_ZN8nanobind6detail14nb_type_lookupEPNS0_12nb_internalsEPKSt9type_info(ptr noundef %i.d, ptr noundef nonnull @_ZTISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEE) #25, !noalias !347
  call void @_ZN8nanobind6detail20make_cursor_iteratorINS0_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEEEDaNS_6handleEPKcSM_(ptr dead_on_unwind nonnull writable sret(%"class.nanobind::typed.492") align 8 %4, ptr %i.e, ptr noundef nonnull @.str.83, ptr %i.a) #27
  %i.f = load ptr, ptr %4, align 8, !tbaa !23     ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZN8nanobind6detail11type_casterINS_5typedINS_8iteratorEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEiE8from_cppERKSC_NS_9rv_policyEPNS0_12cleanup_listE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.f, align 8, !tbaa !14
  %i.h = add i32 %i.g, 1                          ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN8nanobind6detail11type_casterINS_5typedINS_8iteratorEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEiE8from_cppERKSC_NS_9rv_policyEPNS0_12cleanup_listE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.h, ptr %i.f, align 8, !tbaa !14
  %.sroa.01.0.copyload.pre.i.i = load ptr, ptr %4, align 8
  br label %_ZN8nanobind6detail11type_casterINS_5typedINS_8iteratorEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEiE8from_cppERKSC_NS_9rv_policyEPNS0_12cleanup_listE.exit

_ZN8nanobind6detail11type_casterINS_5typedINS_8iteratorEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEiE8from_cppERKSC_NS_9rv_policyEPNS0_12cleanup_listE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.01.0.copyload.i.i = phi ptr [ null, %bb.b ], [ %i.f, %bb.c ], [ %.sroa.01.0.copyload.pre.i.i, %bb.d ]
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #25 ; 0 uses
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlNS_8handle_tISG_EEE0_NS_5typedINS_8iteratorEJRSD_EEEJST_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS13_jPNS0_12cleanup_listEE_clES1H_S1I_jS1K_.exit

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlNS_8handle_tISG_EEE0_NS_5typedINS_8iteratorEJRSD_EEEJST_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS13_jPNS0_12cleanup_listEE_clES1H_S1I_jS1K_.exit: ; preds = %bb.a, %_ZN8nanobind6detail11type_casterINS_5typedINS_8iteratorEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEiE8from_cppERKSC_NS_9rv_policyEPNS0_12cleanup_listE.exit
  %.0.i = phi ptr [ %.sroa.01.0.copyload.i.i, %_ZN8nanobind6detail11type_casterINS_5typedINS_8iteratorEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEiE8from_cppERKSC_NS_9rv_policyEPNS0_12cleanup_listE.exit ], [ inttoptr (i64 1 to ptr), %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail20make_cursor_iteratorINS0_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEEEDaNS_6handleEPKcSM_(ptr dead_on_unwind noalias writable sret(%"class.nanobind::typed.492") align 8 %0, ptr %1, ptr noundef %2, ptr %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.nanobind::object", align 8  ; 7 uses
  %5 = alloca %"struct.nanobind::detail::cursor_iterator_state", align 8 ; 12 uses
  tail call void @_ZN8nanobind6detail22register_step_iteratorINS0_21cursor_iterator_stateINS0_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISB_lSt4lessISB_ESaISD_EEEELSH_1EEEvNS_6handleEPKc(ptr %1, ptr noundef %2) #27
  %i.a = tail call noundef ptr @_ZN8nanobind6detail11nb_inst_ptrEP7_object(ptr noundef %3) #25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %3, ptr %5, align 8
  %.not.i.i.i = icmp eq ptr %3, null
  br i1 %.not.i.i.i, label %_ZN8nanobind6objectC2ENS_6handleENS_6detail8borrow_tE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %3, align 8, !tbaa !14
  %i.e = add i32 %i.d, 1                          ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN8nanobind6objectC2ENS_6handleENS_6detail8borrow_tE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.e, ptr %3, align 8, !tbaa !14
  br label %_ZN8nanobind6objectC2ENS_6handleENS_6detail8borrow_tE.exit

_ZN8nanobind6objectC2ENS_6handleENS_6detail8borrow_tE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  store i8 0, ptr %i.h, align 8, !tbaa !154
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 %i.c, ptr %i.i, align 8, !tbaa !160
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i8 0, ptr %i.j, align 8, !tbaa !161
  invoke void @_ZN8nanobind4castINS_6detail21cursor_iterator_stateINS1_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISB_lSt4lessISB_ESaISD_EEEEEENS_6objectEOT_SG_(ptr dead_on_unwind nonnull writable sret(%"class.nanobind::object") align 8 %4, ptr noundef nonnull align 8 dereferenceable(57) %5, i8 1) #27
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZN8nanobind6objectC2ENS_6handleENS_6detail8borrow_tE.exit
  %i.k = load ptr, ptr %4, align 8, !tbaa !23
  store ptr null, ptr %4, align 8, !tbaa !23
  store ptr %i.k, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.l, align 8, !tbaa !23
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #25 ; 0 uses
  %i.n = load i8, ptr %i.h, align 8, !tbaa !154, !range !86, !noundef !72
  %i.o = trunc nuw i8 %i.n to i1
  store i8 0, ptr %i.h, align 8, !tbaa !154
  br i1 %i.o, label %bb.e, label %_ZN8nanobind6detail21cursor_iterator_stateINS0_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !141  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZN8nanobind6detail21cursor_iterator_stateINS0_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.s = load i64, ptr %i.q, align 8, !tbaa !14
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #30
  br label %_ZN8nanobind6detail21cursor_iterator_stateINS0_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEED2Ev.exit

_ZN8nanobind6detail21cursor_iterator_stateINS0_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEED2Ev.exit: ; preds = %bb.e, %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.u = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(57) %5) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

bb.f:                                             ; preds = %_ZN8nanobind6objectC2ENS_6handleENS_6detail8borrow_tE.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nanobind6detail21cursor_iterator_stateINS0_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(57) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %i.v
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail22register_step_iteratorINS0_21cursor_iterator_stateINS0_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISB_lSt4lessISB_ESaISD_EEEELSH_1EEEvNS_6handleEPKc(ptr %0, ptr noundef %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %2 = alloca %"struct.nanobind::detail::func_data_init", align 8 ; 10 uses
  %i.b = alloca [1 x ptr], align 8                ; 4 uses
  %3 = alloca %"struct.nanobind::detail::func_data_init", align 8 ; 10 uses
  %4 = alloca %"struct.nanobind::detail::type_data_init", align 8 ; 7 uses
  %5 = alloca %"class.nanobind::class_.495", align 8 ; 4 uses
  %i.c = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.d = tail call noundef ptr @_ZN8nanobind6detail14nb_type_lookupEPNS0_12nb_internalsEPKSt9type_info(ptr noundef %i.c, ptr noundef nonnull @_ZTIN8nanobind6detail21cursor_iterator_stateINS0_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEEE) #25
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %i.e, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr %0, ptr %i.f, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <2 x i32> <i32 259, i32 63>, ptr %4, align 8, !tbaa !21
  store <4 x ptr> <ptr @_ZTIN8nanobind6detail21cursor_iterator_stateINS0_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEEE, ptr @_ZN8nanobind6detail13wrap_destructINS0_21cursor_iterator_stateINS0_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISB_lSt4lessISB_ESaISD_EEEEEEvPv, ptr @_ZN8nanobind6detail9wrap_copyINS0_21cursor_iterator_stateINS0_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISB_lSt4lessISB_ESaISD_EEEEEEvPvPKv, ptr @_ZN8nanobind6detail9wrap_moveINS0_21cursor_iterator_stateINS0_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISB_lSt4lessISB_ESaISD_EEEEEEvPvSO_>, ptr %i.g, align 8, !tbaa !63
  %i.h = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.i = call noundef ptr @_ZN8nanobind6detail11nb_type_newEPNS0_12nb_internalsEPKNS0_14type_data_initE(ptr noundef %i.h, ptr noundef nonnull %4) #25 ; 3 uses
  store ptr %i.i, ptr %5, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store ptr null, ptr %i.b, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_21cursor_iterator_stateINS0_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISC_lSt4lessISC_ESaISE_EEEELSI_1EEEvNS_6handleEPKcEUlSP_E_SP_JSP_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSX_jPNS0_12cleanup_listEE_8__invokeES1B_S1C_jS1E_, ptr %i.k, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_21cursor_iterator_stateINS0_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISC_lSt4lessISC_ESaISE_EEEELSI_1EEEvNS_6handleEPKcEUlSP_E_SP_JSP_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr, ptr %i.l, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %i.b, ptr %i.m, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 60
  store <2 x i16> splat (i16 1), ptr %i.n, align 4, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 80
  store ptr %i.i, ptr %i.o, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr @.str.32, ptr %i.p, align 8, !tbaa !34
  store i32 67, ptr %i.j, align 8, !tbaa !35
  %i.q = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.r = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.q, ptr noundef nonnull %3) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr @_ZTIN8nanobind6detail21cursor_iterator_stateINS0_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEEE, ptr %i.a, align 16, !tbaa !24
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.s, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_21cursor_iterator_stateINS0_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISC_lSt4lessISC_ESaISE_EEEELSI_1EEEvNS_6handleEPKcEUlRSO_E_NS0_9next_stepISO_EEJSS_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodENSH_10policy_tagILSI_1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPS12_jPNS0_12cleanup_listEE_8__invokeES1G_S1H_jS1J_, ptr %i.u, align 8, !tbaa !29
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_21cursor_iterator_stateINS0_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISC_lSt4lessISC_ESaISE_EEEELSI_1EEEvNS_6handleEPKcEUlRSO_E_NS0_9next_stepISO_EEJSS_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodENSH_10policy_tagILSI_1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descrB5cxx11, ptr %i.v, align 8, !tbaa !30
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.a, ptr %i.w, align 8, !tbaa !31
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 60
  store <2 x i16> splat (i16 1), ptr %i.x, align 4, !tbaa !32
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 80
  store ptr %i.i, ptr %i.y, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr @.str.60, ptr %i.z, align 8, !tbaa !34
  store i32 67, ptr %i.t, align 8, !tbaa !35
  %i.aa = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.ab = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.aa, ptr noundef nonnull %2) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ac = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind4castINS_6detail21cursor_iterator_stateINS1_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISB_lSt4lessISB_ESaISD_EEEEEENS_6objectEOT_SG_(ptr dead_on_unwind noalias writable sret(%"class.nanobind::object") align 8 %0, ptr noundef nonnull align 8 dereferenceable(57) %1, i8 %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
_ZN8nanobind6detail12infer_policyINS0_21cursor_iterator_stateINS0_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISB_lSt4lessISB_ESaISD_EEEEEESG_SG_.exit:
  %i.a = icmp ult i8 %2, 7
  %switch.shifted = lshr i8 99, %2
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.a, i1 %switch.lobit, i1 false
  %.sroa.04.0 = select i1 %or.cond, i8 4, i8 %2
  %i.b = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.c = tail call noundef ptr @_ZN8nanobind6detail11nb_type_putEPNS0_12nb_internalsEPKSt9type_infoS5_PvNS_9rv_policyEPNS0_12cleanup_listEPb(ptr noundef %i.b, ptr noundef nonnull @_ZTIN8nanobind6detail21cursor_iterator_stateINS0_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEEE, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(57) %1, i8 %.sroa.04.0, ptr noundef null, ptr noundef null) #25 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN8nanobind6detail12infer_policyINS0_21cursor_iterator_stateINS0_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISB_lSt4lessISB_ESaISD_EEEEEESG_SG_.exit
  tail call void @_ZN8nanobind6detail26raise_python_or_cast_errorEv() #31
  unreachable

bb.b:                                             ; preds = %_ZN8nanobind6detail12infer_policyINS0_21cursor_iterator_stateINS0_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISB_lSt4lessISB_ESaISD_EEEEEESG_SG_.exit
  store ptr %i.c, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail21cursor_iterator_stateINS0_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(57) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !154, !range !86, !noundef !72
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !154
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !141  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !14
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #30
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #25 ; 0 uses
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail9wrap_copyINS0_21cursor_iterator_stateINS0_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISB_lSt4lessISB_ESaISD_EEEEEEvPvPKv(ptr noundef %0, ptr noundef %1) #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 3 uses
  store i64 %i.a, ptr %0, align 8
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.a, 0
  br i1 %.not.i.i.i.i, label %_ZN8nanobind6objectC2ERKS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !14
  %i.d = add i32 %i.c, 1                          ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN8nanobind6objectC2ERKS0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.d, ptr %i.b, align 8, !tbaa !14
  br label %_ZN8nanobind6objectC2ERKS0_.exit.i

_ZN8nanobind6objectC2ERKS0_.exit.i:               ; preds = %bb.c, %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i8 0, ptr %i.g, align 8, !tbaa !154
  %i.h = load i8, ptr %i.f, align 8, !tbaa !154, !range !86, !noundef !72
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i, label %_ZN8nanobind6detail21cursor_iterator_stateINS0_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEEC2ERKSM_.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i: ; preds = %_ZN8nanobind6objectC2ERKS0_.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.l, ptr %i.j, align 8, !tbaa !139
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !141  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !142
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef %i.m, ptr noundef %i.p) #27
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i
  store i8 1, ptr %i.g, align 8, !tbaa !154
  br label %_ZN8nanobind6detail21cursor_iterator_stateINS0_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEEC2ERKSM_.exit

bb.d:                                             ; preds = %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(57) %0) #25 ; 0 uses
  resume { ptr, i32 } %i.q

_ZN8nanobind6detail21cursor_iterator_stateINS0_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEEC2ERKSM_.exit: ; preds = %_ZN8nanobind6objectC2ERKS0_.exit.i, %.noexc.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.s, ptr noundef nonnull align 8 dereferenceable(9) %i.t, i64 9, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail9wrap_moveINS0_21cursor_iterator_stateINS0_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISB_lSt4lessISB_ESaISD_EEEEEEvPvSO_(ptr noundef %0, ptr noundef %1) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  store i64 %i.a, ptr %0, align 8
  store ptr null, ptr %1, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i8, ptr %i.d, align 8, !tbaa !154, !range !86, !noundef !72
  %i.f = trunc nuw i8 %i.e to i1
  tail call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EbOS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i1 noundef zeroext %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.c) #27
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.g, ptr noundef nonnull align 8 dereferenceable(9) %i.h, i64 9, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail13wrap_destructINS0_21cursor_iterator_stateINS0_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISB_lSt4lessISB_ESaISD_EEEEEEvPv(ptr noundef %0) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !154, !range !86, !noundef !72
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !154
  br i1 %i.c, label %bb.b, label %_ZN8nanobind6detail21cursor_iterator_stateINS0_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !141  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN8nanobind6detail21cursor_iterator_stateINS0_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !14
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #30
  br label %_ZN8nanobind6detail21cursor_iterator_stateINS0_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEED2Ev.exit

_ZN8nanobind6detail21cursor_iterator_stateINS0_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEED2Ev.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(57) %0) #25 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EbOS6_(ptr noundef nonnull align 8 dereferenceable(33) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(33) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i8 0, ptr %i.a, align 8, !tbaa !154
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.c = load i8, ptr %i.b, align 8, !tbaa !154, !range !86, !noundef !72
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !139
  %i.f = load ptr, ptr %2, align 8, !tbaa !141    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !142  ; 2 uses
  %i.k = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  store ptr %i.f, ptr %0, align 8, !tbaa !141
  %i.m = load i64, ptr %i.g, align 8, !tbaa !14
  store i64 %i.m, ptr %i.e, align 8, !tbaa !14
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !142
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !142
  store ptr %i.g, ptr %2, align 8, !tbaa !141
  store i64 0, ptr %i.n, align 8, !tbaa !142
  store i8 0, ptr %i.g, align 8, !tbaa !14
  store i8 1, ptr %i.a, align 8, !tbaa !154
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_21cursor_iterator_stateINS0_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISC_lSt4lessISC_ESaISE_EEEELSI_1EEEvNS_6handleEPKcEUlSP_E_SP_JSP_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSX_jPNS0_12cleanup_listEE_8__invokeES1B_S1C_jS1E_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !11     ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_21cursor_iterator_stateINS0_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISC_lSt4lessISC_ESaISE_EEEELSI_1EEEvNS_6handleEPKcEUlSP_E_SP_JSP_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSX_jPNS0_12cleanup_listEE_clES1B_S1C_jS1E_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14
  %i.c = add i32 %i.b, 1                          ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_21cursor_iterator_stateINS0_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISC_lSt4lessISC_ESaISE_EEEELSI_1EEEvNS_6handleEPKcEUlSP_E_SP_JSP_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSX_jPNS0_12cleanup_listEE_clES1B_S1C_jS1E_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.c, ptr %i.a, align 8, !tbaa !14
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_21cursor_iterator_stateINS0_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISC_lSt4lessISC_ESaISE_EEEELSI_1EEEvNS_6handleEPKcEUlSP_E_SP_JSP_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSX_jPNS0_12cleanup_listEE_clES1B_S1C_jS1E_.exit

_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_21cursor_iterator_stateINS0_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISC_lSt4lessISC_ESaISE_EEEELSI_1EEEvNS_6handleEPKcEUlSP_E_SP_JSP_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSX_jPNS0_12cleanup_listEE_clES1B_S1C_jS1E_.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_21cursor_iterator_stateINS0_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISC_lSt4lessISC_ESaISE_EEEELSI_1EEEvNS_6handleEPKcEUlRSO_E_NS0_9next_stepISO_EEJSS_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodENSH_10policy_tagILSI_1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPS12_jPNS0_12cleanup_listEE_8__invokeES1G_S1H_jS1J_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #9 comdat align 2 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.507", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.a = load ptr, ptr %1, align 8, !tbaa !11
  %i.b = and i32 %2, -2
  %i.c = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.d = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.c, ptr noundef nonnull @_ZTIN8nanobind6detail21cursor_iterator_stateINS0_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEEE, ptr noundef %i.a, i32 noundef %i.b, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #25
  br i1 %i.d, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_21cursor_iterator_stateINS0_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISC_lSt4lessISC_ESaISE_EEEELSI_1EEEvNS_6handleEPKcEUlRSO_E_NS0_9next_stepISO_EEJSS_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodENSH_10policy_tagILSI_1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS12_jPNS0_12cleanup_listEE_clES1G_S1H_jS1J_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %4, align 8, !tbaa !350
  %i.f = call ptr @_ZN8nanobind6detail11type_casterINS0_9next_stepINS0_21cursor_iterator_stateINS0_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISC_lSt4lessISC_ESaISE_EEEEEEiE8from_cppESP_SH_PNS0_12cleanup_listE(ptr %i.e, i8 1, ptr noundef %3) #25
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_21cursor_iterator_stateINS0_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISC_lSt4lessISC_ESaISE_EEEELSI_1EEEvNS_6handleEPKcEUlRSO_E_NS0_9next_stepISO_EEJSS_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodENSH_10policy_tagILSI_1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS12_jPNS0_12cleanup_listEE_clES1G_S1H_jS1J_.exit

_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_21cursor_iterator_stateINS0_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISC_lSt4lessISC_ESaISE_EEEELSI_1EEEvNS_6handleEPKcEUlRSO_E_NS0_9next_stepISO_EEJSS_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodENSH_10policy_tagILSI_1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS12_jPNS0_12cleanup_listEE_clES1G_S1H_jS1J_.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.f, %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden ptr @_ZN8nanobind6detail11type_casterINS0_9next_stepINS0_21cursor_iterator_stateINS0_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISC_lSt4lessISC_ESaISE_EEEEEEiE8from_cppESP_SH_PNS0_12cleanup_listE(ptr %0, i8 %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.06.0.copyload = load ptr, ptr %0, align 8
  %i.a = tail call noundef ptr @_ZN8nanobind6detail11nb_inst_ptrEP7_object(ptr noundef %.sroa.06.0.copyload) #25 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !161, !range !86, !noundef !72
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @PyExc_StopIteration, align 8, !tbaa !11
  invoke void @PyErr_SetNone(ptr noundef %i.e) #27
          to label %_ZN8nanobind6detail11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE8from_cppERKS7_NS_9rv_policyEPNS0_12cleanup_listE.exit unwind label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !132
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !160
  %.not = icmp eq i64 %i.g, %i.i
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %i.h, align 8, !tbaa !160
  %i.j = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !11
  invoke void @PyErr_SetString(ptr noundef %i.j, ptr noundef nonnull @.str.84) #27
          to label %_ZN8nanobind6detail11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE8from_cppERKS7_NS_9rv_policyEPNS0_12cleanup_listE.exit unwind label %bb.u

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i8, ptr %i.l, align 8, !tbaa !154, !range !86, !noundef !72
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.o = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4findERS7_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.k) #27
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEE4findERS9_.exit unwind label %bb.h ; 2 uses

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEE4findERS9_.exit: ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEE4findERS9_.exit
  store i64 -1, ptr %i.h, align 8, !tbaa !160
  %i.r = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !11
  invoke void @PyErr_SetString(ptr noundef %i.r, ptr noundef nonnull @.str.85) #27
          to label %_ZN8nanobind6detail11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE8from_cppERKS7_NS_9rv_policyEPNS0_12cleanup_listE.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.m, %bb.l, %bb.g
  %i.s = landingpad { ptr, i32 }
          catch ptr @_ZTIN8nanobind4abi112python_errorE
          catch ptr @_ZTISt9bad_alloc
          catch ptr null                          ; 2 uses
  %.0 = extractvalue { ptr, i32 } %i.s, 1         ; 2 uses
  %.027 = extractvalue { ptr, i32 } %i.s, 0       ; 2 uses
  %i.t = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8nanobind4abi112python_errorE) #26
  %i.u = icmp eq i32 %.0, %i.t
  br i1 %i.u, label %bb.p, label %bb.r

bb.i:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEE4findERS9_.exit
  %i.v = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %i.o) #33
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !130
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.031.0 = phi ptr [ %i.v, %bb.i ], [ %i.x, %bb.j ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.z = icmp eq ptr %.sroa.031.0, %i.y
  br i1 %i.z, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %i.b, align 8, !tbaa !161
  %i.aa = load ptr, ptr @PyExc_StopIteration, align 8, !tbaa !11
  invoke void @PyErr_SetNone(ptr noundef %i.aa) #27
          to label %_ZN8nanobind6detail11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE8from_cppERKS7_NS_9rv_policyEPNS0_12cleanup_listE.exit unwind label %bb.h

bb.m:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.031.0, i64 32 ; 2 uses
  %i.ac = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7emplaceIJRKS5_EEENSt9enable_ifIX18is_constructible_vIS5_DpT_EERS5_E4typeEDpOSB_(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.ab) #27
          to label %bb.n unwind label %bb.h       ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !141
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.031.0, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !142
  %i.ag = invoke ptr @PyUnicode_FromStringAndSize(ptr noundef %i.ad, i64 noundef %i.af) #27
          to label %_ZN8nanobind6detail11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE8from_cppERKS7_NS_9rv_policyEPNS0_12cleanup_listE.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #29
  unreachable

bb.p:                                             ; preds = %bb.h
  %i.aj = tail call ptr @__cxa_begin_catch(ptr %.027) #26
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !55
  tail call void @_ZN8nanobind6detail13error_restoreEP7_object(ptr noundef %i.al) #25
  store ptr null, ptr %i.ak, align 8, !tbaa !55
  br label %.invoke

bb.q:                                             ; preds = %.invoke
  store i64 -1, ptr %i.h, align 8, !tbaa !160
  br label %_ZN8nanobind6detail11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE8from_cppERKS7_NS_9rv_policyEPNS0_12cleanup_listE.exit

bb.r:                                             ; preds = %bb.h
  %i.am = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9bad_alloc) #26
  %i.an = icmp eq i32 %.0, %i.am
  %i.ao = tail call ptr @__cxa_begin_catch(ptr %.027) #26 ; 0 uses
  br i1 %i.an, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ap = invoke ptr @PyErr_NoMemory() #27
          to label %.invoke unwind label %bb.u    ; 0 uses

bb.t:                                             ; preds = %bb.r
  %i.aq = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !11
  invoke void @PyErr_SetString(ptr noundef %i.aq, ptr noundef nonnull @.str.86) #27
          to label %.invoke unwind label %bb.u

.invoke:                                          ; preds = %bb.t, %bb.s, %bb.p
  invoke void @__cxa_end_catch()
          to label %bb.q unwind label %bb.u

_ZN8nanobind6detail11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE8from_cppERKS7_NS_9rv_policyEPNS0_12cleanup_listE.exit: ; preds = %bb.g, %bb.l, %bb.n, %bb.d, %bb.b, %bb.q
  %.sroa.037.1 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.q ], [ null, %bb.l ], [ null, %bb.g ], [ %i.ag, %bb.n ]
  ret ptr %.sroa.037.1

bb.u:                                             ; preds = %.invoke, %bb.t, %bb.s, %bb.d, %bb.b
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  tail call void @__clang_call_terminate(ptr %i.as) #29
  unreachable
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7emplaceIJRKS5_EEENSt9enable_ifIX18is_constructible_vIS5_DpT_EERS5_E4typeEDpOSB_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !154, !range !86, !noundef !72
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !154
  br i1 %i.c, label %bb.b, label %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE8_M_resetEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !141    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE8_M_resetEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !14
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #30
  br label %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE8_M_resetEv.exit

_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE8_M_resetEv.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %0, align 8, !tbaa !139
  %i.j = load ptr, ptr %1, align 8, !tbaa !141    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !142
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %i.j, ptr noundef %i.m) #27
  store i8 1, ptr %i.a, align 8, !tbaa !154
  ret ptr %0
}

; Function Attrs: optsize
declare ptr @PyErr_NoMemory() local_unnamed_addr #5

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4findERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !129
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1) #27 ; 3 uses
  %i.e = icmp eq ptr %i.d, %i.c
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.g = invoke noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.f) #27
          to label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #29
  unreachable

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %bb.b
  %i.j = icmp slt i32 %i.g, 0
  %spec.select = select i1 %i.j, ptr %i.c, ptr %i.d
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, %bb.a
  %.sroa.0.0 = phi ptr [ %i.c, %bb.a ], [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not11 = icmp eq ptr %1, null
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.013 = phi ptr [ %.1, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %1, %bb.a ] ; 3 uses
  %.0812 = phi ptr [ %.19, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %2, %bb.a ]
  %i.a = getelementptr inbounds nuw i8, ptr %.013, i64 32
  %i.b = invoke noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %3) #27
          to label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #29
  unreachable

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %.lr.ph
  %i.e = icmp slt i32 %i.b, 0                     ; 2 uses
  %.19 = select i1 %i.e, ptr %.0812, ptr %.013    ; 2 uses
  %.1.in.v = select i1 %i.e, i64 24, i64 16
  %.1.in = getelementptr inbounds nuw i8, ptr %.013, i64 %.1.in.v
  %.1 = load ptr, ptr %.1.in, align 8, !tbaa !134 ; 2 uses
  %.not = icmp eq ptr %.1, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !351

._crit_edge:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, %bb.a
  %.08.lcssa = phi ptr [ %2, %bb.a ], [ %.19, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  ret ptr %.08.lcssa
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #20

; Function Attrs: optsize
declare ptr @PyUnicode_FromStringAndSize(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRSG_RSD_E_RlJSS_ST_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENSH_10policy_tagILSI_1EEENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPS13_jPNS0_12cleanup_listEE_8__invokeES1H_S1I_jS1K_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.476", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !139
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !142
  store i8 0, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !11
  %i.e = and i32 %2, -2
  %i.f = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.g = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.f, ptr noundef nonnull @_ZTISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEE, ptr noundef %i.d, i32 noundef %i.e, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c) #25
  br i1 %i.g, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRSG_RSD_E_RlJSS_ST_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENSH_10policy_tagILSI_1EEENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS13_jPNS0_12cleanup_listEE_clES1H_S1I_jS1K_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !11
  %i.j = and i32 %2, -35
  %i.k = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr %i.i, i32 noundef %i.j, ptr noundef %3) #25
  br i1 %i.k, label %bb.c, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRSG_RSD_E_RlJSS_ST_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENSH_10policy_tagILSI_1EEENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS13_jPNS0_12cleanup_listEE_clES1H_S1I_jS1K_.exit

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !147  ; 2 uses
  %i.m = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4findERS7_(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %4) #27
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.noexc
  %i.p = call ptr @__cxa_allocate_exception(i64 24) #26 ; 5 uses
  invoke void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(20) %i.p, ptr noundef nonnull @.str.1) #27
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8nanobind4abi117builtin_exceptionE, i64 16), ptr %i.p, align 8, !tbaa !40, !alias.scope !354
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i32 3, ptr %i.q, align 8, !tbaa !108, !alias.scope !354
  invoke void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTIN8nanobind4abi117builtin_exceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %.noexc3 unwind label %bb.i

.noexc3:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.p) #26
  br label %.body

bb.g:                                             ; preds = %.noexc
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.t = load i64, ptr %i.s, align 8, !tbaa !71
  %i.u = invoke ptr @PyLong_FromLong(i64 noundef %i.t) #27
          to label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRSG_RSD_E_RlJSS_ST_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENSH_10policy_tagILSI_1EEENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS13_jPNS0_12cleanup_listEE_clES1H_S1I_jS1K_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #29
  unreachable

bb.i:                                             ; preds = %bb.e, %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.x, %bb.i ], [ %i.r, %bb.f ]
  %i.y = load ptr, ptr %4, align 8, !tbaa !141    ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.a
  br i1 %i.z, label %_ZN8nanobind6detail5tupleIJNS0_11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.body
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !14
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #30
  br label %_ZN8nanobind6detail5tupleIJNS0_11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEEED2Ev.exit

_ZN8nanobind6detail5tupleIJNS0_11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %eh.lpad-body

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRSG_RSD_E_RlJSS_ST_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENSH_10policy_tagILSI_1EEENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS13_jPNS0_12cleanup_listEE_clES1H_S1I_jS1K_.exit: ; preds = %bb.g, %bb.a, %bb.b
  %.013.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.a ], [ inttoptr (i64 1 to ptr), %bb.b ], [ %i.u, %bb.g ]
  %i.ac = load ptr, ptr %4, align 8, !tbaa !141   ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.a
  br i1 %i.ad, label %_ZN8nanobind6detail5tupleIJNS0_11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i4: ; preds = %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRSG_RSD_E_RlJSS_ST_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENSH_10policy_tagILSI_1EEENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS13_jPNS0_12cleanup_listEE_clES1H_S1I_jS1K_.exit
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !14
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #30
  br label %_ZN8nanobind6detail5tupleIJNS0_11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEEED2Ev.exit6

_ZN8nanobind6detail5tupleIJNS0_11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEEED2Ev.exit6: ; preds = %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRSG_RSD_E_RlJSS_ST_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENSH_10policy_tagILSI_1EEENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS13_jPNS0_12cleanup_listEE_clES1H_S1I_jS1K_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i4
end_hunk_0
begin_hunk_1_@_ZNK8nanobind6detail3op_ILNS0_5op_idE26ELNS0_7op_typeE0ENS0_6self_tES4_E7executeINS_6class_ISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessISE_ESaISt4pairIKSE_lEEEJEEEJNS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEvRT_DpRKT0_:_ZN8nanobind6detail11func_createILb0ELb1ERPFbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS8_ESaISt4pairIKS8_lEEESH_EbJSH_SH_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_11is_operatorENS_9rv_policy10policy_tagILNSP_5valueE0EEENS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_.exit
  %i.o = load <2 x ptr>, ptr %4, align 8, !tbaa !64
  store <2 x ptr> %i.o, ptr %i.i, align 8, !tbaa !64
  store ptr null, ptr %i.j, align 8, !tbaa !65
  %i.p = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.q = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.p, ptr noundef nonnull %5) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN8nanobind6detail7op_implILNS0_5op_idE26ELNS0_7op_typeE0ESt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessISA_ESaISt4pairIKSA_lEEESH_SH_E7executeERKSH_SK_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !132
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !132
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZStneINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEEbRKSt3mapIT_T0_T1_T2_ESJ_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !130
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !130
  %i.k = tail call noundef zeroext i1 @_ZNSt7__equalILb0EE5equalISt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESC_EEbT_SD_T0_(ptr %i.g, ptr nonnull %i.h, ptr %i.j) #27
  %i.l = xor i1 %i.k, true
  br label %_ZStneINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEEbRKSt3mapIT_T0_T1_T2_ESJ_.exit

_ZStneINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEEbRKSt3mapIT_T0_T1_T2_ESJ_.exit: ; preds = %bb.a, %bb.b
  %i.m = phi i1 [ true, %bb.a ], [ %i.l, %bb.b ]
  ret i1 %i.m
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail9wrap_copyIZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_E8ItemViewEEvPvPKv(ptr noundef %0, ptr noundef %1) #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 3 uses
  store i64 %i.a, ptr %0, align 8
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.a, 0
  br i1 %.not.i.i.i.i.i, label %_ZZN8nanobind8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS7_ESaISt4pairIKS7_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EN8ItemViewC2ERKSQ_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !14
  %i.d = add i32 %i.c, 1                          ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZZN8nanobind8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS7_ESaISt4pairIKS7_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EN8ItemViewC2ERKSQ_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.d, ptr %i.b, align 8, !tbaa !14
  br label %_ZZN8nanobind8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS7_ESaISt4pairIKS7_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EN8ItemViewC2ERKSQ_.exit

_ZZN8nanobind8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS7_ESaISt4pairIKS7_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EN8ItemViewC2ERKSQ_.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail9wrap_moveIZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_E8ItemViewEEvPvST_(ptr noundef %0, ptr noundef %1) #0 comdat {
bb.a:
  %i.a = load i64, ptr %1, align 8
  store i64 %i.a, ptr %0, align 8
  store ptr null, ptr %1, align 8, !tbaa !23
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail13wrap_destructIZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_E8ItemViewEEvPv(ptr noundef %0) #0 comdat {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #25 ; 0 uses
  ret void
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRZNS2_ISG_LSI_1EJEEESL_SM_SO_SR_E8ItemViewE_mJST_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSZ_jPNS0_12cleanup_listEE_8__invokeES1D_S1E_jS1G_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.579", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.a = load ptr, ptr %1, align 8, !tbaa !11
  %i.b = and i32 %2, -2
  %i.c = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.d = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.c, ptr noundef nonnull @_ZTIZN8nanobind8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS7_ESaISt4pairIKS7_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_E8ItemView, ptr noundef %i.a, i32 noundef %i.b, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #25
  br i1 %i.d, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRZNS2_ISG_LSI_1EJEEESL_SM_SO_SR_E8ItemViewE_mJST_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSZ_jPNS0_12cleanup_listEE_clES1D_S1E_jS1G_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %4, align 8, !tbaa !168
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.e, align 8
  %i.f = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN8nanobind6detail11nb_inst_ptrEP7_object(ptr noundef %.sroa.0.0.copyload.i.i) #25
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !132
  %i.i = invoke ptr @PyLong_FromUnsignedLong(i64 noundef %i.h) #27
          to label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRZNS2_ISG_LSI_1EJEEESL_SM_SO_SR_E8ItemViewE_mJST_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSZ_jPNS0_12cleanup_listEE_clES1D_S1E_jS1G_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #29
  unreachable

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRZNS2_ISG_LSI_1EJEEESL_SM_SO_SR_E8ItemViewE_mJST_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSZ_jPNS0_12cleanup_listEE_clES1D_S1E_jS1G_.exit: ; preds = %bb.b, %bb.a
  %.0.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.a ], [ %i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRZNS2_ISG_LSI_1EJEEESL_SM_SO_SR_E8ItemViewE0_NS_5typedINS_8iteratorEJRSE_EEEJST_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPS13_jPNS0_12cleanup_listEE_8__invokeES1H_S1I_jS1K_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.579", align 8 ; 4 uses
  %5 = alloca %"class.nanobind::typed.588", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.a = load ptr, ptr %1, align 8, !tbaa !11
  %i.b = and i32 %2, -2
  %i.c = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.d = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.c, ptr noundef nonnull @_ZTIZN8nanobind8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS7_ESaISt4pairIKS7_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_E8ItemView, ptr noundef %i.a, i32 noundef %i.b, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #25
  br i1 %i.d, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRZNS2_ISG_LSI_1EJEEESL_SM_SO_SR_E8ItemViewE0_NS_5typedINS_8iteratorEJRSE_EEEJST_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS13_jPNS0_12cleanup_listEE_clES1H_S1I_jS1K_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.e = load ptr, ptr %4, align 8, !tbaa !168
  %i.f = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13, !noalias !366
  %i.g = call noundef ptr @_ZN8nanobind6detail14nb_type_lookupEPNS0_12nb_internalsEPKSt9type_info(ptr noundef %i.f, ptr noundef nonnull @_ZTISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEE) #25, !noalias !366
  %.sroa.0.0.copyload.i = load ptr, ptr %i.e, align 8, !noalias !366
  call void @_ZN8nanobind6detail20make_cursor_iteratorINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEEEDaNS_6handleEPKcSM_(ptr dead_on_unwind nonnull writable sret(%"class.nanobind::typed.588") align 8 %5, ptr %i.g, ptr noundef nonnull @.str.87, ptr %.sroa.0.0.copyload.i) #27
  %i.h = load ptr, ptr %5, align 8, !tbaa !23     ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZN8nanobind6detail11type_casterINS_5typedINS_8iteratorEJRSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEEiE8from_cppERKSE_NS_9rv_policyEPNS0_12cleanup_listE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.h, align 8, !tbaa !14
  %i.j = add i32 %i.i, 1                          ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN8nanobind6detail11type_casterINS_5typedINS_8iteratorEJRSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEEiE8from_cppERKSE_NS_9rv_policyEPNS0_12cleanup_listE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.j, ptr %i.h, align 8, !tbaa !14
  %.sroa.01.0.copyload.pre.i.i = load ptr, ptr %5, align 8
  br label %_ZN8nanobind6detail11type_casterINS_5typedINS_8iteratorEJRSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEEiE8from_cppERKSE_NS_9rv_policyEPNS0_12cleanup_listE.exit

_ZN8nanobind6detail11type_casterINS_5typedINS_8iteratorEJRSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEEiE8from_cppERKSE_NS_9rv_policyEPNS0_12cleanup_listE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.01.0.copyload.i.i = phi ptr [ null, %bb.b ], [ %i.h, %bb.c ], [ %.sroa.01.0.copyload.pre.i.i, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #25 ; 0 uses
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRZNS2_ISG_LSI_1EJEEESL_SM_SO_SR_E8ItemViewE0_NS_5typedINS_8iteratorEJRSE_EEEJST_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS13_jPNS0_12cleanup_listEE_clES1H_S1I_jS1K_.exit

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRZNS2_ISG_LSI_1EJEEESL_SM_SO_SR_E8ItemViewE0_NS_5typedINS_8iteratorEJRSE_EEEJST_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS13_jPNS0_12cleanup_listEE_clES1H_S1I_jS1K_.exit: ; preds = %bb.a, %_ZN8nanobind6detail11type_casterINS_5typedINS_8iteratorEJRSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEEiE8from_cppERKSE_NS_9rv_policyEPNS0_12cleanup_listE.exit
  %.0.i = phi ptr [ %.sroa.01.0.copyload.i.i, %_ZN8nanobind6detail11type_casterINS_5typedINS_8iteratorEJRSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEEiE8from_cppERKSE_NS_9rv_policyEPNS0_12cleanup_listE.exit ], [ inttoptr (i64 1 to ptr), %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret ptr %.0.i
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail20make_cursor_iteratorINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEEEDaNS_6handleEPKcSM_(ptr dead_on_unwind noalias writable sret(%"class.nanobind::typed.588") align 8 %0, ptr %1, ptr noundef %2, ptr %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.nanobind::object", align 8  ; 7 uses
  %5 = alloca %"struct.nanobind::detail::cursor_iterator_state.589", align 8 ; 12 uses
  tail call void @_ZN8nanobind6detail22register_step_iteratorINS0_21cursor_iterator_stateINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISB_lSt4lessISB_ESaISD_EEEELSH_1EEEvNS_6handleEPKc(ptr %1, ptr noundef %2) #27
  %i.a = tail call noundef ptr @_ZN8nanobind6detail11nb_inst_ptrEP7_object(ptr noundef %3) #25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %3, ptr %5, align 8
  %.not.i.i.i = icmp eq ptr %3, null
  br i1 %.not.i.i.i, label %_ZN8nanobind6objectC2ENS_6handleENS_6detail8borrow_tE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %3, align 8, !tbaa !14
  %i.e = add i32 %i.d, 1                          ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN8nanobind6objectC2ENS_6handleENS_6detail8borrow_tE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.e, ptr %3, align 8, !tbaa !14
  br label %_ZN8nanobind6objectC2ENS_6handleENS_6detail8borrow_tE.exit

_ZN8nanobind6objectC2ENS_6handleENS_6detail8borrow_tE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  store i8 0, ptr %i.h, align 8, !tbaa !154
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 %i.c, ptr %i.i, align 8, !tbaa !170
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i8 0, ptr %i.j, align 8, !tbaa !171
  invoke void @_ZN8nanobind4castINS_6detail21cursor_iterator_stateINS1_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISB_lSt4lessISB_ESaISD_EEEEEENS_6objectEOT_SG_(ptr dead_on_unwind nonnull writable sret(%"class.nanobind::object") align 8 %4, ptr noundef nonnull align 8 dereferenceable(57) %5, i8 1) #27
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZN8nanobind6objectC2ENS_6handleENS_6detail8borrow_tE.exit
  %i.k = load ptr, ptr %4, align 8, !tbaa !23
  store ptr null, ptr %4, align 8, !tbaa !23
  store ptr %i.k, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.l, align 8, !tbaa !23
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #25 ; 0 uses
  %i.n = load i8, ptr %i.h, align 8, !tbaa !154, !range !86, !noundef !72
  %i.o = trunc nuw i8 %i.n to i1
  store i8 0, ptr %i.h, align 8, !tbaa !154
  br i1 %i.o, label %bb.e, label %_ZN8nanobind6detail21cursor_iterator_stateINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !141  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZN8nanobind6detail21cursor_iterator_stateINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.s = load i64, ptr %i.q, align 8, !tbaa !14
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #30
  br label %_ZN8nanobind6detail21cursor_iterator_stateINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEED2Ev.exit

_ZN8nanobind6detail21cursor_iterator_stateINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEED2Ev.exit: ; preds = %bb.e, %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.u = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(57) %5) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

bb.f:                                             ; preds = %_ZN8nanobind6objectC2ENS_6handleENS_6detail8borrow_tE.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nanobind6detail21cursor_iterator_stateINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(57) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %i.v
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail22register_step_iteratorINS0_21cursor_iterator_stateINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISB_lSt4lessISB_ESaISD_EEEELSH_1EEEvNS_6handleEPKc(ptr %0, ptr noundef %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %2 = alloca %"struct.nanobind::detail::func_data_init", align 8 ; 10 uses
  %i.b = alloca [1 x ptr], align 8                ; 4 uses
  %3 = alloca %"struct.nanobind::detail::func_data_init", align 8 ; 10 uses
  %4 = alloca %"struct.nanobind::detail::type_data_init", align 8 ; 7 uses
  %5 = alloca %"class.nanobind::class_.591", align 8 ; 4 uses
  %i.c = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.d = tail call noundef ptr @_ZN8nanobind6detail14nb_type_lookupEPNS0_12nb_internalsEPKSt9type_info(ptr noundef %i.c, ptr noundef nonnull @_ZTIN8nanobind6detail21cursor_iterator_stateINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEEE) #25
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %i.e, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr %0, ptr %i.f, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <2 x i32> <i32 259, i32 63>, ptr %4, align 8, !tbaa !21
  store <4 x ptr> <ptr @_ZTIN8nanobind6detail21cursor_iterator_stateINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEEE, ptr @_ZN8nanobind6detail13wrap_destructINS0_21cursor_iterator_stateINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISB_lSt4lessISB_ESaISD_EEEEEEvPv, ptr @_ZN8nanobind6detail9wrap_copyINS0_21cursor_iterator_stateINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISB_lSt4lessISB_ESaISD_EEEEEEvPvPKv, ptr @_ZN8nanobind6detail9wrap_moveINS0_21cursor_iterator_stateINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISB_lSt4lessISB_ESaISD_EEEEEEvPvSO_>, ptr %i.g, align 8, !tbaa !63
  %i.h = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.i = call noundef ptr @_ZN8nanobind6detail11nb_type_newEPNS0_12nb_internalsEPKNS0_14type_data_initE(ptr noundef %i.h, ptr noundef nonnull %4) #25 ; 3 uses
  store ptr %i.i, ptr %5, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store ptr null, ptr %i.b, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_21cursor_iterator_stateINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISC_lSt4lessISC_ESaISE_EEEELSI_1EEEvNS_6handleEPKcEUlSP_E_SP_JSP_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSX_jPNS0_12cleanup_listEE_8__invokeES1B_S1C_jS1E_, ptr %i.k, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_21cursor_iterator_stateINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISC_lSt4lessISC_ESaISE_EEEELSI_1EEEvNS_6handleEPKcEUlSP_E_SP_JSP_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr, ptr %i.l, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %i.b, ptr %i.m, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 60
  store <2 x i16> splat (i16 1), ptr %i.n, align 4, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 80
  store ptr %i.i, ptr %i.o, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr @.str.32, ptr %i.p, align 8, !tbaa !34
  store i32 67, ptr %i.j, align 8, !tbaa !35
  %i.q = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.r = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.q, ptr noundef nonnull %3) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr @_ZTIN8nanobind6detail21cursor_iterator_stateINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEEE, ptr %i.a, align 16, !tbaa !24
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.s, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_21cursor_iterator_stateINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISC_lSt4lessISC_ESaISE_EEEELSI_1EEEvNS_6handleEPKcEUlRSO_E_NS0_9next_stepISO_EEJSS_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodENSH_10policy_tagILSI_1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPS12_jPNS0_12cleanup_listEE_8__invokeES1G_S1H_jS1J_, ptr %i.u, align 8, !tbaa !29
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_21cursor_iterator_stateINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISC_lSt4lessISC_ESaISE_EEEELSI_1EEEvNS_6handleEPKcEUlRSO_E_NS0_9next_stepISO_EEJSS_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodENSH_10policy_tagILSI_1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descrB5cxx11, ptr %i.v, align 8, !tbaa !30
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.a, ptr %i.w, align 8, !tbaa !31
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 60
  store <2 x i16> splat (i16 1), ptr %i.x, align 4, !tbaa !32
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 80
  store ptr %i.i, ptr %i.y, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr @.str.60, ptr %i.z, align 8, !tbaa !34
  store i32 67, ptr %i.t, align 8, !tbaa !35
  %i.aa = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.ab = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.aa, ptr noundef nonnull %2) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ac = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind4castINS_6detail21cursor_iterator_stateINS1_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISB_lSt4lessISB_ESaISD_EEEEEENS_6objectEOT_SG_(ptr dead_on_unwind noalias writable sret(%"class.nanobind::object") align 8 %0, ptr noundef nonnull align 8 dereferenceable(57) %1, i8 %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
_ZN8nanobind6detail12infer_policyINS0_21cursor_iterator_stateINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISB_lSt4lessISB_ESaISD_EEEEEESG_SG_.exit:
  %i.a = icmp ult i8 %2, 7
  %switch.shifted = lshr i8 99, %2
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.a, i1 %switch.lobit, i1 false
  %.sroa.04.0 = select i1 %or.cond, i8 4, i8 %2
  %i.b = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.c = tail call noundef ptr @_ZN8nanobind6detail11nb_type_putEPNS0_12nb_internalsEPKSt9type_infoS5_PvNS_9rv_policyEPNS0_12cleanup_listEPb(ptr noundef %i.b, ptr noundef nonnull @_ZTIN8nanobind6detail21cursor_iterator_stateINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEEE, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(57) %1, i8 %.sroa.04.0, ptr noundef null, ptr noundef null) #25 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN8nanobind6detail12infer_policyINS0_21cursor_iterator_stateINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISB_lSt4lessISB_ESaISD_EEEEEESG_SG_.exit
  tail call void @_ZN8nanobind6detail26raise_python_or_cast_errorEv() #31
  unreachable

bb.b:                                             ; preds = %_ZN8nanobind6detail12infer_policyINS0_21cursor_iterator_stateINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISB_lSt4lessISB_ESaISD_EEEEEESG_SG_.exit
  store ptr %i.c, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail21cursor_iterator_stateINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(57) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !154, !range !86, !noundef !72
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !154
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !141  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !14
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #30
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #25 ; 0 uses
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail9wrap_copyINS0_21cursor_iterator_stateINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISB_lSt4lessISB_ESaISD_EEEEEEvPvPKv(ptr noundef %0, ptr noundef %1) #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 3 uses
  store i64 %i.a, ptr %0, align 8
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.a, 0
  br i1 %.not.i.i.i.i, label %_ZN8nanobind6objectC2ERKS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !14
  %i.d = add i32 %i.c, 1                          ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN8nanobind6objectC2ERKS0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.d, ptr %i.b, align 8, !tbaa !14
  br label %_ZN8nanobind6objectC2ERKS0_.exit.i

_ZN8nanobind6objectC2ERKS0_.exit.i:               ; preds = %bb.c, %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i8 0, ptr %i.g, align 8, !tbaa !154
  %i.h = load i8, ptr %i.f, align 8, !tbaa !154, !range !86, !noundef !72
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i, label %_ZN8nanobind6detail21cursor_iterator_stateINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEEC2ERKSM_.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i: ; preds = %_ZN8nanobind6objectC2ERKS0_.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.l, ptr %i.j, align 8, !tbaa !139
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !141  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !142
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef %i.m, ptr noundef %i.p) #27
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i
  store i8 1, ptr %i.g, align 8, !tbaa !154
  br label %_ZN8nanobind6detail21cursor_iterator_stateINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEEC2ERKSM_.exit

bb.d:                                             ; preds = %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(57) %0) #25 ; 0 uses
  resume { ptr, i32 } %i.q

_ZN8nanobind6detail21cursor_iterator_stateINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEEC2ERKSM_.exit: ; preds = %_ZN8nanobind6objectC2ERKS0_.exit.i, %.noexc.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.s, ptr noundef nonnull align 8 dereferenceable(9) %i.t, i64 9, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail9wrap_moveINS0_21cursor_iterator_stateINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISB_lSt4lessISB_ESaISD_EEEEEEvPvSO_(ptr noundef %0, ptr noundef %1) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  store i64 %i.a, ptr %0, align 8
  store ptr null, ptr %1, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i8, ptr %i.d, align 8, !tbaa !154, !range !86, !noundef !72
  %i.f = trunc nuw i8 %i.e to i1
  tail call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EbOS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i1 noundef zeroext %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.c) #27
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.g, ptr noundef nonnull align 8 dereferenceable(9) %i.h, i64 9, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail13wrap_destructINS0_21cursor_iterator_stateINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISB_lSt4lessISB_ESaISD_EEEEEEvPv(ptr noundef %0) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !154, !range !86, !noundef !72
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !154
  br i1 %i.c, label %bb.b, label %_ZN8nanobind6detail21cursor_iterator_stateINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !141  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN8nanobind6detail21cursor_iterator_stateINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !14
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #30
  br label %_ZN8nanobind6detail21cursor_iterator_stateINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEED2Ev.exit

_ZN8nanobind6detail21cursor_iterator_stateINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEED2Ev.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(57) %0) #25 ; 0 uses
  ret void
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_21cursor_iterator_stateINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISC_lSt4lessISC_ESaISE_EEEELSI_1EEEvNS_6handleEPKcEUlSP_E_SP_JSP_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSX_jPNS0_12cleanup_listEE_8__invokeES1B_S1C_jS1E_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !11     ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_21cursor_iterator_stateINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISC_lSt4lessISC_ESaISE_EEEELSI_1EEEvNS_6handleEPKcEUlSP_E_SP_JSP_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSX_jPNS0_12cleanup_listEE_clES1B_S1C_jS1E_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14
  %i.c = add i32 %i.b, 1                          ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_21cursor_iterator_stateINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISC_lSt4lessISC_ESaISE_EEEELSI_1EEEvNS_6handleEPKcEUlSP_E_SP_JSP_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSX_jPNS0_12cleanup_listEE_clES1B_S1C_jS1E_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.c, ptr %i.a, align 8, !tbaa !14
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_21cursor_iterator_stateINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISC_lSt4lessISC_ESaISE_EEEELSI_1EEEvNS_6handleEPKcEUlSP_E_SP_JSP_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSX_jPNS0_12cleanup_listEE_clES1B_S1C_jS1E_.exit

_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_21cursor_iterator_stateINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISC_lSt4lessISC_ESaISE_EEEELSI_1EEEvNS_6handleEPKcEUlSP_E_SP_JSP_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSX_jPNS0_12cleanup_listEE_clES1B_S1C_jS1E_.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_21cursor_iterator_stateINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISC_lSt4lessISC_ESaISE_EEEELSI_1EEEvNS_6handleEPKcEUlRSO_E_NS0_9next_stepISO_EEJSS_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodENSH_10policy_tagILSI_1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPS12_jPNS0_12cleanup_listEE_8__invokeES1G_S1H_jS1J_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #9 comdat align 2 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.603", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.a = load ptr, ptr %1, align 8, !tbaa !11
  %i.b = and i32 %2, -2
  %i.c = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.d = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.c, ptr noundef nonnull @_ZTIN8nanobind6detail21cursor_iterator_stateINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEEE, ptr noundef %i.a, i32 noundef %i.b, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #25
  br i1 %i.d, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_21cursor_iterator_stateINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISC_lSt4lessISC_ESaISE_EEEELSI_1EEEvNS_6handleEPKcEUlRSO_E_NS0_9next_stepISO_EEJSS_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodENSH_10policy_tagILSI_1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS12_jPNS0_12cleanup_listEE_clES1G_S1H_jS1J_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %4, align 8, !tbaa !369
  %i.f = call ptr @_ZN8nanobind6detail11type_casterINS0_9next_stepINS0_21cursor_iterator_stateINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISC_lSt4lessISC_ESaISE_EEEEEEiE8from_cppESP_SH_PNS0_12cleanup_listE(ptr %i.e, i8 1, ptr noundef %3) #25
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_21cursor_iterator_stateINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISC_lSt4lessISC_ESaISE_EEEELSI_1EEEvNS_6handleEPKcEUlRSO_E_NS0_9next_stepISO_EEJSS_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodENSH_10policy_tagILSI_1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS12_jPNS0_12cleanup_listEE_clES1G_S1H_jS1J_.exit

_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_21cursor_iterator_stateINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISC_lSt4lessISC_ESaISE_EEEELSI_1EEEvNS_6handleEPKcEUlRSO_E_NS0_9next_stepISO_EEJSS_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodENSH_10policy_tagILSI_1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS12_jPNS0_12cleanup_listEE_clES1G_S1H_jS1J_.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.f, %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden ptr @_ZN8nanobind6detail11type_casterINS0_9next_stepINS0_21cursor_iterator_stateINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISC_lSt4lessISC_ESaISE_EEEEEEiE8from_cppESP_SH_PNS0_12cleanup_listE(ptr %0, i8 %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.06.0.copyload = load ptr, ptr %0, align 8
  %i.a = tail call noundef ptr @_ZN8nanobind6detail11nb_inst_ptrEP7_object(ptr noundef %.sroa.06.0.copyload) #25 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !171, !range !86, !noundef !72
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @PyExc_StopIteration, align 8, !tbaa !11
  invoke void @PyErr_SetNone(ptr noundef %i.e) #27
          to label %bb.t unwind label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !132
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !170
  %.not = icmp eq i64 %i.g, %i.i
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %i.h, align 8, !tbaa !170
  %i.j = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !11
  invoke void @PyErr_SetString(ptr noundef %i.j, ptr noundef nonnull @.str.84) #27
          to label %bb.t unwind label %bb.u

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i8, ptr %i.l, align 8, !tbaa !154, !range !86, !noundef !72
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.o = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4findERS7_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.k) #27
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEE4findERS9_.exit unwind label %bb.h ; 2 uses

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEE4findERS9_.exit: ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEE4findERS9_.exit
  store i64 -1, ptr %i.h, align 8, !tbaa !170
  %i.r = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !11
  invoke void @PyErr_SetString(ptr noundef %i.r, ptr noundef nonnull @.str.85) #27
          to label %bb.t unwind label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.m, %bb.l, %bb.g
  %i.s = landingpad { ptr, i32 }
          catch ptr @_ZTIN8nanobind4abi112python_errorE
          catch ptr @_ZTISt9bad_alloc
          catch ptr null                          ; 2 uses
  %.0 = extractvalue { ptr, i32 } %i.s, 1         ; 2 uses
  %.027 = extractvalue { ptr, i32 } %i.s, 0       ; 2 uses
  %i.t = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8nanobind4abi112python_errorE) #26
  %i.u = icmp eq i32 %.0, %i.t
  br i1 %i.u, label %bb.o, label %bb.q

bb.i:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEE4findERS9_.exit
  %i.v = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %i.o) #33
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !130
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.031.0 = phi ptr [ %i.v, %bb.i ], [ %i.x, %bb.j ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.z = icmp eq ptr %.sroa.031.0, %i.y
  br i1 %i.z, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %i.b, align 8, !tbaa !171
  %i.aa = load ptr, ptr @PyExc_StopIteration, align 8, !tbaa !11
  invoke void @PyErr_SetNone(ptr noundef %i.aa) #27
          to label %bb.t unwind label %bb.h

bb.m:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.031.0, i64 32 ; 2 uses
  %i.ac = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7emplaceIJRKS5_EEENSt9enable_ifIX18is_constructible_vIS5_DpT_EERS5_E4typeEDpOSB_(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.ab) #27
          to label %bb.n unwind label %bb.h       ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.ad = tail call ptr @_ZN8nanobind6detail11type_casterISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEiE8from_cppIRSA_EENS_6handleEOT_NS_9rv_policyEPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i8 %1, ptr noundef %2) #25
  br label %bb.t

bb.o:                                             ; preds = %bb.h
  %i.ae = tail call ptr @__cxa_begin_catch(ptr %.027) #26
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !55
  tail call void @_ZN8nanobind6detail13error_restoreEP7_object(ptr noundef %i.ag) #25
  store ptr null, ptr %i.af, align 8, !tbaa !55
  br label %.invoke

bb.p:                                             ; preds = %.invoke
  store i64 -1, ptr %i.h, align 8, !tbaa !170
  br label %bb.t

bb.q:                                             ; preds = %bb.h
  %i.ah = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9bad_alloc) #26
  %i.ai = icmp eq i32 %.0, %i.ah
  %i.aj = tail call ptr @__cxa_begin_catch(ptr %.027) #26 ; 0 uses
  br i1 %i.ai, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ak = invoke ptr @PyErr_NoMemory() #27
          to label %.invoke unwind label %bb.u    ; 0 uses

bb.s:                                             ; preds = %bb.q
  %i.al = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !11
  invoke void @PyErr_SetString(ptr noundef %i.al, ptr noundef nonnull @.str.86) #27
          to label %.invoke unwind label %bb.u

.invoke:                                          ; preds = %bb.s, %bb.r, %bb.o
  invoke void @__cxa_end_catch()
          to label %bb.p unwind label %bb.u

bb.t:                                             ; preds = %bb.n, %bb.g, %bb.l, %bb.d, %bb.b, %bb.p
  %.sroa.037.1 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.p ], [ %i.ad, %bb.n ], [ null, %bb.g ], [ null, %bb.l ]
  ret ptr %.sroa.037.1

bb.u:                                             ; preds = %.invoke, %bb.s, %bb.r, %bb.d, %bb.b
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  tail call void @__clang_call_terminate(ptr %i.an) #29
  unreachable
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden ptr @_ZN8nanobind6detail11type_casterISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEiE8from_cppIRSA_EENS_6handleEOT_NS_9rv_policyEPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
end_hunk_1
begin_hunk_2_@_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRZNS2_ISG_LSI_1EJEEESL_SM_SO_SR_E7KeyViewE0_NS_5typedINS_8iteratorEJRSD_EEEJST_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPS13_jPNS0_12cleanup_listEE_8__invokeES1H_S1I_jS1K_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.e = load ptr, ptr %4, align 8, !tbaa !174
  %i.f = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13, !noalias !372
  %i.g = call noundef ptr @_ZN8nanobind6detail14nb_type_lookupEPNS0_12nb_internalsEPKSt9type_info(ptr noundef %i.f, ptr noundef nonnull @_ZTISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEE) #25, !noalias !372
  %.sroa.0.0.copyload.i = load ptr, ptr %i.e, align 8, !noalias !372
  call void @_ZN8nanobind6detail20make_cursor_iteratorINS0_19iterator_key_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEEEDaNS_6handleEPKcSM_(ptr dead_on_unwind nonnull writable sret(%"class.nanobind::typed.492") align 8 %5, ptr %i.g, ptr noundef nonnull @.str.83, ptr %.sroa.0.0.copyload.i) #27
  %i.h = load ptr, ptr %5, align 8, !tbaa !23     ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZN8nanobind6detail11type_casterINS_5typedINS_8iteratorEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEiE8from_cppERKSC_NS_9rv_policyEPNS0_12cleanup_listE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.h, align 8, !tbaa !14
  %i.j = add i32 %i.i, 1                          ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN8nanobind6detail11type_casterINS_5typedINS_8iteratorEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEiE8from_cppERKSC_NS_9rv_policyEPNS0_12cleanup_listE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.j, ptr %i.h, align 8, !tbaa !14
  %.sroa.01.0.copyload.pre.i.i = load ptr, ptr %5, align 8
  br label %_ZN8nanobind6detail11type_casterINS_5typedINS_8iteratorEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEiE8from_cppERKSC_NS_9rv_policyEPNS0_12cleanup_listE.exit

_ZN8nanobind6detail11type_casterINS_5typedINS_8iteratorEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEiE8from_cppERKSC_NS_9rv_policyEPNS0_12cleanup_listE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.01.0.copyload.i.i = phi ptr [ null, %bb.b ], [ %i.h, %bb.c ], [ %.sroa.01.0.copyload.pre.i.i, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #25 ; 0 uses
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRZNS2_ISG_LSI_1EJEEESL_SM_SO_SR_E7KeyViewE0_NS_5typedINS_8iteratorEJRSD_EEEJST_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS13_jPNS0_12cleanup_listEE_clES1H_S1I_jS1K_.exit

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRZNS2_ISG_LSI_1EJEEESL_SM_SO_SR_E7KeyViewE0_NS_5typedINS_8iteratorEJRSD_EEEJST_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS13_jPNS0_12cleanup_listEE_clES1H_S1I_jS1K_.exit: ; preds = %bb.a, %_ZN8nanobind6detail11type_casterINS_5typedINS_8iteratorEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEiE8from_cppERKSC_NS_9rv_policyEPNS0_12cleanup_listE.exit
  %.0.i = phi ptr [ %.sroa.01.0.copyload.i.i, %_ZN8nanobind6detail11type_casterINS_5typedINS_8iteratorEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEiE8from_cppERKSC_NS_9rv_policyEPNS0_12cleanup_listE.exit ], [ inttoptr (i64 1 to ptr), %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret ptr %.0.i
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail9wrap_copyIZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_E9ValueViewEEvPvPKv(ptr noundef %0, ptr noundef %1) #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 3 uses
  store i64 %i.a, ptr %0, align 8
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.a, 0
  br i1 %.not.i.i.i.i.i, label %_ZZN8nanobind8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS7_ESaISt4pairIKS7_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EN9ValueViewC2ERKSQ_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !14
  %i.d = add i32 %i.c, 1                          ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZZN8nanobind8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS7_ESaISt4pairIKS7_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EN9ValueViewC2ERKSQ_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.d, ptr %i.b, align 8, !tbaa !14
  br label %_ZZN8nanobind8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS7_ESaISt4pairIKS7_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EN9ValueViewC2ERKSQ_.exit

_ZZN8nanobind8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS7_ESaISt4pairIKS7_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EN9ValueViewC2ERKSQ_.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail9wrap_moveIZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_E9ValueViewEEvPvST_(ptr noundef %0, ptr noundef %1) #0 comdat {
bb.a:
  %i.a = load i64, ptr %1, align 8
  store i64 %i.a, ptr %0, align 8
  store ptr null, ptr %1, align 8, !tbaa !23
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail13wrap_destructIZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_E9ValueViewEEvPv(ptr noundef %0) #0 comdat {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #25 ; 0 uses
  ret void
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRZNS2_ISG_LSI_1EJEEESL_SM_SO_SR_E9ValueViewE_mJST_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSZ_jPNS0_12cleanup_listEE_8__invokeES1D_S1E_jS1G_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.638", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.a = load ptr, ptr %1, align 8, !tbaa !11
  %i.b = and i32 %2, -2
  %i.c = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.d = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.c, ptr noundef nonnull @_ZTIZN8nanobind8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS7_ESaISt4pairIKS7_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_E9ValueView, ptr noundef %i.a, i32 noundef %i.b, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #25
  br i1 %i.d, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRZNS2_ISG_LSI_1EJEEESL_SM_SO_SR_E9ValueViewE_mJST_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSZ_jPNS0_12cleanup_listEE_clES1D_S1E_jS1G_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %4, align 8, !tbaa !177
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.e, align 8
  %i.f = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN8nanobind6detail11nb_inst_ptrEP7_object(ptr noundef %.sroa.0.0.copyload.i.i) #25
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !132
  %i.i = invoke ptr @PyLong_FromUnsignedLong(i64 noundef %i.h) #27
          to label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRZNS2_ISG_LSI_1EJEEESL_SM_SO_SR_E9ValueViewE_mJST_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSZ_jPNS0_12cleanup_listEE_clES1D_S1E_jS1G_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #29
  unreachable

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRZNS2_ISG_LSI_1EJEEESL_SM_SO_SR_E9ValueViewE_mJST_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSZ_jPNS0_12cleanup_listEE_clES1D_S1E_jS1G_.exit: ; preds = %bb.b, %bb.a
  %.0.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.a ], [ %i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRZNS2_ISG_LSI_1EJEEESL_SM_SO_SR_E9ValueViewE0_NS_5typedINS_8iteratorEJRlEEEJST_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPS13_jPNS0_12cleanup_listEE_8__invokeES1H_S1I_jS1K_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.638", align 8 ; 4 uses
  %5 = alloca %"class.nanobind::typed", align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.a = load ptr, ptr %1, align 8, !tbaa !11
  %i.b = and i32 %2, -2
  %i.c = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.d = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.c, ptr noundef nonnull @_ZTIZN8nanobind8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS7_ESaISt4pairIKS7_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_E9ValueView, ptr noundef %i.a, i32 noundef %i.b, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #25
  br i1 %i.d, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRZNS2_ISG_LSI_1EJEEESL_SM_SO_SR_E9ValueViewE0_NS_5typedINS_8iteratorEJRlEEEJST_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS13_jPNS0_12cleanup_listEE_clES1H_S1I_jS1K_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.e = load ptr, ptr %4, align 8, !tbaa !177
  %i.f = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13, !noalias !375
  %i.g = call noundef ptr @_ZN8nanobind6detail14nb_type_lookupEPNS0_12nb_internalsEPKSt9type_info(ptr noundef %i.f, ptr noundef nonnull @_ZTISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEE) #25, !noalias !375
  %.sroa.0.0.copyload.i = load ptr, ptr %i.e, align 8, !noalias !375
  call void @_ZN8nanobind6detail20make_cursor_iteratorINS0_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEEEDaNS_6handleEPKcSM_(ptr dead_on_unwind nonnull writable sret(%"class.nanobind::typed") align 8 %5, ptr %i.g, ptr noundef nonnull @.str.88, ptr %.sroa.0.0.copyload.i) #27
  %i.h = load ptr, ptr %5, align 8, !tbaa !23     ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZN8nanobind6detail11type_casterINS_5typedINS_8iteratorEJRlEEEiE8from_cppERKS5_NS_9rv_policyEPNS0_12cleanup_listE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.h, align 8, !tbaa !14
  %i.j = add i32 %i.i, 1                          ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN8nanobind6detail11type_casterINS_5typedINS_8iteratorEJRlEEEiE8from_cppERKS5_NS_9rv_policyEPNS0_12cleanup_listE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.j, ptr %i.h, align 8, !tbaa !14
  %.sroa.01.0.copyload.pre.i.i = load ptr, ptr %5, align 8
  br label %_ZN8nanobind6detail11type_casterINS_5typedINS_8iteratorEJRlEEEiE8from_cppERKS5_NS_9rv_policyEPNS0_12cleanup_listE.exit

_ZN8nanobind6detail11type_casterINS_5typedINS_8iteratorEJRlEEEiE8from_cppERKS5_NS_9rv_policyEPNS0_12cleanup_listE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.01.0.copyload.i.i = phi ptr [ null, %bb.b ], [ %i.h, %bb.c ], [ %.sroa.01.0.copyload.pre.i.i, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #25 ; 0 uses
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRZNS2_ISG_LSI_1EJEEESL_SM_SO_SR_E9ValueViewE0_NS_5typedINS_8iteratorEJRlEEEJST_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS13_jPNS0_12cleanup_listEE_clES1H_S1I_jS1K_.exit

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRZNS2_ISG_LSI_1EJEEESL_SM_SO_SR_E9ValueViewE0_NS_5typedINS_8iteratorEJRlEEEJST_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS13_jPNS0_12cleanup_listEE_clES1H_S1I_jS1K_.exit: ; preds = %bb.a, %_ZN8nanobind6detail11type_casterINS_5typedINS_8iteratorEJRlEEEiE8from_cppERKS5_NS_9rv_policyEPNS0_12cleanup_listE.exit
  %.0.i = phi ptr [ %.sroa.01.0.copyload.i.i, %_ZN8nanobind6detail11type_casterINS_5typedINS_8iteratorEJRlEEEiE8from_cppERKS5_NS_9rv_policyEPNS0_12cleanup_listE.exit ], [ inttoptr (i64 1 to ptr), %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret ptr %.0.i
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail20make_cursor_iteratorINS0_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEEEDaNS_6handleEPKcSM_(ptr dead_on_unwind noalias writable sret(%"class.nanobind::typed") align 8 %0, ptr %1, ptr noundef %2, ptr %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.nanobind::object", align 8  ; 7 uses
  %5 = alloca %"struct.nanobind::detail::cursor_iterator_state.647", align 8 ; 12 uses
  tail call void @_ZN8nanobind6detail22register_step_iteratorINS0_21cursor_iterator_stateINS0_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISB_lSt4lessISB_ESaISD_EEEELSH_1EEEvNS_6handleEPKc(ptr %1, ptr noundef %2) #27
  %i.a = tail call noundef ptr @_ZN8nanobind6detail11nb_inst_ptrEP7_object(ptr noundef %3) #25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %3, ptr %5, align 8
  %.not.i.i.i = icmp eq ptr %3, null
  br i1 %.not.i.i.i, label %_ZN8nanobind6objectC2ENS_6handleENS_6detail8borrow_tE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %3, align 8, !tbaa !14
  %i.e = add i32 %i.d, 1                          ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN8nanobind6objectC2ENS_6handleENS_6detail8borrow_tE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.e, ptr %3, align 8, !tbaa !14
  br label %_ZN8nanobind6objectC2ENS_6handleENS_6detail8borrow_tE.exit

_ZN8nanobind6objectC2ENS_6handleENS_6detail8borrow_tE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  store i8 0, ptr %i.h, align 8, !tbaa !154
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 %i.c, ptr %i.i, align 8, !tbaa !179
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i8 0, ptr %i.j, align 8, !tbaa !180
  invoke void @_ZN8nanobind4castINS_6detail21cursor_iterator_stateINS1_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISB_lSt4lessISB_ESaISD_EEEEEENS_6objectEOT_SG_(ptr dead_on_unwind nonnull writable sret(%"class.nanobind::object") align 8 %4, ptr noundef nonnull align 8 dereferenceable(57) %5, i8 1) #27
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZN8nanobind6objectC2ENS_6handleENS_6detail8borrow_tE.exit
  %i.k = load ptr, ptr %4, align 8, !tbaa !23
  store ptr null, ptr %4, align 8, !tbaa !23
  store ptr %i.k, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.l, align 8, !tbaa !23
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #25 ; 0 uses
  %i.n = load i8, ptr %i.h, align 8, !tbaa !154, !range !86, !noundef !72
  %i.o = trunc nuw i8 %i.n to i1
  store i8 0, ptr %i.h, align 8, !tbaa !154
  br i1 %i.o, label %bb.e, label %_ZN8nanobind6detail21cursor_iterator_stateINS0_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !141  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZN8nanobind6detail21cursor_iterator_stateINS0_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.s = load i64, ptr %i.q, align 8, !tbaa !14
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #30
  br label %_ZN8nanobind6detail21cursor_iterator_stateINS0_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEED2Ev.exit

_ZN8nanobind6detail21cursor_iterator_stateINS0_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEED2Ev.exit: ; preds = %bb.e, %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.u = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(57) %5) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

bb.f:                                             ; preds = %_ZN8nanobind6objectC2ENS_6handleENS_6detail8borrow_tE.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nanobind6detail21cursor_iterator_stateINS0_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(57) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %i.v
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail22register_step_iteratorINS0_21cursor_iterator_stateINS0_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISB_lSt4lessISB_ESaISD_EEEELSH_1EEEvNS_6handleEPKc(ptr %0, ptr noundef %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %2 = alloca %"struct.nanobind::detail::func_data_init", align 8 ; 10 uses
  %i.b = alloca [1 x ptr], align 8                ; 4 uses
  %3 = alloca %"struct.nanobind::detail::func_data_init", align 8 ; 10 uses
  %4 = alloca %"struct.nanobind::detail::type_data_init", align 8 ; 7 uses
  %5 = alloca %"class.nanobind::class_.649", align 8 ; 4 uses
  %i.c = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.d = tail call noundef ptr @_ZN8nanobind6detail14nb_type_lookupEPNS0_12nb_internalsEPKSt9type_info(ptr noundef %i.c, ptr noundef nonnull @_ZTIN8nanobind6detail21cursor_iterator_stateINS0_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEEE) #25
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %i.e, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr %0, ptr %i.f, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <2 x i32> <i32 259, i32 63>, ptr %4, align 8, !tbaa !21
  store <4 x ptr> <ptr @_ZTIN8nanobind6detail21cursor_iterator_stateINS0_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEEE, ptr @_ZN8nanobind6detail13wrap_destructINS0_21cursor_iterator_stateINS0_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISB_lSt4lessISB_ESaISD_EEEEEEvPv, ptr @_ZN8nanobind6detail9wrap_copyINS0_21cursor_iterator_stateINS0_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISB_lSt4lessISB_ESaISD_EEEEEEvPvPKv, ptr @_ZN8nanobind6detail9wrap_moveINS0_21cursor_iterator_stateINS0_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISB_lSt4lessISB_ESaISD_EEEEEEvPvSO_>, ptr %i.g, align 8, !tbaa !63
  %i.h = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.i = call noundef ptr @_ZN8nanobind6detail11nb_type_newEPNS0_12nb_internalsEPKNS0_14type_data_initE(ptr noundef %i.h, ptr noundef nonnull %4) #25 ; 3 uses
  store ptr %i.i, ptr %5, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store ptr null, ptr %i.b, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_21cursor_iterator_stateINS0_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISC_lSt4lessISC_ESaISE_EEEELSI_1EEEvNS_6handleEPKcEUlSP_E_SP_JSP_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSX_jPNS0_12cleanup_listEE_8__invokeES1B_S1C_jS1E_, ptr %i.k, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_21cursor_iterator_stateINS0_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISC_lSt4lessISC_ESaISE_EEEELSI_1EEEvNS_6handleEPKcEUlSP_E_SP_JSP_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr, ptr %i.l, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %i.b, ptr %i.m, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 60
  store <2 x i16> splat (i16 1), ptr %i.n, align 4, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 80
  store ptr %i.i, ptr %i.o, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr @.str.32, ptr %i.p, align 8, !tbaa !34
  store i32 67, ptr %i.j, align 8, !tbaa !35
  %i.q = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.r = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.q, ptr noundef nonnull %3) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr @_ZTIN8nanobind6detail21cursor_iterator_stateINS0_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEEE, ptr %i.a, align 16, !tbaa !24
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.s, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_21cursor_iterator_stateINS0_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISC_lSt4lessISC_ESaISE_EEEELSI_1EEEvNS_6handleEPKcEUlRSO_E_NS0_9next_stepISO_EEJSS_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodENSH_10policy_tagILSI_1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPS12_jPNS0_12cleanup_listEE_8__invokeES1G_S1H_jS1J_, ptr %i.u, align 8, !tbaa !29
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_21cursor_iterator_stateINS0_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISC_lSt4lessISC_ESaISE_EEEELSI_1EEEvNS_6handleEPKcEUlRSO_E_NS0_9next_stepISO_EEJSS_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodENSH_10policy_tagILSI_1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descrB5cxx11, ptr %i.v, align 8, !tbaa !30
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.a, ptr %i.w, align 8, !tbaa !31
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 60
  store <2 x i16> splat (i16 1), ptr %i.x, align 4, !tbaa !32
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 80
  store ptr %i.i, ptr %i.y, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr @.str.60, ptr %i.z, align 8, !tbaa !34
  store i32 67, ptr %i.t, align 8, !tbaa !35
  %i.aa = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.ab = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.aa, ptr noundef nonnull %2) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ac = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind4castINS_6detail21cursor_iterator_stateINS1_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISB_lSt4lessISB_ESaISD_EEEEEENS_6objectEOT_SG_(ptr dead_on_unwind noalias writable sret(%"class.nanobind::object") align 8 %0, ptr noundef nonnull align 8 dereferenceable(57) %1, i8 %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
_ZN8nanobind6detail12infer_policyINS0_21cursor_iterator_stateINS0_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISB_lSt4lessISB_ESaISD_EEEEEESG_SG_.exit:
  %i.a = icmp ult i8 %2, 7
  %switch.shifted = lshr i8 99, %2
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.a, i1 %switch.lobit, i1 false
  %.sroa.04.0 = select i1 %or.cond, i8 4, i8 %2
  %i.b = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.c = tail call noundef ptr @_ZN8nanobind6detail11nb_type_putEPNS0_12nb_internalsEPKSt9type_infoS5_PvNS_9rv_policyEPNS0_12cleanup_listEPb(ptr noundef %i.b, ptr noundef nonnull @_ZTIN8nanobind6detail21cursor_iterator_stateINS0_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEEE, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(57) %1, i8 %.sroa.04.0, ptr noundef null, ptr noundef null) #25 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN8nanobind6detail12infer_policyINS0_21cursor_iterator_stateINS0_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISB_lSt4lessISB_ESaISD_EEEEEESG_SG_.exit
  tail call void @_ZN8nanobind6detail26raise_python_or_cast_errorEv() #31
  unreachable

bb.b:                                             ; preds = %_ZN8nanobind6detail12infer_policyINS0_21cursor_iterator_stateINS0_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISB_lSt4lessISB_ESaISD_EEEEEESG_SG_.exit
  store ptr %i.c, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail21cursor_iterator_stateINS0_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(57) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !154, !range !86, !noundef !72
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !154
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !141  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !14
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #30
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #25 ; 0 uses
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail9wrap_copyINS0_21cursor_iterator_stateINS0_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISB_lSt4lessISB_ESaISD_EEEEEEvPvPKv(ptr noundef %0, ptr noundef %1) #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 3 uses
  store i64 %i.a, ptr %0, align 8
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.a, 0
  br i1 %.not.i.i.i.i, label %_ZN8nanobind6objectC2ERKS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !14
  %i.d = add i32 %i.c, 1                          ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN8nanobind6objectC2ERKS0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.d, ptr %i.b, align 8, !tbaa !14
  br label %_ZN8nanobind6objectC2ERKS0_.exit.i

_ZN8nanobind6objectC2ERKS0_.exit.i:               ; preds = %bb.c, %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i8 0, ptr %i.g, align 8, !tbaa !154
  %i.h = load i8, ptr %i.f, align 8, !tbaa !154, !range !86, !noundef !72
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i, label %_ZN8nanobind6detail21cursor_iterator_stateINS0_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEEC2ERKSM_.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i: ; preds = %_ZN8nanobind6objectC2ERKS0_.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.l, ptr %i.j, align 8, !tbaa !139
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !141  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !142
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef %i.m, ptr noundef %i.p) #27
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i
  store i8 1, ptr %i.g, align 8, !tbaa !154
  br label %_ZN8nanobind6detail21cursor_iterator_stateINS0_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEEC2ERKSM_.exit

bb.d:                                             ; preds = %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(57) %0) #25 ; 0 uses
  resume { ptr, i32 } %i.q

_ZN8nanobind6detail21cursor_iterator_stateINS0_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEEC2ERKSM_.exit: ; preds = %_ZN8nanobind6objectC2ERKS0_.exit.i, %.noexc.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.s, ptr noundef nonnull align 8 dereferenceable(9) %i.t, i64 9, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail9wrap_moveINS0_21cursor_iterator_stateINS0_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISB_lSt4lessISB_ESaISD_EEEEEEvPvSO_(ptr noundef %0, ptr noundef %1) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  store i64 %i.a, ptr %0, align 8
  store ptr null, ptr %1, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i8, ptr %i.d, align 8, !tbaa !154, !range !86, !noundef !72
  %i.f = trunc nuw i8 %i.e to i1
  tail call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EbOS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i1 noundef zeroext %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.c) #27
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.g, ptr noundef nonnull align 8 dereferenceable(9) %i.h, i64 9, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail13wrap_destructINS0_21cursor_iterator_stateINS0_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISB_lSt4lessISB_ESaISD_EEEEEEvPv(ptr noundef %0) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !154, !range !86, !noundef !72
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !154
  br i1 %i.c, label %bb.b, label %_ZN8nanobind6detail21cursor_iterator_stateINS0_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !141  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN8nanobind6detail21cursor_iterator_stateINS0_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !14
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #30
  br label %_ZN8nanobind6detail21cursor_iterator_stateINS0_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEED2Ev.exit

_ZN8nanobind6detail21cursor_iterator_stateINS0_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEED2Ev.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(57) %0) #25 ; 0 uses
  ret void
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_21cursor_iterator_stateINS0_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISC_lSt4lessISC_ESaISE_EEEELSI_1EEEvNS_6handleEPKcEUlSP_E_SP_JSP_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSX_jPNS0_12cleanup_listEE_8__invokeES1B_S1C_jS1E_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !11     ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_21cursor_iterator_stateINS0_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISC_lSt4lessISC_ESaISE_EEEELSI_1EEEvNS_6handleEPKcEUlSP_E_SP_JSP_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSX_jPNS0_12cleanup_listEE_clES1B_S1C_jS1E_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14
  %i.c = add i32 %i.b, 1                          ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_21cursor_iterator_stateINS0_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISC_lSt4lessISC_ESaISE_EEEELSI_1EEEvNS_6handleEPKcEUlSP_E_SP_JSP_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSX_jPNS0_12cleanup_listEE_clES1B_S1C_jS1E_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.c, ptr %i.a, align 8, !tbaa !14
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_21cursor_iterator_stateINS0_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISC_lSt4lessISC_ESaISE_EEEELSI_1EEEvNS_6handleEPKcEUlSP_E_SP_JSP_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSX_jPNS0_12cleanup_listEE_clES1B_S1C_jS1E_.exit

_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_21cursor_iterator_stateINS0_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISC_lSt4lessISC_ESaISE_EEEELSI_1EEEvNS_6handleEPKcEUlSP_E_SP_JSP_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSX_jPNS0_12cleanup_listEE_clES1B_S1C_jS1E_.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_21cursor_iterator_stateINS0_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISC_lSt4lessISC_ESaISE_EEEELSI_1EEEvNS_6handleEPKcEUlRSO_E_NS0_9next_stepISO_EEJSS_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodENSH_10policy_tagILSI_1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPS12_jPNS0_12cleanup_listEE_8__invokeES1G_S1H_jS1J_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #9 comdat align 2 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.661", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.a = load ptr, ptr %1, align 8, !tbaa !11
  %i.b = and i32 %2, -2
  %i.c = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.d = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.c, ptr noundef nonnull @_ZTIN8nanobind6detail21cursor_iterator_stateINS0_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEEE, ptr noundef %i.a, i32 noundef %i.b, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #25
  br i1 %i.d, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_21cursor_iterator_stateINS0_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISC_lSt4lessISC_ESaISE_EEEELSI_1EEEvNS_6handleEPKcEUlRSO_E_NS0_9next_stepISO_EEJSS_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodENSH_10policy_tagILSI_1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS12_jPNS0_12cleanup_listEE_clES1G_S1H_jS1J_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %4, align 8, !tbaa !378
  %i.f = call ptr @_ZN8nanobind6detail11type_casterINS0_9next_stepINS0_21cursor_iterator_stateINS0_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISC_lSt4lessISC_ESaISE_EEEEEEiE8from_cppESP_SH_PNS0_12cleanup_listE(ptr %i.e, i8 1, ptr noundef %3) #25
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_21cursor_iterator_stateINS0_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISC_lSt4lessISC_ESaISE_EEEELSI_1EEEvNS_6handleEPKcEUlRSO_E_NS0_9next_stepISO_EEJSS_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodENSH_10policy_tagILSI_1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS12_jPNS0_12cleanup_listEE_clES1G_S1H_jS1J_.exit

_ZZN8nanobind6detail11func_createILb0ELb1EZNS0_22register_step_iteratorINS0_21cursor_iterator_stateINS0_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISC_lSt4lessISC_ESaISE_EEEELSI_1EEEvNS_6handleEPKcEUlRSO_E_NS0_9next_stepISO_EEJSS_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodENSH_10policy_tagILSI_1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS12_jPNS0_12cleanup_listEE_clES1G_S1H_jS1J_.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.f, %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden ptr @_ZN8nanobind6detail11type_casterINS0_9next_stepINS0_21cursor_iterator_stateINS0_21iterator_value_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISC_lSt4lessISC_ESaISE_EEEEEEiE8from_cppESP_SH_PNS0_12cleanup_listE(ptr %0, i8 %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.06.0.copyload = load ptr, ptr %0, align 8
  %i.a = tail call noundef ptr @_ZN8nanobind6detail11nb_inst_ptrEP7_object(ptr noundef %.sroa.06.0.copyload) #25 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !180, !range !86, !noundef !72
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @PyExc_StopIteration, align 8, !tbaa !11
  invoke void @PyErr_SetNone(ptr noundef %i.e) #27
          to label %_ZN8nanobind6detail11type_casterIliE8from_cppElNS_9rv_policyEPNS0_12cleanup_listE.exit unwind label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !132
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !179
  %.not = icmp eq i64 %i.g, %i.i
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %i.h, align 8, !tbaa !179
  %i.j = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !11
  invoke void @PyErr_SetString(ptr noundef %i.j, ptr noundef nonnull @.str.84) #27
          to label %_ZN8nanobind6detail11type_casterIliE8from_cppElNS_9rv_policyEPNS0_12cleanup_listE.exit unwind label %bb.u

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i8, ptr %i.l, align 8, !tbaa !154, !range !86, !noundef !72
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.o = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4findERS7_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.k) #27
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEE4findERS9_.exit unwind label %bb.h ; 2 uses

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEE4findERS9_.exit: ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEE4findERS9_.exit
  store i64 -1, ptr %i.h, align 8, !tbaa !179
  %i.r = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !11
  invoke void @PyErr_SetString(ptr noundef %i.r, ptr noundef nonnull @.str.85) #27
          to label %_ZN8nanobind6detail11type_casterIliE8from_cppElNS_9rv_policyEPNS0_12cleanup_listE.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.m, %bb.l, %bb.g
  %i.s = landingpad { ptr, i32 }
          catch ptr @_ZTIN8nanobind4abi112python_errorE
          catch ptr @_ZTISt9bad_alloc
          catch ptr null                          ; 2 uses
  %.0 = extractvalue { ptr, i32 } %i.s, 1         ; 2 uses
  %.027 = extractvalue { ptr, i32 } %i.s, 0       ; 2 uses
  %i.t = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8nanobind4abi112python_errorE) #26
  %i.u = icmp eq i32 %.0, %i.t
  br i1 %i.u, label %bb.p, label %bb.r

bb.i:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEE4findERS9_.exit
  %i.v = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %i.o) #33
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !130
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.031.0 = phi ptr [ %i.v, %bb.i ], [ %i.x, %bb.j ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.z = icmp eq ptr %.sroa.031.0, %i.y
  br i1 %i.z, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %i.b, align 8, !tbaa !180
  %i.aa = load ptr, ptr @PyExc_StopIteration, align 8, !tbaa !11
  invoke void @PyErr_SetNone(ptr noundef %i.aa) #27
          to label %_ZN8nanobind6detail11type_casterIliE8from_cppElNS_9rv_policyEPNS0_12cleanup_listE.exit unwind label %bb.h

bb.m:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.031.0, i64 32
  %i.ac = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7emplaceIJRKS5_EEENSt9enable_ifIX18is_constructible_vIS5_DpT_EERS5_E4typeEDpOSB_(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.ab) #27
          to label %bb.n unwind label %bb.h       ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.031.0, i64 64
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !71
  %i.af = invoke ptr @PyLong_FromLong(i64 noundef %i.ae) #27
          to label %_ZN8nanobind6detail11type_casterIliE8from_cppElNS_9rv_policyEPNS0_12cleanup_listE.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #29
  unreachable

bb.p:                                             ; preds = %bb.h
  %i.ai = tail call ptr @__cxa_begin_catch(ptr %.027) #26
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !55
  tail call void @_ZN8nanobind6detail13error_restoreEP7_object(ptr noundef %i.ak) #25
  store ptr null, ptr %i.aj, align 8, !tbaa !55
  br label %.invoke

bb.q:                                             ; preds = %.invoke
  store i64 -1, ptr %i.h, align 8, !tbaa !179
  br label %_ZN8nanobind6detail11type_casterIliE8from_cppElNS_9rv_policyEPNS0_12cleanup_listE.exit

bb.r:                                             ; preds = %bb.h
  %i.al = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9bad_alloc) #26
  %i.am = icmp eq i32 %.0, %i.al
  %i.an = tail call ptr @__cxa_begin_catch(ptr %.027) #26 ; 0 uses
  br i1 %i.am, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ao = invoke ptr @PyErr_NoMemory() #27
          to label %.invoke unwind label %bb.u    ; 0 uses

bb.t:                                             ; preds = %bb.r
  %i.ap = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !11
  invoke void @PyErr_SetString(ptr noundef %i.ap, ptr noundef nonnull @.str.86) #27
          to label %.invoke unwind label %bb.u

.invoke:                                          ; preds = %bb.t, %bb.s, %bb.p
  invoke void @__cxa_end_catch()
          to label %bb.q unwind label %bb.u

_ZN8nanobind6detail11type_casterIliE8from_cppElNS_9rv_policyEPNS0_12cleanup_listE.exit: ; preds = %bb.g, %bb.l, %bb.n, %bb.d, %bb.b, %bb.q
  %.sroa.037.1 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.q ], [ null, %bb.l ], [ null, %bb.g ], [ %i.af, %bb.n ]
  ret ptr %.sroa.037.1

bb.u:                                             ; preds = %.invoke, %bb.t, %bb.s, %bb.d, %bb.b
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  tail call void @__clang_call_terminate(ptr %i.ar) #29
end_hunk_2
