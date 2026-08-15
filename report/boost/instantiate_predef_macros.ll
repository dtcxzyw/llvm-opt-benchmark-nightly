inline.NumInlined: 2021
inline.NumDeleted: 1082
begin_hunk_0_@_ZNK5boost6spirit7classic8optionalINS1_10differenceINS1_11list_parserINS1_11alternativeINS5_INS5_INS5_INS1_5chlitINS_4wave8token_idEEENS7_4util11pattern_andINS7_14token_categoryEEEEENSB_IjEEEESD_EES9_EENS1_23no_tree_gen_node_parserINS1_8sequenceINSK_INS1_11kleene_starIS9_EES9_EESM_EEEENS1_16no_list_endtokenENS1_22binary_parser_categoryEEENSJ_ISN_EEEEE5parseINS1_7scannerINS7_8cpplexer12lex_iteratorINSY_9lex_tokenINSA_13file_positionINSA_11flex_stringIcSt11char_traitsIcESaIcENSA_9CowStringINSA_22AllocatorStringStorageIcS15_EEPcEEEEEEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_15pt_match_policyIS1E_NS1_21node_val_data_factoryINS1_5nil_tEEES1J_EENS1_13action_policyEEEEEEENS1_13parser_resultISV_T_E4typeERKS1Q_:bb.a
bb.d:                                             ; preds = %bb.c
  store i64 %i.g, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load <2 x ptr>, ptr %i.i, align 8, !tbaa !215
  store <2 x ptr> %i.k, ptr %i.h, align 8, !tbaa !215
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !51
  store ptr %i.m, ptr %i.j, align 8, !tbaa !51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  br label %bb.k

bb.e:                                             ; preds = %_ZN5boost4wave8cpplexer12lex_iteratorINS1_9lex_tokenINS0_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEEEC2ERKSI_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.f:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.ac, %bb.j ]
  call void @_ZN5boost6spirit7classic10tree_matchINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESN_ED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #26
  br label %bb.p

bb.g:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %2, align 8, !tbaa !28, !nonnull !116, !align !207
  %i.q = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5boost6spirit10multi_passISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS4_9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEEPNS4_19lex_input_interfaceISL_EEENS0_17iterator_policies14default_policyINSR_11ref_countedENSR_8no_checkENSR_19split_functor_inputENSR_15split_std_dequeEEEEaSERKSY_(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN5boost4wave8cpplexer12lex_iteratorINS1_9lex_tokenINS0_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEEEaSERKSI_.exit unwind label %bb.f ; 0 uses

_ZN5boost4wave8cpplexer12lex_iteratorINS1_9lex_tokenINS0_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEEEaSERKSI_.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !449
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr null, ptr %i.r, align 8, !tbaa !19, !alias.scope !452, !noalias !449
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %3, i8 0, i64 25, i1 false), !alias.scope !452, !noalias !449
  invoke void @_ZN5boost6spirit7classic10tree_matchINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESN_EC2EmRKNS1_13node_val_dataISL_SN_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(41) %3)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %_ZN5boost4wave8cpplexer12lex_iteratorINS1_9lex_tokenINS0_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEEEaSERKSI_.exit
  %i.s = load ptr, ptr %3, align 8, !tbaa !61, !noalias !449 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !64, !noalias !449 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.s, %i.u
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i ], [ %i.s, %bb.h ] ; 2 uses
  call void @_ZN5boost4wave8cpplexer9lex_tokenINS0_4util13file_positionINS3_11flex_stringIcSt11char_traitsIcESaIcENS3_9CowStringINS3_22AllocatorStringStorageIcS8_EEPcEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i) #26
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.v, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !65

_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %3, align 8, !tbaa !61, !noalias !449
  br label %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.h
  %i.w = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.s, %bb.h ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i.i.i, label %_ZN5boost6spirit7classic24common_tree_match_policyINS1_15pt_match_policyINS_4wave8cpplexer12lex_iteratorINS5_9lex_tokenINS4_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESO_EESM_SP_NS1_14pt_tree_policyISQ_SP_SO_EESO_E11empty_matchEv.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !67, !noalias !449
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #30
  br label %_ZN5boost6spirit7classic24common_tree_match_policyINS1_15pt_match_policyINS_4wave8cpplexer12lex_iteratorINS5_9lex_tokenINS4_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESO_EESM_SP_NS1_14pt_tree_policyISQ_SP_SO_EESO_E11empty_matchEv.exit

bb.j:                                             ; preds = %_ZN5boost4wave8cpplexer12lex_iteratorINS1_9lex_tokenINS0_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEEEaSERKSI_.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost6spirit7classic13node_val_dataINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_5nil_tEED2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !449
  br label %.body

_ZN5boost6spirit7classic24common_tree_match_policyINS1_15pt_match_policyINS_4wave8cpplexer12lex_iteratorINS5_9lex_tokenINS4_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESO_EESM_SP_NS1_14pt_tree_policyISQ_SP_SO_EESO_E11empty_matchEv.exit: ; preds = %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !449
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !39
  %.phi.trans.insert8 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.pre9 = load ptr, ptr %.phi.trans.insert8, align 8, !tbaa !36
  br label %bb.k

bb.k:                                             ; preds = %_ZN5boost6spirit7classic24common_tree_match_policyINS1_15pt_match_policyINS_4wave8cpplexer12lex_iteratorINS5_9lex_tokenINS4_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESO_EESM_SP_NS1_14pt_tree_policyISQ_SP_SO_EESO_E11empty_matchEv.exit, %bb.d
  %i.ad = phi ptr [ %.pre9, %_ZN5boost6spirit7classic24common_tree_match_policyINS1_15pt_match_policyINS_4wave8cpplexer12lex_iteratorINS5_9lex_tokenINS4_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESO_EESM_SP_NS1_14pt_tree_policyISQ_SP_SO_EESO_E11empty_matchEv.exit ], [ null, %bb.d ]
  %i.ae = phi ptr [ %.pre, %_ZN5boost6spirit7classic24common_tree_match_policyINS1_15pt_match_policyINS_4wave8cpplexer12lex_iteratorINS5_9lex_tokenINS4_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESO_EESM_SP_NS1_14pt_tree_policyISQ_SP_SO_EESO_E11empty_matchEv.exit ], [ null, %bb.d ]
  invoke void @_ZSt8_DestroyIPN5boost6spirit7classic9tree_nodeINS2_13node_val_dataINS0_4wave8cpplexer12lex_iteratorINS6_9lex_tokenINS5_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEENS2_5nil_tEEEEEEvT_SS_(ptr noundef %i.ae, ptr noundef %i.ad)
          to label %_ZSt8_DestroyIPN5boost6spirit7classic9tree_nodeINS2_13node_val_dataINS0_4wave8cpplexer12lex_iteratorINS6_9lex_tokenINS5_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEENS2_5nil_tEEEEESQ_EvT_SS_RSaIT0_E.exit.i.i unwind label %bb.m, !inline_history !52

_ZSt8_DestroyIPN5boost6spirit7classic9tree_nodeINS2_13node_val_dataINS0_4wave8cpplexer12lex_iteratorINS6_9lex_tokenINS5_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEENS2_5nil_tEEEEESQ_EvT_SS_RSaIT0_E.exit.i.i: ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !39 ; 3 uses
  %.not.i.i.i.i7 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i7, label %_ZN5boost6spirit7classic10tree_matchINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESN_ED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPN5boost6spirit7classic9tree_nodeINS2_13node_val_dataINS0_4wave8cpplexer12lex_iteratorINS6_9lex_tokenINS5_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEENS2_5nil_tEEEEESQ_EvT_SS_RSaIT0_E.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !51
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #30, !inline_history !52
  br label %_ZN5boost6spirit7classic10tree_matchINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESN_ED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #28, !inline_history !52
  unreachable

_ZN5boost6spirit7classic10tree_matchINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESN_ED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5boost6spirit7classic9tree_nodeINS2_13node_val_dataINS0_4wave8cpplexer12lex_iteratorINS6_9lex_tokenINS5_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEENS2_5nil_tEEEEESQ_EvT_SS_RSaIT0_E.exit.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.ao = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i, label %_ZN5boost6spirit10multi_passISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS4_9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEEPNS4_19lex_input_interfaceISL_EEENS0_17iterator_policies14default_policyINSR_11ref_countedENSR_8no_checkENSR_19split_functor_inputENSR_15split_std_dequeEEEED2Ev.exit, label %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7releaseINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEbRT_.exit.i

_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7releaseINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEbRT_.exit.i: ; preds = %_ZN5boost6spirit7classic10tree_matchINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESN_ED2Ev.exit
  %i.ap = atomicrmw sub ptr %i.ao, i32 1 acq_rel, align 4
  %i.aq = icmp eq i32 %i.ap, 1
  br i1 %i.aq, label %bb.n, label %_ZN5boost6spirit10multi_passISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS4_9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEEPNS4_19lex_input_interfaceISL_EEENS0_17iterator_policies14default_policyINSR_11ref_countedENSR_8no_checkENSR_19split_functor_inputENSR_15split_std_dequeEEEED2Ev.exit

bb.n:                                             ; preds = %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7releaseINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEbRT_.exit.i
  %i.ar = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !53 ; 3 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.thread.i, label %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.i

_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.i: ; preds = %bb.n
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !58
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.at) #26, !inline_history !60
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !21   ; 2 uses
  %i.ay = icmp eq ptr %.pr.i, null
  br i1 %i.ay, label %_ZN5boost6spirit10multi_passISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS4_9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEEPNS4_19lex_input_interfaceISL_EEENS0_17iterator_policies14default_policyINSR_11ref_countedENSR_8no_checkENSR_19split_functor_inputENSR_15split_std_dequeEEEED2Ev.exit, label %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.thread.i

_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.thread.i: ; preds = %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.i, %bb.n
  %i.az = phi ptr [ %.pr.i, %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.i ], [ %i.ar, %bb.n ] ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !61 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !64 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.bb, %i.bd
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.thread.i, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i ], [ %i.bb, %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.thread.i ] ; 2 uses
  call void @_ZN5boost4wave8cpplexer9lex_tokenINS0_4util13file_positionINS3_11flex_stringIcSt11char_traitsIcESaIcENS3_9CowStringINS3_22AllocatorStringStorageIcS8_EEPcEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i) #26
  %i.be = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.be, %i.bd
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !65

_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.ba, align 8, !tbaa !61
  br label %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i.i, %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.thread.i
  %i.bf = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.bb, %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.thread.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN5boost6spirit17iterator_policies17multi_pass_sharedISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6sharedENS1_8no_check6sharedENS1_19split_functor_input6sharedISR_EENS1_15split_std_deque6sharedISM_EEED2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !67
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bf to i64
  %i.bk = sub i64 %i.bi, %i.bj
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bk) #30
  br label %_ZN5boost6spirit17iterator_policies17multi_pass_sharedISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6sharedENS1_8no_check6sharedENS1_19split_functor_input6sharedISR_EENS1_15split_std_deque6sharedISM_EEED2Ev.exit.i

_ZN5boost6spirit17iterator_policies17multi_pass_sharedISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6sharedENS1_8no_check6sharedENS1_19split_functor_input6sharedISR_EENS1_15split_std_deque6sharedISM_EEED2Ev.exit.i: ; preds = %bb.o, %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  call void @_ZN5boost4wave8cpplexer9lex_tokenINS0_4util13file_positionINS3_11flex_stringIcSt11char_traitsIcESaIcENS3_9CowStringINS3_22AllocatorStringStorageIcS8_EEPcEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bl) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef 56) #30
  br label %_ZN5boost6spirit10multi_passISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS4_9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEEPNS4_19lex_input_interfaceISL_EEENS0_17iterator_policies14default_policyINSR_11ref_countedENSR_8no_checkENSR_19split_functor_inputENSR_15split_std_dequeEEEED2Ev.exit

_ZN5boost6spirit10multi_passISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS4_9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEEPNS4_19lex_input_interfaceISL_EEENS0_17iterator_policies14default_policyINSR_11ref_countedENSR_8no_checkENSR_19split_functor_inputENSR_15split_std_dequeEEEED2Ev.exit: ; preds = %_ZN5boost6spirit7classic10tree_matchINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESN_ED2Ev.exit, %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7releaseINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEbRT_.exit.i, %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.i, %_ZN5boost6spirit17iterator_policies17multi_pass_sharedISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6sharedENS1_8no_check6sharedENS1_19split_functor_input6sharedISR_EENS1_15split_std_deque6sharedISM_EEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

bb.p:                                             ; preds = %.body, %bb.e
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.n, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZN5boost6spirit10multi_passISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS4_9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEEPNS4_19lex_input_interfaceISL_EEENS0_17iterator_policies14default_policyINSR_11ref_countedENSR_8no_checkENSR_19split_functor_inputENSR_15split_std_dequeEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost6spirit7classic10differenceINS1_11list_parserINS1_11alternativeINS4_INS4_INS4_INS1_5chlitINS_4wave8token_idEEENS6_4util11pattern_andINS6_14token_categoryEEEEENSA_IjEEEESC_EES8_EENS1_23no_tree_gen_node_parserINS1_8sequenceINSJ_INS1_11kleene_starIS8_EES8_EESL_EEEENS1_16no_list_endtokenENS1_22binary_parser_categoryEEENSI_ISM_EEE5parseINS1_7scannerINS6_8cpplexer12lex_iteratorINSW_9lex_tokenINS9_13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcS13_EEPcEEEEEEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_15pt_match_policyIS1C_NS1_21node_val_data_factoryINS1_5nil_tEEES1H_EENS1_13action_policyEEEEEEENS1_13parser_resultIST_T_E4typeERKS1O_(ptr dead_on_unwind noalias writable sret(%"class.boost::spirit::classic::tree_match") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::spirit::classic::sequence.203", align 8 ; 7 uses
  %.sroa.012.i.i.i = alloca %"class.boost::compressed_pair.213", align 8 ; 5 uses
  %4 = alloca %"class.boost::wave::cpplexer::lex_iterator", align 8 ; 11 uses
  %5 = alloca %"class.boost::spirit::classic::tree_match", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.a = load ptr, ptr %2, align 8, !tbaa !28, !nonnull !116, !align !207 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 3 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !24
  store i64 %i.e, ptr %i.c, align 8, !tbaa !24
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5boost4wave8cpplexer12lex_iteratorINS1_9lex_tokenINS0_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEEEC2ERKSI_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = atomicrmw add ptr %i.b, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost4wave8cpplexer12lex_iteratorINS1_9lex_tokenINS0_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEEEC2ERKSI_.exit

_ZN5boost4wave8cpplexer12lex_iteratorINS1_9lex_tokenINS0_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEEEC2ERKSI_.exit: ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.012.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !457
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(77) %1, i64 64, i1 false), !noalias !457
  %.sroa.012.64..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.i.i.i, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.012.64..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %i.g, i64 12, i1 false), !noalias !457
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <64 x i8>, ptr %1, align 8, !noalias !457
  %.sroa.0.i.i.i.sroa.0.0.vec.expand = shufflevector <64 x i8> %.sroa.0.i.i.i.sroa.0.0.copyload, <64 x i8> poison, <80 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %.sroa.0.i.i.i.sroa.0.0.vecblend = shufflevector <80 x i8> %.sroa.0.i.i.i.sroa.0.0.vec.expand, <80 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 undef, i8 undef, i8 undef, i8 undef>, <80 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 156, i32 157, i32 158, i32 159>
  %.sroa.0.i.i.i.sroa.0.64.copyload = load <12 x i8>, ptr %i.g, align 8, !noalias !457 ; 2 uses
  %.sroa.0.i.i.i.sroa.0.64.vec.expand = shufflevector <12 x i8> %.sroa.0.i.i.i.sroa.0.64.copyload, <12 x i8> poison, <80 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %.sroa.0.i.i.i.sroa.0.64.vecblend = shufflevector <80 x i8> %.sroa.0.i.i.i.sroa.0.0.vecblend, <80 x i8> %.sroa.0.i.i.i.sroa.0.64.vec.expand, <80 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 144, i32 145, i32 146, i32 147, i32 148, i32 149, i32 150, i32 151, i32 152, i32 153, i32 154, i32 155, i32 76, i32 77, i32 78, i32 79>
  %.sroa.07.i.i.i.sroa.0.0.vec.expand = shufflevector <12 x i8> %.sroa.0.i.i.i.sroa.0.64.copyload, <12 x i8> poison, <96 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %.sroa.07.i.i.i.sroa.0.0.vecblend = shufflevector <96 x i8> %.sroa.07.i.i.i.sroa.0.0.vec.expand, <96 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 undef, i8 undef, i8 undef, i8 undef, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <96 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 108, i32 109, i32 110, i32 111, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %.sroa.07.i.i.i.sroa.0.16.vec.expand = shufflevector <80 x i8> %.sroa.0.i.i.i.sroa.0.64.vecblend, <80 x i8> poison, <96 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79>
  %.sroa.07.i.i.i.sroa.0.16.vecblend = shufflevector <96 x i8> %.sroa.07.i.i.i.sroa.0.0.vecblend, <96 x i8> %.sroa.07.i.i.i.sroa.0.16.vec.expand, <96 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126, i32 127, i32 128, i32 129, i32 130, i32 131, i32 132, i32 133, i32 134, i32 135, i32 136, i32 137, i32 138, i32 139, i32 140, i32 141, i32 142, i32 143, i32 144, i32 145, i32 146, i32 147, i32 148, i32 149, i32 150, i32 151, i32 152, i32 153, i32 154, i32 155, i32 156, i32 157, i32 158, i32 159, i32 160, i32 161, i32 162, i32 163, i32 164, i32 165, i32 166, i32 167, i32 168, i32 169, i32 170, i32 171, i32 172, i32 173, i32 174, i32 175, i32 176, i32 177, i32 178, i32 179, i32 180, i32 181, i32 182, i32 183, i32 184, i32 185, i32 186, i32 187, i32 188, i32 189, i32 190, i32 191>
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.012.i.i.i, i64 80, i1 false), !noalias !457
  %.sroa.414.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i8 0, ptr %.sroa.414.0..sroa_idx.i.i.i, align 8, !noalias !457
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 88
  store <96 x i8> %.sroa.07.i.i.i.sroa.0.16.vecblend, ptr %i.h, align 8, !noalias !457
  %.sroa.410.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 184
  store i8 0, ptr %.sroa.410.0..sroa_idx.i.i.i, align 8, !noalias !457
  invoke void @_ZNK5boost6spirit7classic8sequenceINS1_22refactor_action_parserINS1_10differenceINS1_11alternativeINS5_INS5_INS5_INS1_5chlitINS_4wave8token_idEEENS7_4util11pattern_andINS7_14token_categoryEEEEENSB_IjEEEESD_EES9_EENS1_23no_tree_gen_node_parserINS2_INS2_INS1_11kleene_starIS9_EES9_EESL_EEEEEENS1_18refactor_unary_genINS1_22non_nested_refactoringEEEEENSK_INS2_ISO_ST_EEEEE5parseINS1_7scannerINS7_8cpplexer12lex_iteratorINSZ_9lex_tokenINSA_13file_positionINSA_11flex_stringIcSt11char_traitsIcESaIcENSA_9CowStringINSA_22AllocatorStringStorageIcS16_EEPcEEEEEEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_15pt_match_policyIS1F_NS1_21node_val_data_factoryINS1_5nil_tEEES1K_EENS1_13action_policyEEEEEEENS1_13parser_resultISW_T_E4typeERKS1R_(ptr dead_on_unwind writable sret(%"class.boost::spirit::classic::tree_match") align 8 %0, ptr noundef nonnull align 8 dereferenceable(192) %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZN5boost4wave8cpplexer12lex_iteratorINS1_9lex_tokenINS0_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEEEC2ERKSI_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !457
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.012.i.i.i)
  %i.i = load i64, ptr %0, align 8, !tbaa !34
  %.not.not = icmp sgt i64 %i.i, -1
  br i1 %.not.not, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %2, align 8, !tbaa !28, !nonnull !116, !align !207
  invoke void @_ZSt4swapIN5boost4wave8cpplexer12lex_iteratorINS2_9lex_tokenINS1_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEEEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISN_ESt18is_move_assignableISN_EEE5valueEvE4typeERSN_SW_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZNK5boost6spirit7classic23no_tree_gen_node_parserINS1_8sequenceINS1_11kleene_starINS1_5chlitINS_4wave8token_idEEEEES8_EEE5parseINS1_7scannerINS6_8cpplexer12lex_iteratorINSE_9lex_tokenINS6_4util13file_positionINSH_11flex_stringIcSt11char_traitsIcESaIcENSH_9CowStringINSH_22AllocatorStringStorageIcSM_EEPcEEEEEEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_15pt_match_policyISV_NS1_21node_val_data_factoryINS1_5nil_tEEES10_EENS1_13action_policyEEEEEEENS1_13parser_resultISB_T_E4typeERKS17_(ptr dead_on_unwind nonnull writable sret(%"class.boost::spirit::classic::tree_match") align 8 %5, ptr noundef nonnull align 4 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.l = load i64, ptr %5, align 8, !tbaa !34     ; 2 uses
  %i.m = icmp sgt i64 %i.l, -1
  %i.n = load i64, ptr %0, align 8
  %i.o = icmp sge i64 %i.l, %i.n
  %or.cond.not = select i1 %i.m, i1 %i.o, i1 false ; 2 uses
  br i1 %or.cond.not, label %_ZN5boost4wave8cpplexer12lex_iteratorINS1_9lex_tokenINS0_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEEEaSERKSI_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %2, align 8, !tbaa !28, !nonnull !116, !align !207
  %i.q = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5boost6spirit10multi_passISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS4_9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEEPNS4_19lex_input_interfaceISL_EEENS0_17iterator_policies14default_policyINSR_11ref_countedENSR_8no_checkENSR_19split_functor_inputENSR_15split_std_dequeEEEEaSERKSY_(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN5boost4wave8cpplexer12lex_iteratorINS1_9lex_tokenINS0_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEEEaSERKSI_.exit unwind label %bb.k ; 0 uses

bb.h:                                             ; preds = %_ZN5boost4wave8cpplexer12lex_iteratorINS1_9lex_tokenINS0_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEEEC2ERKSI_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.i:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.k:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost6spirit7classic10tree_matchINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESN_ED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #26
  br label %bb.n

_ZN5boost4wave8cpplexer12lex_iteratorINS1_9lex_tokenINS0_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEEEaSERKSI_.exit: ; preds = %bb.f, %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !39
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !36
  invoke void @_ZSt8_DestroyIPN5boost6spirit7classic9tree_nodeINS2_13node_val_dataINS0_4wave8cpplexer12lex_iteratorINS6_9lex_tokenINS5_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEENS2_5nil_tEEEEEEvT_SS_(ptr noundef %i.w, ptr noundef %i.y)
          to label %_ZSt8_DestroyIPN5boost6spirit7classic9tree_nodeINS2_13node_val_dataINS0_4wave8cpplexer12lex_iteratorINS6_9lex_tokenINS5_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEENS2_5nil_tEEEEESQ_EvT_SS_RSaIT0_E.exit.i.i unwind label %bb.m, !inline_history !52

_ZSt8_DestroyIPN5boost6spirit7classic9tree_nodeINS2_13node_val_dataINS0_4wave8cpplexer12lex_iteratorINS6_9lex_tokenINS5_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEENS2_5nil_tEEEEESQ_EvT_SS_RSaIT0_E.exit.i.i: ; preds = %_ZN5boost4wave8cpplexer12lex_iteratorINS1_9lex_tokenINS0_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEEEaSERKSI_.exit
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !39   ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i23, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPN5boost6spirit7classic9tree_nodeINS2_13node_val_dataINS0_4wave8cpplexer12lex_iteratorINS6_9lex_tokenINS5_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEENS2_5nil_tEEEEESQ_EvT_SS_RSaIT0_E.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !51
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #30, !inline_history !52
  br label %bb.o

bb.m:                                             ; preds = %_ZN5boost4wave8cpplexer12lex_iteratorINS1_9lex_tokenINS0_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEEEaSERKSI_.exit
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #28, !inline_history !52
  unreachable

bb.n:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.u, %bb.k ], [ %i.t, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.q

bb.o:                                             ; preds = %bb.l, %_ZSt8_DestroyIPN5boost6spirit7classic9tree_nodeINS2_13node_val_dataINS0_4wave8cpplexer12lex_iteratorINS6_9lex_tokenINS5_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEENS2_5nil_tEEEEESQ_EvT_SS_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br i1 %or.cond.not, label %.thread, label %.critedge

.thread:                                          ; preds = %bb.c, %bb.o
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !39
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !36
  invoke void @_ZSt8_DestroyIPN5boost6spirit7classic9tree_nodeINS2_13node_val_dataINS0_4wave8cpplexer12lex_iteratorINS6_9lex_tokenINS5_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEENS2_5nil_tEEEEEEvT_SS_(ptr noundef %i.ai, ptr noundef %i.ak)
          to label %_ZSt8_DestroyIPN5boost6spirit7classic9tree_nodeINS2_13node_val_dataINS0_4wave8cpplexer12lex_iteratorINS6_9lex_tokenINS5_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEENS2_5nil_tEEEEESQ_EvT_SS_RSaIT0_E.exit.i.i24 unwind label %bb.p, !inline_history !52

_ZSt8_DestroyIPN5boost6spirit7classic9tree_nodeINS2_13node_val_dataINS0_4wave8cpplexer12lex_iteratorINS6_9lex_tokenINS5_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEENS2_5nil_tEEEEESQ_EvT_SS_RSaIT0_E.exit.i.i24: ; preds = %.thread
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !39 ; 3 uses
  %.not.i.i.i.i25 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i25, label %_ZN5boost6spirit7classic10tree_matchINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESN_ED2Ev.exit26, label %.split

.split:                                           ; preds = %_ZSt8_DestroyIPN5boost6spirit7classic9tree_nodeINS2_13node_val_dataINS0_4wave8cpplexer12lex_iteratorINS6_9lex_tokenINS5_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEENS2_5nil_tEEEEESQ_EvT_SS_RSaIT0_E.exit.i.i24
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !51
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.aq) #30, !inline_history !52
  br label %_ZN5boost6spirit7classic10tree_matchINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESN_ED2Ev.exit26

bb.p:                                             ; preds = %.thread
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #28, !inline_history !52
  unreachable

_ZN5boost6spirit7classic10tree_matchINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESN_ED2Ev.exit26: ; preds = %_ZSt8_DestroyIPN5boost6spirit7classic9tree_nodeINS2_13node_val_dataINS0_4wave8cpplexer12lex_iteratorINS6_9lex_tokenINS5_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEENS2_5nil_tEEEEESQ_EvT_SS_RSaIT0_E.exit.i.i24, %.split
  store i64 -1, ptr %0, align 8, !tbaa !34, !alias.scope !464
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false), !alias.scope !464
  br label %.critedge

bb.q:                                             ; preds = %bb.n, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.n ], [ %i.s, %bb.i ]
  call void @_ZN5boost6spirit7classic10tree_matchINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESN_ED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #26
  br label %bb.t

.critedge:                                        ; preds = %bb.o, %_ZN5boost6spirit7classic10tree_matchINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESN_ED2Ev.exit26
  %i.at = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i, label %_ZN5boost6spirit10multi_passISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS4_9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEEPNS4_19lex_input_interfaceISL_EEENS0_17iterator_policies14default_policyINSR_11ref_countedENSR_8no_checkENSR_19split_functor_inputENSR_15split_std_dequeEEEED2Ev.exit, label %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7releaseINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEbRT_.exit.i

_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7releaseINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEbRT_.exit.i: ; preds = %.critedge
  %i.au = atomicrmw sub ptr %i.at, i32 1 acq_rel, align 4
  %i.av = icmp eq i32 %i.au, 1
  br i1 %i.av, label %bb.r, label %_ZN5boost6spirit10multi_passISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS4_9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEEPNS4_19lex_input_interfaceISL_EEENS0_17iterator_policies14default_policyINSR_11ref_countedENSR_8no_checkENSR_19split_functor_inputENSR_15split_std_dequeEEEED2Ev.exit

bb.r:                                             ; preds = %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7releaseINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEbRT_.exit.i
  %i.aw = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !53 ; 3 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.thread.i, label %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.i

_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.i: ; preds = %bb.r
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !58
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.ay) #26, !inline_history !60
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !21   ; 2 uses
  %i.bd = icmp eq ptr %.pr.i, null
  br i1 %i.bd, label %_ZN5boost6spirit10multi_passISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS4_9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEEPNS4_19lex_input_interfaceISL_EEENS0_17iterator_policies14default_policyINSR_11ref_countedENSR_8no_checkENSR_19split_functor_inputENSR_15split_std_dequeEEEED2Ev.exit, label %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.thread.i

_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.thread.i: ; preds = %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.i, %bb.r
  %i.be = phi ptr [ %.pr.i, %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.i ], [ %i.aw, %bb.r ] ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !61 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !64 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.bg, %i.bi
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.thread.i, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i ], [ %i.bg, %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.thread.i ] ; 2 uses
  call void @_ZN5boost4wave8cpplexer9lex_tokenINS0_4util13file_positionINS3_11flex_stringIcSt11char_traitsIcESaIcENS3_9CowStringINS3_22AllocatorStringStorageIcS8_EEPcEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i) #26
  %i.bj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bj, %i.bi
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !65

_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.bf, align 8, !tbaa !61
  br label %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i.i, %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.thread.i
  %i.bk = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.bg, %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.thread.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN5boost6spirit17iterator_policies17multi_pass_sharedISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6sharedENS1_8no_check6sharedENS1_19split_functor_input6sharedISR_EENS1_15split_std_deque6sharedISM_EEED2Ev.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !67
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %i.bk to i64
  %i.bp = sub i64 %i.bn, %i.bo
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bp) #30
  br label %_ZN5boost6spirit17iterator_policies17multi_pass_sharedISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6sharedENS1_8no_check6sharedENS1_19split_functor_input6sharedISR_EENS1_15split_std_deque6sharedISM_EEED2Ev.exit.i

_ZN5boost6spirit17iterator_policies17multi_pass_sharedISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6sharedENS1_8no_check6sharedENS1_19split_functor_input6sharedISR_EENS1_15split_std_deque6sharedISM_EEED2Ev.exit.i: ; preds = %bb.s, %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  call void @_ZN5boost4wave8cpplexer9lex_tokenINS0_4util13file_positionINS3_11flex_stringIcSt11char_traitsIcESaIcENS3_9CowStringINS3_22AllocatorStringStorageIcS8_EEPcEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bq) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef 56) #30
  br label %_ZN5boost6spirit10multi_passISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS4_9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEEPNS4_19lex_input_interfaceISL_EEENS0_17iterator_policies14default_policyINSR_11ref_countedENSR_8no_checkENSR_19split_functor_inputENSR_15split_std_dequeEEEED2Ev.exit

_ZN5boost6spirit10multi_passISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS4_9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEEPNS4_19lex_input_interfaceISL_EEENS0_17iterator_policies14default_policyINSR_11ref_countedENSR_8no_checkENSR_19split_functor_inputENSR_15split_std_dequeEEEED2Ev.exit: ; preds = %.critedge, %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7releaseINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEbRT_.exit.i, %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.i, %_ZN5boost6spirit17iterator_policies17multi_pass_sharedISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6sharedENS1_8no_check6sharedENS1_19split_functor_input6sharedISR_EENS1_15split_std_deque6sharedISM_EEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

bb.t:                                             ; preds = %bb.q, %bb.h
  %.pn21 = phi { ptr, i32 } [ %i.r, %bb.h ], [ %.pn.pn, %bb.q ]
  call void @_ZN5boost6spirit10multi_passISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS4_9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEEPNS4_19lex_input_interfaceISL_EEENS0_17iterator_policies14default_policyINSR_11ref_countedENSR_8no_checkENSR_19split_functor_inputENSR_15split_std_dequeEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
end_hunk_0
