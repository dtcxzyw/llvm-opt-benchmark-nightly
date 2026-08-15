inline.NumInlined: 3566
inline.NumDeleted: 1741
begin_hunk_0_@_ZNK5boost6spirit7classic8sequenceINS1_23no_tree_gen_node_parserINS1_8positiveINS1_4ruleINS1_7scannerINS_4wave8cpplexer12lex_iteratorINS8_9lex_tokenINS7_4util13file_positionINSB_11flex_stringIcSt11char_traitsIcESaIcENSB_9CowStringINSB_22AllocatorStringStorageIcSG_EEPcEEEEEEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_18dynamic_parser_tagENS1_5nil_tEEEEEEENS5_INS6_ISP_NSQ_ISR_NS1_15pt_match_policyISP_NS1_21node_val_data_factoryISX_EESX_EEST_EEEESW_SX_EEE5parseIS16_EENS1_13parser_resultIS18_T_E4typeERKS1B_:bb.a
  %.not.i.i.i.i18 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i18, label %_ZN5boost6spirit7classic10tree_matchINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESN_ED2Ev.exit19, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN5boost6spirit7classic9tree_nodeINS2_13node_val_dataINS0_4wave8cpplexer12lex_iteratorINS6_9lex_tokenINS5_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEENS2_5nil_tEEEEESQ_EvT_SS_RSaIT0_E.exit.i.i17
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !57
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #31, !inline_history !59
  br label %_ZN5boost6spirit7classic10tree_matchINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESN_ED2Ev.exit19

bb.l:                                             ; preds = %.critedge
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #29, !inline_history !59
  unreachable

_ZN5boost6spirit7classic10tree_matchINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESN_ED2Ev.exit19: ; preds = %_ZSt8_DestroyIPN5boost6spirit7classic9tree_nodeINS2_13node_val_dataINS0_4wave8cpplexer12lex_iteratorINS6_9lex_tokenINS5_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEENS2_5nil_tEEEEESQ_EvT_SS_RSaIT0_E.exit.i.i17, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.m

bb.m:                                             ; preds = %_ZN5boost6spirit7classic10tree_matchINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESN_ED2Ev.exit19, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !45
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !42
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5boost6spirit7classic9tree_nodeINS4_13node_val_dataINS2_4wave8cpplexer12lex_iteratorINS8_9lex_tokenINS7_4util13file_positionINSB_11flex_stringIcSt11char_traitsIcESaIcENSB_9CowStringINSB_22AllocatorStringStorageIcSG_EEPcEEEEEEEEEENS4_5nil_tEEEEEEEvT_SU_(ptr noundef %i.af, ptr noundef %i.ah)
          to label %_ZSt8_DestroyIPN5boost6spirit7classic9tree_nodeINS2_13node_val_dataINS0_4wave8cpplexer12lex_iteratorINS6_9lex_tokenINS5_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEENS2_5nil_tEEEEESQ_EvT_SS_RSaIT0_E.exit.i.i20 unwind label %bb.o, !inline_history !58

_ZSt8_DestroyIPN5boost6spirit7classic9tree_nodeINS2_13node_val_dataINS0_4wave8cpplexer12lex_iteratorINS6_9lex_tokenINS5_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEENS2_5nil_tEEEEESQ_EvT_SS_RSaIT0_E.exit.i.i20: ; preds = %bb.m
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !45 ; 3 uses
  %.not.i.i.i.i21 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i21, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPN5boost6spirit7classic9tree_nodeINS2_13node_val_dataINS0_4wave8cpplexer12lex_iteratorINS6_9lex_tokenINS5_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEENS2_5nil_tEEEEESQ_EvT_SS_RSaIT0_E.exit.i.i20
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !57
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #31, !inline_history !59
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #29, !inline_history !59
  unreachable

_ZN5boost6spirit7classic10tree_matchINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESN_ED2Ev.exit22: ; preds = %_ZSt8_DestroyIPN5boost6spirit7classic9tree_nodeINS2_13node_val_dataINS0_4wave8cpplexer12lex_iteratorINS6_9lex_tokenINS5_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEENS2_5nil_tEEEEESQ_EvT_SS_RSaIT0_E.exit.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.q

bb.p:                                             ; preds = %_ZSt8_DestroyIPN5boost6spirit7classic9tree_nodeINS2_13node_val_dataINS0_4wave8cpplexer12lex_iteratorINS6_9lex_tokenINS5_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEENS2_5nil_tEEEEESQ_EvT_SS_RSaIT0_E.exit.i.i20, %bb.n
  store i64 -1, ptr %0, align 8, !tbaa !40, !alias.scope !619
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false), !alias.scope !619
  br label %bb.q

bb.q:                                             ; preds = %_ZN5boost6spirit7classic10tree_matchINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESN_ED2Ev.exit22, %bb.p
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost6spirit7classic23no_tree_gen_node_parserINS1_8positiveINS1_4ruleINS1_7scannerINS_4wave8cpplexer12lex_iteratorINS7_9lex_tokenINS6_4util13file_positionINSA_11flex_stringIcSt11char_traitsIcESaIcENSA_9CowStringINSA_22AllocatorStringStorageIcSF_EEPcEEEEEEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_18dynamic_parser_tagENS1_5nil_tEEEEEE5parseINS5_ISO_NSP_ISQ_NS1_15pt_match_policyISO_NS1_21node_val_data_factoryISW_EESW_EESS_EEEEEENS1_13parser_resultISZ_T_E4typeERKS18_(ptr dead_on_unwind noalias writable sret(%"class.boost::spirit::classic::tree_match") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::spirit::classic::scanner.418", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622)
  %i.a = load ptr, ptr %2, align 8, !tbaa !34, !noalias !622, !nonnull !122, !align !225 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %3, align 8, !tbaa !32, !alias.scope !622
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !27, !noalias !622 ; 3 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !27, !alias.scope !622
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !30, !noalias !622
  store i64 %i.g, ptr %i.e, align 8, !tbaa !30, !alias.scope !622
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost4wave8cpplexer12lex_iteratorINS1_9lex_tokenINS0_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEEEC2ERKSI_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = atomicrmw add ptr %i.d, i32 1 acq_rel, align 4, !noalias !622 ; 0 uses
  %.pre.i.i = load ptr, ptr %3, align 8, !tbaa !474, !alias.scope !622
  br label %_ZN5boost4wave8cpplexer12lex_iteratorINS1_9lex_tokenINS0_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEEEC2ERKSI_.exit.i.i

_ZN5boost4wave8cpplexer12lex_iteratorINS1_9lex_tokenINS0_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEEEC2ERKSI_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.i = phi ptr [ %i.a, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.j = invoke noundef zeroext i1 @_ZNK5boost6spirit10multi_passISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS4_9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEEPNS4_19lex_input_interfaceISL_EEENS0_17iterator_policies14default_policyINSR_11ref_countedENSR_8no_checkENSR_19split_functor_inputENSR_15split_std_dequeEEEEeqERKSY_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_ZNK5boost6spirit7classic7scannerINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_15pt_match_policyISL_NS1_21node_val_data_factoryINS1_5nil_tEEESQ_EENS1_13action_policyEEEE15change_policiesINSM_ISN_NS1_12match_policyEST_EEEENS2_ISL_T_EERKSZ_.exit unwind label %bb.c ; 0 uses

common.resume:                                    ; preds = %bb.g, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.c ], [ %i.al, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %_ZN5boost4wave8cpplexer12lex_iteratorINS1_9lex_tokenINS0_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEEEC2ERKSI_.exit.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost6spirit10multi_passISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS4_9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEEPNS4_19lex_input_interfaceISL_EEENS0_17iterator_policies14default_policyINSR_11ref_countedENSR_8no_checkENSR_19split_functor_inputENSR_15split_std_dequeEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.c) #27
  br label %common.resume

_ZNK5boost6spirit7classic7scannerINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_15pt_match_policyISL_NS1_21node_val_data_factoryINS1_5nil_tEEESQ_EENS1_13action_policyEEEE15change_policiesINSM_ISN_NS1_12match_policyEST_EEEENS2_ISL_T_EERKSZ_.exit: ; preds = %_ZN5boost4wave8cpplexer12lex_iteratorINS1_9lex_tokenINS0_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEEEC2ERKSI_.exit.i.i
  %i.l = invoke i64 @_ZNK5boost6spirit7classic8positiveINS1_4ruleINS1_7scannerINS_4wave8cpplexer12lex_iteratorINS6_9lex_tokenINS5_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_18dynamic_parser_tagENS1_5nil_tEEEE5parseIST_EENS1_13parser_resultISX_T_E4typeERKS10_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZNK5boost6spirit7classic7scannerINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_15pt_match_policyISL_NS1_21node_val_data_factoryINS1_5nil_tEEESQ_EENS1_13action_policyEEEE15change_policiesINSM_ISN_NS1_12match_policyEST_EEEENS2_ISL_T_EERKSZ_.exit
  store i64 %i.l, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !27   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZN5boost6spirit10multi_passISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS4_9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEEPNS4_19lex_input_interfaceISL_EEENS0_17iterator_policies14default_policyINSR_11ref_countedENSR_8no_checkENSR_19split_functor_inputENSR_15split_std_dequeEEEED2Ev.exit, label %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7releaseINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEbRT_.exit.i

_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7releaseINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEbRT_.exit.i: ; preds = %bb.d
  %i.o = atomicrmw sub ptr %i.n, i32 1 acq_rel, align 4
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN5boost6spirit10multi_passISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS4_9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEEPNS4_19lex_input_interfaceISL_EEENS0_17iterator_policies14default_policyINSR_11ref_countedENSR_8no_checkENSR_19split_functor_inputENSR_15split_std_dequeEEEED2Ev.exit

bb.e:                                             ; preds = %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7releaseINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEbRT_.exit.i
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !27   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !60   ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.thread.i, label %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.i

_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.i: ; preds = %bb.e
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !65
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.s) #27, !inline_history !67
  %.pr.i = load ptr, ptr %i.c, align 8, !tbaa !27 ; 2 uses
  %i.x = icmp eq ptr %.pr.i, null
  br i1 %i.x, label %_ZN5boost6spirit10multi_passISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS4_9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEEPNS4_19lex_input_interfaceISL_EEENS0_17iterator_policies14default_policyINSR_11ref_countedENSR_8no_checkENSR_19split_functor_inputENSR_15split_std_dequeEEEED2Ev.exit, label %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.thread.i

_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.thread.i: ; preds = %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.i, %bb.e
  %i.y = phi ptr [ %.pr.i, %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.i ], [ %i.q, %bb.e ] ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !68  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !70 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.thread.i, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i ], [ %i.aa, %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.thread.i ] ; 2 uses
  call void @_ZN5boost4wave8cpplexer9lex_tokenINS0_4util13file_positionINS3_11flex_stringIcSt11char_traitsIcESaIcENS3_9CowStringINS3_22AllocatorStringStorageIcS8_EEPcEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i) #27
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i4 = icmp eq ptr %i.ad, %i.ac
  br i1 %.not.i.i.i.i.i.i4, label %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !71

_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !68
  br label %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i.i, %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.thread.i
  %i.ae = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.aa, %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.thread.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN5boost6spirit17iterator_policies17multi_pass_sharedISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6sharedENS1_8no_check6sharedENS1_19split_functor_input6sharedISR_EENS1_15split_std_deque6sharedISM_EEED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !73
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #31
  br label %_ZN5boost6spirit17iterator_policies17multi_pass_sharedISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6sharedENS1_8no_check6sharedENS1_19split_functor_input6sharedISR_EENS1_15split_std_deque6sharedISM_EEED2Ev.exit.i

_ZN5boost6spirit17iterator_policies17multi_pass_sharedISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6sharedENS1_8no_check6sharedENS1_19split_functor_input6sharedISR_EENS1_15split_std_deque6sharedISM_EEED2Ev.exit.i: ; preds = %bb.f, %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call void @_ZN5boost4wave8cpplexer9lex_tokenINS0_4util13file_positionINS3_11flex_stringIcSt11char_traitsIcESaIcENS3_9CowStringINS3_22AllocatorStringStorageIcS8_EEPcEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ak) #27
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 56) #31
  br label %_ZN5boost6spirit10multi_passISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS4_9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEEPNS4_19lex_input_interfaceISL_EEENS0_17iterator_policies14default_policyINSR_11ref_countedENSR_8no_checkENSR_19split_functor_inputENSR_15split_std_dequeEEEED2Ev.exit

_ZN5boost6spirit10multi_passISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS4_9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEEPNS4_19lex_input_interfaceISL_EEENS0_17iterator_policies14default_policyINSR_11ref_countedENSR_8no_checkENSR_19split_functor_inputENSR_15split_std_dequeEEEED2Ev.exit: ; preds = %bb.d, %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7releaseINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEbRT_.exit.i, %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.i, %_ZN5boost6spirit17iterator_policies17multi_pass_sharedISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6sharedENS1_8no_check6sharedENS1_19split_functor_input6sharedISR_EENS1_15split_std_deque6sharedISM_EEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.g:                                             ; preds = %_ZNK5boost6spirit7classic7scannerINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_15pt_match_policyISL_NS1_21node_val_data_factoryINS1_5nil_tEEESQ_EENS1_13action_policyEEEE15change_policiesINSM_ISN_NS1_12match_policyEST_EEEENS2_ISL_T_EERKSZ_.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost6spirit10multi_passISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS4_9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEEPNS4_19lex_input_interfaceISL_EEENS0_17iterator_policies14default_policyINSR_11ref_countedENSR_8no_checkENSR_19split_functor_inputENSR_15split_std_dequeEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6spirit7classic4impl15concrete_parserINS1_13confix_parserINS1_23no_tree_gen_node_parserINS1_8sequenceINS1_5chlitINS_4wave8token_idEEENS1_11kleene_starINS1_4ruleINS1_7scannerINS8_8cpplexer12lex_iteratorINSE_9lex_tokenINS8_4util13file_positionINSH_11flex_stringIcSt11char_traitsIcESaIcENSH_9CowStringINSH_22AllocatorStringStorageIcSM_EEPcEEEEEEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_18dynamic_parser_tagENS1_5nil_tEEEEEEEEENS1_8optionalINS1_11list_parserINS1_11alternativeINS1A_INS1A_INS1A_ISA_NSH_11pattern_andINS8_14token_categoryEEEEENS1B_IjEEEES1D_EESA_EENS5_INS6_INS6_IS15_SA_EES15_EEEENS1_16no_list_endtokenENS1_22binary_parser_categoryEEEEENS5_IS1J_EENS1_21unary_parser_categoryENS1_10non_nestedENS1_10non_lexemeEEENSD_ISV_NSW_ISX_NS1_15pt_match_policyISV_NS1_21node_val_data_factoryIS13_EES13_EESZ_EEEES13_ED0Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost6spirit7classic4impl15concrete_parserINS1_13confix_parserINS1_23no_tree_gen_node_parserINS1_8sequenceINS1_5chlitINS_4wave8token_idEEENS1_11kleene_starINS1_4ruleINS1_7scannerINS8_8cpplexer12lex_iteratorINSE_9lex_tokenINS8_4util13file_positionINSH_11flex_stringIcSt11char_traitsIcESaIcENSH_9CowStringINSH_22AllocatorStringStorageIcSM_EEPcEEEEEEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_18dynamic_parser_tagENS1_5nil_tEEEEEEEEENS1_8optionalINS1_11list_parserINS1_11alternativeINS1A_INS1A_INS1A_ISA_NSH_11pattern_andINS8_14token_categoryEEEEENS1B_IjEEEES1D_EESA_EENS5_INS6_INS6_IS15_SA_EES15_EEEENS1_16no_list_endtokenENS1_22binary_parser_categoryEEEEENS5_IS1J_EENS1_21unary_parser_categoryENS1_10non_nestedENS1_10non_lexemeEEENSD_ISV_NSW_ISX_NS1_15pt_match_policyISV_NS1_21node_val_data_factoryIS13_EES13_EESZ_EEEES13_E16do_parse_virtualERKS20_(ptr dead_on_unwind noalias writable sret(%"class.boost::spirit::classic::tree_match") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #5 comdat align 2 {
bb.a:
  %3 = alloca %"struct.boost::spirit::classic::sequence.439", align 8 ; 6 uses
  %.sroa.06.i.i.i = alloca [128 x i8], align 8    ; 5 uses
  %.sroa.0.i.i.i = alloca %"class.boost::details::compressed_pair_imp.454", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27, !noalias !625
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %i.b, i64 96, i1 false), !noalias !625
  %.sroa.0.96..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.96..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !625
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.i.i.i, ptr noundef nonnull align 8 dereferenceable(128) %i.a, i64 16, i1 false), !noalias !625
  %.sroa.06.16..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.06.16..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.0.i.i.i, i64 112, i1 false), !noalias !625
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.06.i.i.i, i64 128, i1 false), !noalias !625
  %.sroa.57.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 128
  store i8 0, ptr %.sroa.57.0..sroa_idx.i.i.i, align 8, !noalias !625
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !625
  call void @_ZNK5boost6spirit7classic8sequenceINS2_INS1_23no_tree_gen_node_parserINS2_INS1_5chlitINS_4wave8token_idEEENS1_11kleene_starINS1_4ruleINS1_7scannerINS5_8cpplexer12lex_iteratorINSB_9lex_tokenINS5_4util13file_positionINSE_11flex_stringIcSt11char_traitsIcESaIcENSE_9CowStringINSE_22AllocatorStringStorageIcSJ_EEPcEEEEEEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_18dynamic_parser_tagENS1_5nil_tEEEEEEEEENS1_22refactor_action_parserINS1_10differenceINS1_8optionalINS1_11list_parserINS1_11alternativeINS19_INS19_INS19_IS7_NSE_11pattern_andINS5_14token_categoryEEEEENS1A_IjEEEES1C_EES7_EENS3_INS2_INS2_IS12_S7_EES12_EEEENS1_16no_list_endtokenENS1_22binary_parser_categoryEEEEENS3_IS1I_EEEENS1_18refactor_unary_genINS1_22non_nested_refactoringEEEEEEES1P_E5parseINSA_ISS_NST_ISU_NS1_15pt_match_policyISS_NS1_21node_val_data_factoryIS10_EES10_EESW_EEEEEENS1_13parser_resultIS1W_T_E4typeERKS25_(ptr dead_on_unwind writable sret(%"class.boost::spirit::classic::tree_match") align 8 %0, ptr noundef nonnull align 8 dereferenceable(152) %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !625
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK5boost6spirit7classic4impl15concrete_parserINS1_13confix_parserINS1_23no_tree_gen_node_parserINS1_8sequenceINS1_5chlitINS_4wave8token_idEEENS1_11kleene_starINS1_4ruleINS1_7scannerINS8_8cpplexer12lex_iteratorINSE_9lex_tokenINS8_4util13file_positionINSH_11flex_stringIcSt11char_traitsIcESaIcENSH_9CowStringINSH_22AllocatorStringStorageIcSM_EEPcEEEEEEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_18dynamic_parser_tagENS1_5nil_tEEEEEEEEENS1_8optionalINS1_11list_parserINS1_11alternativeINS1A_INS1A_INS1A_ISA_NSH_11pattern_andINS8_14token_categoryEEEEENS1B_IjEEEES1D_EESA_EENS5_INS6_INS6_IS15_SA_EES15_EEEENS1_16no_list_endtokenENS1_22binary_parser_categoryEEEEENS5_IS1J_EENS1_21unary_parser_categoryENS1_10non_nestedENS1_10non_lexemeEEENSD_ISV_NSW_ISX_NS1_15pt_match_policyISV_NS1_21node_val_data_factoryIS13_EES13_EESZ_EEEES13_E5cloneEv(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #30 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost6spirit7classic4impl15concrete_parserINS1_13confix_parserINS1_23no_tree_gen_node_parserINS1_8sequenceINS1_5chlitINS_4wave8token_idEEENS1_11kleene_starINS1_4ruleINS1_7scannerINS8_8cpplexer12lex_iteratorINSE_9lex_tokenINS8_4util13file_positionINSH_11flex_stringIcSt11char_traitsIcESaIcENSH_9CowStringINSH_22AllocatorStringStorageIcSM_EEPcEEEEEEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_18dynamic_parser_tagENS1_5nil_tEEEEEEEEENS1_8optionalINS1_11list_parserINS1_11alternativeINS1A_INS1A_INS1A_ISA_NSH_11pattern_andINS8_14token_categoryEEEEENS1B_IjEEEES1D_EESA_EENS5_INS6_INS6_IS15_SA_EES15_EEEENS1_16no_list_endtokenENS1_22binary_parser_categoryEEEEENS5_IS1J_EENS1_21unary_parser_categoryENS1_10non_nestedENS1_10non_lexemeEEENSD_ISV_NSW_ISX_NS1_15pt_match_policyISV_NS1_21node_val_data_factoryIS13_EES13_EESZ_EEEES13_EE, i64 16), ptr %i.a, align 8, !tbaa !65
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.c, ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 128, i1 false)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost6spirit7classic8sequenceINS2_INS1_23no_tree_gen_node_parserINS2_INS1_5chlitINS_4wave8token_idEEENS1_11kleene_starINS1_4ruleINS1_7scannerINS5_8cpplexer12lex_iteratorINSB_9lex_tokenINS5_4util13file_positionINSE_11flex_stringIcSt11char_traitsIcESaIcENSE_9CowStringINSE_22AllocatorStringStorageIcSJ_EEPcEEEEEEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_18dynamic_parser_tagENS1_5nil_tEEEEEEEEENS1_22refactor_action_parserINS1_10differenceINS1_8optionalINS1_11list_parserINS1_11alternativeINS19_INS19_INS19_IS7_NSE_11pattern_andINS5_14token_categoryEEEEENS1A_IjEEEES1C_EES7_EENS3_INS2_INS2_IS12_S7_EES12_EEEENS1_16no_list_endtokenENS1_22binary_parser_categoryEEEEENS3_IS1I_EEEENS1_18refactor_unary_genINS1_22non_nested_refactoringEEEEEEES1P_E5parseINSA_ISS_NST_ISU_NS1_15pt_match_policyISS_NS1_21node_val_data_factoryIS10_EES10_EESW_EEEEEENS1_13parser_resultIS1W_T_E4typeERKS25_(ptr dead_on_unwind noalias writable sret(%"class.boost::spirit::classic::tree_match") align 8 %0, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::spirit::classic::tree_match", align 8 ; 14 uses
  tail call void @_ZNK5boost6spirit7classic8sequenceINS1_23no_tree_gen_node_parserINS2_INS1_5chlitINS_4wave8token_idEEENS1_11kleene_starINS1_4ruleINS1_7scannerINS5_8cpplexer12lex_iteratorINSB_9lex_tokenINS5_4util13file_positionINSE_11flex_stringIcSt11char_traitsIcESaIcENSE_9CowStringINSE_22AllocatorStringStorageIcSJ_EEPcEEEEEEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_18dynamic_parser_tagENS1_5nil_tEEEEEEEEENS1_22refactor_action_parserINS1_10differenceINS1_8optionalINS1_11list_parserINS1_11alternativeINS19_INS19_INS19_IS7_NSE_11pattern_andINS5_14token_categoryEEEEENS1A_IjEEEES1C_EES7_EENS3_INS2_INS2_IS12_S7_EES12_EEEENS1_16no_list_endtokenENS1_22binary_parser_categoryEEEEENS3_IS1I_EEEENS1_18refactor_unary_genINS1_22non_nested_refactoringEEEEEE5parseINSA_ISS_NST_ISU_NS1_15pt_match_policyISS_NS1_21node_val_data_factoryIS10_EES10_EESW_EEEEEENS1_13parser_resultIS1V_T_E4typeERKS24_(ptr dead_on_unwind writable sret(%"class.boost::spirit::classic::tree_match") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.a = load i64, ptr %0, align 8, !tbaa !40
  %.not.not = icmp sgt i64 %i.a, -1
  br i1 %.not.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 136
  invoke void @_ZNK5boost6spirit7classic23no_tree_gen_node_parserINS1_8sequenceINS1_11kleene_starINS1_4ruleINS1_7scannerINS_4wave8cpplexer12lex_iteratorINS8_9lex_tokenINS7_4util13file_positionINSB_11flex_stringIcSt11char_traitsIcESaIcENSB_9CowStringINSB_22AllocatorStringStorageIcSG_EEPcEEEEEEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_18dynamic_parser_tagENS1_5nil_tEEEEENS1_5chlitINS7_8token_idEEEEEE5parseINS6_ISP_NSQ_ISR_NS1_15pt_match_policyISP_NS1_21node_val_data_factoryISX_EESX_EEST_EEEEEENS1_13parser_resultIS14_T_E4typeERKS1D_(ptr dead_on_unwind nonnull writable sret(%"class.boost::spirit::classic::tree_match") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = load i64, ptr %3, align 8, !tbaa !40
  %.not13.not.not = icmp sgt i64 %i.c, -1
  br i1 %.not13.not.not, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5boost6spirit7classic24common_tree_match_policyINS1_15pt_match_policyINS_4wave8cpplexer12lex_iteratorINS5_9lex_tokenINS4_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESO_EESM_SP_NS1_14pt_tree_policyISQ_SP_SO_EESO_E12concat_matchINS1_10tree_matchISM_SP_SO_EESW_EEvRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost6spirit7classic10tree_matchINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESN_ED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #27
  br label %bb.j

bb.g:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !45
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5boost6spirit7classic9tree_nodeINS4_13node_val_dataINS2_4wave8cpplexer12lex_iteratorINS8_9lex_tokenINS7_4util13file_positionINSB_11flex_stringIcSt11char_traitsIcESaIcENSB_9CowStringINSB_22AllocatorStringStorageIcSG_EEPcEEEEEEEEEENS4_5nil_tEEEEEEEvT_SU_(ptr noundef %i.g, ptr noundef %i.i)
          to label %_ZSt8_DestroyIPN5boost6spirit7classic9tree_nodeINS2_13node_val_dataINS0_4wave8cpplexer12lex_iteratorINS6_9lex_tokenINS5_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEENS2_5nil_tEEEEESQ_EvT_SS_RSaIT0_E.exit.i.i unwind label %bb.i, !inline_history !58

_ZSt8_DestroyIPN5boost6spirit7classic9tree_nodeINS2_13node_val_dataINS0_4wave8cpplexer12lex_iteratorINS6_9lex_tokenINS5_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEENS2_5nil_tEEEEESQ_EvT_SS_RSaIT0_E.exit.i.i: ; preds = %bb.g
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !45   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZN5boost6spirit7classic10tree_matchINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESN_ED2Ev.exit22, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN5boost6spirit7classic9tree_nodeINS2_13node_val_dataINS0_4wave8cpplexer12lex_iteratorINS6_9lex_tokenINS5_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEENS2_5nil_tEEEEESQ_EvT_SS_RSaIT0_E.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !57
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #31, !inline_history !59
  br label %_ZN5boost6spirit7classic10tree_matchINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESN_ED2Ev.exit22

bb.i:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #29, !inline_history !59
  unreachable

bb.j:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.e, %bb.f ], [ %i.d, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @_ZN5boost6spirit7classic10tree_matchINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESN_ED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #27
  resume { ptr, i32 } %.pn

.critedge:                                        ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !45
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !42
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5boost6spirit7classic9tree_nodeINS4_13node_val_dataINS2_4wave8cpplexer12lex_iteratorINS8_9lex_tokenINS7_4util13file_positionINSB_11flex_stringIcSt11char_traitsIcESaIcENSB_9CowStringINSB_22AllocatorStringStorageIcSG_EEPcEEEEEEEEEENS4_5nil_tEEEEEEEvT_SU_(ptr noundef %i.s, ptr noundef %i.u)
          to label %_ZSt8_DestroyIPN5boost6spirit7classic9tree_nodeINS2_13node_val_dataINS0_4wave8cpplexer12lex_iteratorINS6_9lex_tokenINS5_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEENS2_5nil_tEEEEESQ_EvT_SS_RSaIT0_E.exit.i.i17 unwind label %bb.l, !inline_history !58

_ZSt8_DestroyIPN5boost6spirit7classic9tree_nodeINS2_13node_val_dataINS0_4wave8cpplexer12lex_iteratorINS6_9lex_tokenINS5_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEENS2_5nil_tEEEEESQ_EvT_SS_RSaIT0_E.exit.i.i17: ; preds = %.critedge
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !45   ; 3 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i18, label %_ZN5boost6spirit7classic10tree_matchINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESN_ED2Ev.exit19, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN5boost6spirit7classic9tree_nodeINS2_13node_val_dataINS0_4wave8cpplexer12lex_iteratorINS6_9lex_tokenINS5_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEENS2_5nil_tEEEEESQ_EvT_SS_RSaIT0_E.exit.i.i17
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !57
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #31, !inline_history !59
  br label %_ZN5boost6spirit7classic10tree_matchINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESN_ED2Ev.exit19

bb.l:                                             ; preds = %.critedge
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #29, !inline_history !59
  unreachable

_ZN5boost6spirit7classic10tree_matchINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESN_ED2Ev.exit19: ; preds = %_ZSt8_DestroyIPN5boost6spirit7classic9tree_nodeINS2_13node_val_dataINS0_4wave8cpplexer12lex_iteratorINS6_9lex_tokenINS5_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEENS2_5nil_tEEEEESQ_EvT_SS_RSaIT0_E.exit.i.i17, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.m

bb.m:                                             ; preds = %_ZN5boost6spirit7classic10tree_matchINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESN_ED2Ev.exit19, %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !45
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !42
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5boost6spirit7classic9tree_nodeINS4_13node_val_dataINS2_4wave8cpplexer12lex_iteratorINS8_9lex_tokenINS7_4util13file_positionINSB_11flex_stringIcSt11char_traitsIcESaIcENSB_9CowStringINSB_22AllocatorStringStorageIcSG_EEPcEEEEEEEEEENS4_5nil_tEEEEEEEvT_SU_(ptr noundef %i.ae, ptr noundef %i.ag)
          to label %_ZSt8_DestroyIPN5boost6spirit7classic9tree_nodeINS2_13node_val_dataINS0_4wave8cpplexer12lex_iteratorINS6_9lex_tokenINS5_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEENS2_5nil_tEEEEESQ_EvT_SS_RSaIT0_E.exit.i.i20 unwind label %bb.o, !inline_history !58

_ZSt8_DestroyIPN5boost6spirit7classic9tree_nodeINS2_13node_val_dataINS0_4wave8cpplexer12lex_iteratorINS6_9lex_tokenINS5_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEENS2_5nil_tEEEEESQ_EvT_SS_RSaIT0_E.exit.i.i20: ; preds = %bb.m
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !45 ; 3 uses
  %.not.i.i.i.i21 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i21, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPN5boost6spirit7classic9tree_nodeINS2_13node_val_dataINS0_4wave8cpplexer12lex_iteratorINS6_9lex_tokenINS5_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEENS2_5nil_tEEEEESQ_EvT_SS_RSaIT0_E.exit.i.i20
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !57
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #31, !inline_history !59
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #29, !inline_history !59
  unreachable

_ZN5boost6spirit7classic10tree_matchINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESN_ED2Ev.exit22: ; preds = %_ZSt8_DestroyIPN5boost6spirit7classic9tree_nodeINS2_13node_val_dataINS0_4wave8cpplexer12lex_iteratorINS6_9lex_tokenINS5_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEENS2_5nil_tEEEEESQ_EvT_SS_RSaIT0_E.exit.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.q

bb.p:                                             ; preds = %_ZSt8_DestroyIPN5boost6spirit7classic9tree_nodeINS2_13node_val_dataINS0_4wave8cpplexer12lex_iteratorINS6_9lex_tokenINS5_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEENS2_5nil_tEEEEESQ_EvT_SS_RSaIT0_E.exit.i.i20, %bb.n
  store i64 -1, ptr %0, align 8, !tbaa !40, !alias.scope !632
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false), !alias.scope !632
  br label %bb.q

bb.q:                                             ; preds = %_ZN5boost6spirit7classic10tree_matchINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESN_ED2Ev.exit22, %bb.p
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost6spirit7classic8sequenceINS1_23no_tree_gen_node_parserINS2_INS1_5chlitINS_4wave8token_idEEENS1_11kleene_starINS1_4ruleINS1_7scannerINS5_8cpplexer12lex_iteratorINSB_9lex_tokenINS5_4util13file_positionINSE_11flex_stringIcSt11char_traitsIcESaIcENSE_9CowStringINSE_22AllocatorStringStorageIcSJ_EEPcEEEEEEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_18dynamic_parser_tagENS1_5nil_tEEEEEEEEENS1_22refactor_action_parserINS1_10differenceINS1_8optionalINS1_11list_parserINS1_11alternativeINS19_INS19_INS19_IS7_NSE_11pattern_andINS5_14token_categoryEEEEENS1A_IjEEEES1C_EES7_EENS3_INS2_INS2_IS12_S7_EES12_EEEENS1_16no_list_endtokenENS1_22binary_parser_categoryEEEEENS3_IS1I_EEEENS1_18refactor_unary_genINS1_22non_nested_refactoringEEEEEE5parseINSA_ISS_NST_ISU_NS1_15pt_match_policyISS_NS1_21node_val_data_factoryIS10_EES10_EESW_EEEEEENS1_13parser_resultIS1V_T_E4typeERKS24_(ptr dead_on_unwind noalias writable sret(%"class.boost::spirit::classic::tree_match") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::spirit::classic::optional.456", align 8 ; 4 uses
  %.sroa.0.i.i.i.i.i.i = alloca %"class.boost::details::compressed_pair_imp.463", align 8 ; 5 uses
  %4 = alloca %"class.boost::spirit::classic::tree_match", align 8 ; 14 uses
  tail call void @_ZNK5boost6spirit7classic23no_tree_gen_node_parserINS1_8sequenceINS1_5chlitINS_4wave8token_idEEENS1_11kleene_starINS1_4ruleINS1_7scannerINS5_8cpplexer12lex_iteratorINSB_9lex_tokenINS5_4util13file_positionINSE_11flex_stringIcSt11char_traitsIcESaIcENSE_9CowStringINSE_22AllocatorStringStorageIcSJ_EEPcEEEEEEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_18dynamic_parser_tagENS1_5nil_tEEEEEEEE5parseINSA_ISS_NST_ISU_NS1_15pt_match_policyISS_NS1_21node_val_data_factoryIS10_EES10_EESW_EEEEEENS1_13parser_resultIS14_T_E4typeERKS1D_(ptr dead_on_unwind writable sret(%"class.boost::spirit::classic::tree_match") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.a = load i64, ptr %0, align 8, !tbaa !40
  %.not.not = icmp sgt i64 %i.a, -1
  br i1 %.not.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27, !noalias !635
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(113) %i.b, i64 96, i1 false), !noalias !648
  %.sroa.0.96..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i.i.i.i, i64 96
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.96..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %3, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.0.i.i.i.i.i.i, i64 112, i1 false), !noalias !635
  invoke void @_ZNK5boost6spirit7classic8optionalINS1_10differenceINS1_11list_parserINS1_11alternativeINS5_INS5_INS5_INS1_5chlitINS_4wave8token_idEEENS7_4util11pattern_andINS7_14token_categoryEEEEENSB_IjEEEESD_EES9_EENS1_23no_tree_gen_node_parserINS1_8sequenceINSK_INS1_11kleene_starINS1_4ruleINS1_7scannerINS7_8cpplexer12lex_iteratorINSO_9lex_tokenINSA_13file_positionINSA_11flex_stringIcSt11char_traitsIcESaIcENSA_9CowStringINSA_22AllocatorStringStorageIcSV_EEPcEEEEEEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_18dynamic_parser_tagENS1_5nil_tEEEEES9_EES1E_EEEENS1_16no_list_endtokenENS1_22binary_parser_categoryEEENSJ_IS1F_EEEEE5parseINSN_IS14_NS15_IS16_NS1_15pt_match_policyIS14_NS1_21node_val_data_factoryIS1C_EES1C_EES18_EEEEEENS1_13parser_resultIS1N_T_E4typeERKS1W_(ptr dead_on_unwind nonnull writable sret(%"class.boost::spirit::classic::tree_match") align 8 %4, ptr noundef nonnull align 8 dereferenceable(112) %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !635
  %i.d = load i64, ptr %4, align 8, !tbaa !40
  %.not13.not.not = icmp sgt i64 %i.d, -1
  br i1 %.not13.not.not, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5boost6spirit7classic24common_tree_match_policyINS1_15pt_match_policyINS_4wave8cpplexer12lex_iteratorINS5_9lex_tokenINS4_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESO_EESM_SP_NS1_14pt_tree_policyISQ_SP_SO_EESO_E12concat_matchINS1_10tree_matchISM_SP_SO_EESW_EEvRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.f:                                             ; preds = %bb.d
end_hunk_0
begin_hunk_1_@_ZNK5boost6spirit7classic8optionalINS1_10differenceINS1_11list_parserINS1_11alternativeINS5_INS5_INS5_INS1_5chlitINS_4wave8token_idEEENS7_4util11pattern_andINS7_14token_categoryEEEEENSB_IjEEEESD_EES9_EENS1_23no_tree_gen_node_parserINS1_8sequenceINSK_INS1_11kleene_starINS1_4ruleINS1_7scannerINS7_8cpplexer12lex_iteratorINSO_9lex_tokenINSA_13file_positionINSA_11flex_stringIcSt11char_traitsIcESaIcENSA_9CowStringINSA_22AllocatorStringStorageIcSV_EEPcEEEEEEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_18dynamic_parser_tagENS1_5nil_tEEEEES9_EES1E_EEEENS1_16no_list_endtokenENS1_22binary_parser_categoryEEENSJ_IS1F_EEEEE5parseINSN_IS14_NS15_IS16_NS1_15pt_match_policyIS14_NS1_21node_val_data_factoryIS1C_EES1C_EES18_EEEEEENS1_13parser_resultIS1N_T_E4typeERKS1W_:bb.a
bb.d:                                             ; preds = %bb.c
  store i64 %i.g, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load <2 x ptr>, ptr %i.i, align 8, !tbaa !233
  store <2 x ptr> %i.k, ptr %i.h, align 8, !tbaa !233
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !57
  store ptr %i.m, ptr %i.j, align 8, !tbaa !57
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
  call void @_ZN5boost6spirit7classic10tree_matchINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESN_ED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #27
  br label %bb.p

bb.g:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %2, align 8, !tbaa !34, !nonnull !122, !align !225
  %i.q = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5boost6spirit10multi_passISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS4_9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEEPNS4_19lex_input_interfaceISL_EEENS0_17iterator_policies14default_policyINSR_11ref_countedENSR_8no_checkENSR_19split_functor_inputENSR_15split_std_dequeEEEEaSERKSY_(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN5boost4wave8cpplexer12lex_iteratorINS1_9lex_tokenINS0_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEEEaSERKSI_.exit unwind label %bb.f ; 0 uses

_ZN5boost4wave8cpplexer12lex_iteratorINS1_9lex_tokenINS0_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEEEaSERKSI_.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27, !noalias !660
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr null, ptr %i.r, align 8, !tbaa !19, !alias.scope !663, !noalias !660
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %3, i8 0, i64 25, i1 false), !alias.scope !663, !noalias !660
  invoke void @_ZN5boost6spirit7classic10tree_matchINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESN_EC2EmRKNS1_13node_val_dataISL_SN_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(41) %3)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %_ZN5boost4wave8cpplexer12lex_iteratorINS1_9lex_tokenINS0_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEEEaSERKSI_.exit
  %i.s = load ptr, ptr %3, align 8, !tbaa !68, !noalias !660 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !70, !noalias !660 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.s, %i.u
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i ], [ %i.s, %bb.h ] ; 2 uses
  call void @_ZN5boost4wave8cpplexer9lex_tokenINS0_4util13file_positionINS3_11flex_stringIcSt11char_traitsIcESaIcENS3_9CowStringINS3_22AllocatorStringStorageIcS8_EEPcEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i) #27
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.v, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !71

_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %3, align 8, !tbaa !68, !noalias !660
  br label %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.h
  %i.w = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.s, %bb.h ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i.i.i, label %_ZN5boost6spirit7classic24common_tree_match_policyINS1_15pt_match_policyINS_4wave8cpplexer12lex_iteratorINS5_9lex_tokenINS4_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESO_EESM_SP_NS1_14pt_tree_policyISQ_SP_SO_EESO_E11empty_matchEv.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !73, !noalias !660
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #31
  br label %_ZN5boost6spirit7classic24common_tree_match_policyINS1_15pt_match_policyINS_4wave8cpplexer12lex_iteratorINS5_9lex_tokenINS4_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESO_EESM_SP_NS1_14pt_tree_policyISQ_SP_SO_EESO_E11empty_matchEv.exit

bb.j:                                             ; preds = %_ZN5boost4wave8cpplexer12lex_iteratorINS1_9lex_tokenINS0_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEEEaSERKSI_.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost6spirit7classic13node_val_dataINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_5nil_tEED2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !660
  br label %.body

_ZN5boost6spirit7classic24common_tree_match_policyINS1_15pt_match_policyINS_4wave8cpplexer12lex_iteratorINS5_9lex_tokenINS4_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESO_EESM_SP_NS1_14pt_tree_policyISQ_SP_SO_EESO_E11empty_matchEv.exit: ; preds = %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !660
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !45
  %.phi.trans.insert8 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.pre9 = load ptr, ptr %.phi.trans.insert8, align 8, !tbaa !42
  br label %bb.k

bb.k:                                             ; preds = %_ZN5boost6spirit7classic24common_tree_match_policyINS1_15pt_match_policyINS_4wave8cpplexer12lex_iteratorINS5_9lex_tokenINS4_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESO_EESM_SP_NS1_14pt_tree_policyISQ_SP_SO_EESO_E11empty_matchEv.exit, %bb.d
  %i.ad = phi ptr [ %.pre9, %_ZN5boost6spirit7classic24common_tree_match_policyINS1_15pt_match_policyINS_4wave8cpplexer12lex_iteratorINS5_9lex_tokenINS4_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESO_EESM_SP_NS1_14pt_tree_policyISQ_SP_SO_EESO_E11empty_matchEv.exit ], [ null, %bb.d ]
  %i.ae = phi ptr [ %.pre, %_ZN5boost6spirit7classic24common_tree_match_policyINS1_15pt_match_policyINS_4wave8cpplexer12lex_iteratorINS5_9lex_tokenINS4_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESO_EESM_SP_NS1_14pt_tree_policyISQ_SP_SO_EESO_E11empty_matchEv.exit ], [ null, %bb.d ]
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5boost6spirit7classic9tree_nodeINS4_13node_val_dataINS2_4wave8cpplexer12lex_iteratorINS8_9lex_tokenINS7_4util13file_positionINSB_11flex_stringIcSt11char_traitsIcESaIcENSB_9CowStringINSB_22AllocatorStringStorageIcSG_EEPcEEEEEEEEEENS4_5nil_tEEEEEEEvT_SU_(ptr noundef %i.ae, ptr noundef %i.ad)
          to label %_ZSt8_DestroyIPN5boost6spirit7classic9tree_nodeINS2_13node_val_dataINS0_4wave8cpplexer12lex_iteratorINS6_9lex_tokenINS5_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEENS2_5nil_tEEEEESQ_EvT_SS_RSaIT0_E.exit.i.i unwind label %bb.m, !inline_history !58

_ZSt8_DestroyIPN5boost6spirit7classic9tree_nodeINS2_13node_val_dataINS0_4wave8cpplexer12lex_iteratorINS6_9lex_tokenINS5_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEENS2_5nil_tEEEEESQ_EvT_SS_RSaIT0_E.exit.i.i: ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !45 ; 3 uses
  %.not.i.i.i.i7 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i7, label %_ZN5boost6spirit7classic10tree_matchINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESN_ED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPN5boost6spirit7classic9tree_nodeINS2_13node_val_dataINS0_4wave8cpplexer12lex_iteratorINS6_9lex_tokenINS5_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEENS2_5nil_tEEEEESQ_EvT_SS_RSaIT0_E.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !57
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #31, !inline_history !59
  br label %_ZN5boost6spirit7classic10tree_matchINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESN_ED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #29, !inline_history !59
  unreachable

_ZN5boost6spirit7classic10tree_matchINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESN_ED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5boost6spirit7classic9tree_nodeINS2_13node_val_dataINS0_4wave8cpplexer12lex_iteratorINS6_9lex_tokenINS5_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEENS2_5nil_tEEEEESQ_EvT_SS_RSaIT0_E.exit.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.ao = load ptr, ptr %4, align 8, !tbaa !27    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i, label %_ZN5boost6spirit10multi_passISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS4_9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEEPNS4_19lex_input_interfaceISL_EEENS0_17iterator_policies14default_policyINSR_11ref_countedENSR_8no_checkENSR_19split_functor_inputENSR_15split_std_dequeEEEED2Ev.exit, label %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7releaseINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEbRT_.exit.i

_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7releaseINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEbRT_.exit.i: ; preds = %_ZN5boost6spirit7classic10tree_matchINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESN_ED2Ev.exit
  %i.ap = atomicrmw sub ptr %i.ao, i32 1 acq_rel, align 4
  %i.aq = icmp eq i32 %i.ap, 1
  br i1 %i.aq, label %bb.n, label %_ZN5boost6spirit10multi_passISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS4_9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEEPNS4_19lex_input_interfaceISL_EEENS0_17iterator_policies14default_policyINSR_11ref_countedENSR_8no_checkENSR_19split_functor_inputENSR_15split_std_dequeEEEED2Ev.exit

bb.n:                                             ; preds = %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7releaseINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEbRT_.exit.i
  %i.ar = load ptr, ptr %4, align 8, !tbaa !27    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !60 ; 3 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.thread.i, label %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.i

_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.i: ; preds = %bb.n
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !65
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.at) #27, !inline_history !67
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !27   ; 2 uses
  %i.ay = icmp eq ptr %.pr.i, null
  br i1 %i.ay, label %_ZN5boost6spirit10multi_passISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS4_9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEEPNS4_19lex_input_interfaceISL_EEENS0_17iterator_policies14default_policyINSR_11ref_countedENSR_8no_checkENSR_19split_functor_inputENSR_15split_std_dequeEEEED2Ev.exit, label %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.thread.i

_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.thread.i: ; preds = %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.i, %bb.n
  %i.az = phi ptr [ %.pr.i, %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.i ], [ %i.ar, %bb.n ] ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !68 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !70 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.bb, %i.bd
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.thread.i, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i ], [ %i.bb, %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.thread.i ] ; 2 uses
  call void @_ZN5boost4wave8cpplexer9lex_tokenINS0_4util13file_positionINS3_11flex_stringIcSt11char_traitsIcESaIcENS3_9CowStringINS3_22AllocatorStringStorageIcS8_EEPcEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i) #27
  %i.be = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.be, %i.bd
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !71

_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.ba, align 8, !tbaa !68
  br label %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i.i, %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.thread.i
  %i.bf = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.bb, %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.thread.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN5boost6spirit17iterator_policies17multi_pass_sharedISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6sharedENS1_8no_check6sharedENS1_19split_functor_input6sharedISR_EENS1_15split_std_deque6sharedISM_EEED2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !73
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bf to i64
  %i.bk = sub i64 %i.bi, %i.bj
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bk) #31
  br label %_ZN5boost6spirit17iterator_policies17multi_pass_sharedISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6sharedENS1_8no_check6sharedENS1_19split_functor_input6sharedISR_EENS1_15split_std_deque6sharedISM_EEED2Ev.exit.i

_ZN5boost6spirit17iterator_policies17multi_pass_sharedISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6sharedENS1_8no_check6sharedENS1_19split_functor_input6sharedISR_EENS1_15split_std_deque6sharedISM_EEED2Ev.exit.i: ; preds = %bb.o, %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  call void @_ZN5boost4wave8cpplexer9lex_tokenINS0_4util13file_positionINS3_11flex_stringIcSt11char_traitsIcESaIcENS3_9CowStringINS3_22AllocatorStringStorageIcS8_EEPcEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bl) #27
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef 56) #31
  br label %_ZN5boost6spirit10multi_passISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS4_9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEEPNS4_19lex_input_interfaceISL_EEENS0_17iterator_policies14default_policyINSR_11ref_countedENSR_8no_checkENSR_19split_functor_inputENSR_15split_std_dequeEEEED2Ev.exit

_ZN5boost6spirit10multi_passISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS4_9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEEPNS4_19lex_input_interfaceISL_EEENS0_17iterator_policies14default_policyINSR_11ref_countedENSR_8no_checkENSR_19split_functor_inputENSR_15split_std_dequeEEEED2Ev.exit: ; preds = %_ZN5boost6spirit7classic10tree_matchINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESN_ED2Ev.exit, %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7releaseINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEbRT_.exit.i, %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.i, %_ZN5boost6spirit17iterator_policies17multi_pass_sharedISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6sharedENS1_8no_check6sharedENS1_19split_functor_input6sharedISR_EENS1_15split_std_deque6sharedISM_EEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void

bb.p:                                             ; preds = %.body, %bb.e
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.n, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @_ZN5boost6spirit10multi_passISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS4_9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEEPNS4_19lex_input_interfaceISL_EEENS0_17iterator_policies14default_policyINSR_11ref_countedENSR_8no_checkENSR_19split_functor_inputENSR_15split_std_dequeEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost6spirit7classic10differenceINS1_11list_parserINS1_11alternativeINS4_INS4_INS4_INS1_5chlitINS_4wave8token_idEEENS6_4util11pattern_andINS6_14token_categoryEEEEENSA_IjEEEESC_EES8_EENS1_23no_tree_gen_node_parserINS1_8sequenceINSJ_INS1_11kleene_starINS1_4ruleINS1_7scannerINS6_8cpplexer12lex_iteratorINSN_9lex_tokenINS9_13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSU_EEPcEEEEEEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_18dynamic_parser_tagENS1_5nil_tEEEEES8_EES1D_EEEENS1_16no_list_endtokenENS1_22binary_parser_categoryEEENSI_IS1E_EEE5parseINSM_IS13_NS14_IS15_NS1_15pt_match_policyIS13_NS1_21node_val_data_factoryIS1B_EES1B_EES17_EEEEEENS1_13parser_resultIS1L_T_E4typeERKS1U_(ptr dead_on_unwind noalias writable sret(%"class.boost::spirit::classic::tree_match") align 8 %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::spirit::classic::sequence.464", align 8 ; 7 uses
  %.sroa.012.i.i.i = alloca %"class.boost::details::compressed_pair_imp.475", align 8 ; 5 uses
  %.sroa.07.i.i.i = alloca [112 x i8], align 8    ; 5 uses
  %.sroa.0.i.i.i = alloca %"class.boost::details::compressed_pair_imp.475", align 8 ; 5 uses
  %4 = alloca %"class.boost::wave::cpplexer::lex_iterator", align 8 ; 11 uses
  %5 = alloca %"class.boost::spirit::classic::tree_match", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.a = load ptr, ptr %2, align 8, !tbaa !34, !nonnull !122, !align !225 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !30
  store i64 %i.e, ptr %i.c, align 8, !tbaa !30
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5boost4wave8cpplexer12lex_iteratorINS1_9lex_tokenINS0_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEEEC2ERKSI_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = atomicrmw add ptr %i.b, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost4wave8cpplexer12lex_iteratorINS1_9lex_tokenINS0_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEEEC2ERKSI_.exit

_ZN5boost4wave8cpplexer12lex_iteratorINS1_9lex_tokenINS0_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEEEC2ERKSI_.exit: ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.012.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27, !noalias !668
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(89) %1, i64 64, i1 false), !noalias !668
  %.sroa.012.64..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.i.i.i, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.012.64..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !668
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(89) %1, i64 64, i1 false), !noalias !668
  %.sroa.0.64..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.64..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !668
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !668
  %.sroa.07.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.07.24..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.i.i.i, i64 88, i1 false), !noalias !668
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.012.i.i.i, i64 88, i1 false), !noalias !668
  %.sroa.414.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i8 0, ptr %.sroa.414.0..sroa_idx.i.i.i, align 8, !noalias !668
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.h, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.07.i.i.i, i64 112, i1 false), !noalias !668
  %.sroa.410.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 208
  store i8 0, ptr %.sroa.410.0..sroa_idx.i.i.i, align 8, !noalias !668
  invoke void @_ZNK5boost6spirit7classic8sequenceINS1_22refactor_action_parserINS1_10differenceINS1_11alternativeINS5_INS5_INS5_INS1_5chlitINS_4wave8token_idEEENS7_4util11pattern_andINS7_14token_categoryEEEEENSB_IjEEEESD_EES9_EENS1_23no_tree_gen_node_parserINS2_INS2_INS1_11kleene_starINS1_4ruleINS1_7scannerINS7_8cpplexer12lex_iteratorINSN_9lex_tokenINSA_13file_positionINSA_11flex_stringIcSt11char_traitsIcESaIcENSA_9CowStringINSA_22AllocatorStringStorageIcSU_EEPcEEEEEEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_18dynamic_parser_tagENS1_5nil_tEEEEES9_EES1D_EEEEEENS1_18refactor_unary_genINS1_22non_nested_refactoringEEEEENSK_INS2_IS1G_S1L_EEEEE5parseINSM_IS13_NS14_IS15_NS1_15pt_match_policyIS13_NS1_21node_val_data_factoryIS1B_EES1B_EES17_EEEEEENS1_13parser_resultIS1O_T_E4typeERKS1X_(ptr dead_on_unwind writable sret(%"class.boost::spirit::classic::tree_match") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZN5boost4wave8cpplexer12lex_iteratorINS1_9lex_tokenINS0_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEEEC2ERKSI_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !668
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.012.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.i = load i64, ptr %0, align 8, !tbaa !40
  %.not.not = icmp sgt i64 %i.i, -1
  br i1 %.not.not, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %2, align 8, !tbaa !34, !nonnull !122, !align !225
  invoke void @_ZSt4swapIN5boost4wave8cpplexer12lex_iteratorINS2_9lex_tokenINS1_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEEEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleISN_ESt18is_move_assignableISN_EEE5valueEvE4typeERSN_SW_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_ZNK5boost6spirit7classic23no_tree_gen_node_parserINS1_8sequenceINS1_11kleene_starINS1_4ruleINS1_7scannerINS_4wave8cpplexer12lex_iteratorINS8_9lex_tokenINS7_4util13file_positionINSB_11flex_stringIcSt11char_traitsIcESaIcENSB_9CowStringINSB_22AllocatorStringStorageIcSG_EEPcEEEEEEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_18dynamic_parser_tagENS1_5nil_tEEEEENS1_5chlitINS7_8token_idEEEEEE5parseINS6_ISP_NSQ_ISR_NS1_15pt_match_policyISP_NS1_21node_val_data_factoryISX_EESX_EEST_EEEEEENS1_13parser_resultIS14_T_E4typeERKS1D_(ptr dead_on_unwind nonnull writable sret(%"class.boost::spirit::classic::tree_match") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.l = load i64, ptr %5, align 8, !tbaa !40     ; 2 uses
  %i.m = icmp sgt i64 %i.l, -1
  %i.n = load i64, ptr %0, align 8
  %i.o = icmp sge i64 %i.l, %i.n
  %or.cond.not = select i1 %i.m, i1 %i.o, i1 false ; 2 uses
  br i1 %or.cond.not, label %_ZN5boost4wave8cpplexer12lex_iteratorINS1_9lex_tokenINS0_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEEEaSERKSI_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %2, align 8, !tbaa !34, !nonnull !122, !align !225
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
  call void @_ZN5boost6spirit7classic10tree_matchINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESN_ED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #27
  br label %bb.n

_ZN5boost4wave8cpplexer12lex_iteratorINS1_9lex_tokenINS0_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEEEaSERKSI_.exit: ; preds = %bb.f, %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !45
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !42
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5boost6spirit7classic9tree_nodeINS4_13node_val_dataINS2_4wave8cpplexer12lex_iteratorINS8_9lex_tokenINS7_4util13file_positionINSB_11flex_stringIcSt11char_traitsIcESaIcENSB_9CowStringINSB_22AllocatorStringStorageIcSG_EEPcEEEEEEEEEENS4_5nil_tEEEEEEEvT_SU_(ptr noundef %i.w, ptr noundef %i.y)
          to label %_ZSt8_DestroyIPN5boost6spirit7classic9tree_nodeINS2_13node_val_dataINS0_4wave8cpplexer12lex_iteratorINS6_9lex_tokenINS5_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEENS2_5nil_tEEEEESQ_EvT_SS_RSaIT0_E.exit.i.i unwind label %bb.m, !inline_history !58

_ZSt8_DestroyIPN5boost6spirit7classic9tree_nodeINS2_13node_val_dataINS0_4wave8cpplexer12lex_iteratorINS6_9lex_tokenINS5_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEENS2_5nil_tEEEEESQ_EvT_SS_RSaIT0_E.exit.i.i: ; preds = %_ZN5boost4wave8cpplexer12lex_iteratorINS1_9lex_tokenINS0_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEEEaSERKSI_.exit
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !45   ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i23, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPN5boost6spirit7classic9tree_nodeINS2_13node_val_dataINS0_4wave8cpplexer12lex_iteratorINS6_9lex_tokenINS5_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEENS2_5nil_tEEEEESQ_EvT_SS_RSaIT0_E.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !57
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #31, !inline_history !59
  br label %bb.o

bb.m:                                             ; preds = %_ZN5boost4wave8cpplexer12lex_iteratorINS1_9lex_tokenINS0_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEEEaSERKSI_.exit
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #29, !inline_history !59
  unreachable

bb.n:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.u, %bb.k ], [ %i.t, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.q

bb.o:                                             ; preds = %bb.l, %_ZSt8_DestroyIPN5boost6spirit7classic9tree_nodeINS2_13node_val_dataINS0_4wave8cpplexer12lex_iteratorINS6_9lex_tokenINS5_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEENS2_5nil_tEEEEESQ_EvT_SS_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br i1 %or.cond.not, label %.thread, label %.critedge

.thread:                                          ; preds = %bb.c, %bb.o
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !45
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !42
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5boost6spirit7classic9tree_nodeINS4_13node_val_dataINS2_4wave8cpplexer12lex_iteratorINS8_9lex_tokenINS7_4util13file_positionINSB_11flex_stringIcSt11char_traitsIcESaIcENSB_9CowStringINSB_22AllocatorStringStorageIcSG_EEPcEEEEEEEEEENS4_5nil_tEEEEEEEvT_SU_(ptr noundef %i.ai, ptr noundef %i.ak)
          to label %_ZSt8_DestroyIPN5boost6spirit7classic9tree_nodeINS2_13node_val_dataINS0_4wave8cpplexer12lex_iteratorINS6_9lex_tokenINS5_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEENS2_5nil_tEEEEESQ_EvT_SS_RSaIT0_E.exit.i.i24 unwind label %bb.p, !inline_history !58

_ZSt8_DestroyIPN5boost6spirit7classic9tree_nodeINS2_13node_val_dataINS0_4wave8cpplexer12lex_iteratorINS6_9lex_tokenINS5_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEENS2_5nil_tEEEEESQ_EvT_SS_RSaIT0_E.exit.i.i24: ; preds = %.thread
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !45 ; 3 uses
  %.not.i.i.i.i25 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i25, label %_ZN5boost6spirit7classic10tree_matchINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESN_ED2Ev.exit26, label %.split

.split:                                           ; preds = %_ZSt8_DestroyIPN5boost6spirit7classic9tree_nodeINS2_13node_val_dataINS0_4wave8cpplexer12lex_iteratorINS6_9lex_tokenINS5_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEENS2_5nil_tEEEEESQ_EvT_SS_RSaIT0_E.exit.i.i24
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !57
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.aq) #31, !inline_history !59
  br label %_ZN5boost6spirit7classic10tree_matchINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESN_ED2Ev.exit26

bb.p:                                             ; preds = %.thread
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #29, !inline_history !59
  unreachable

_ZN5boost6spirit7classic10tree_matchINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESN_ED2Ev.exit26: ; preds = %_ZSt8_DestroyIPN5boost6spirit7classic9tree_nodeINS2_13node_val_dataINS0_4wave8cpplexer12lex_iteratorINS6_9lex_tokenINS5_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEENS2_5nil_tEEEEESQ_EvT_SS_RSaIT0_E.exit.i.i24, %.split
  store i64 -1, ptr %0, align 8, !tbaa !40, !alias.scope !675
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false), !alias.scope !675
  br label %.critedge

bb.q:                                             ; preds = %bb.n, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.n ], [ %i.s, %bb.i ]
  call void @_ZN5boost6spirit7classic10tree_matchINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESN_ED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #27
  br label %bb.t

.critedge:                                        ; preds = %bb.o, %_ZN5boost6spirit7classic10tree_matchINS_4wave8cpplexer12lex_iteratorINS4_9lex_tokenINS3_4util13file_positionINS7_11flex_stringIcSt11char_traitsIcESaIcENS7_9CowStringINS7_22AllocatorStringStorageIcSC_EEPcEEEEEEEEEENS1_21node_val_data_factoryINS1_5nil_tEEESN_ED2Ev.exit26
  %i.at = load ptr, ptr %4, align 8, !tbaa !27    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i, label %_ZN5boost6spirit10multi_passISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS4_9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEEPNS4_19lex_input_interfaceISL_EEENS0_17iterator_policies14default_policyINSR_11ref_countedENSR_8no_checkENSR_19split_functor_inputENSR_15split_std_dequeEEEED2Ev.exit, label %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7releaseINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEbRT_.exit.i

_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7releaseINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEbRT_.exit.i: ; preds = %.critedge
  %i.au = atomicrmw sub ptr %i.at, i32 1 acq_rel, align 4
  %i.av = icmp eq i32 %i.au, 1
  br i1 %i.av, label %bb.r, label %_ZN5boost6spirit10multi_passISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS4_9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEEPNS4_19lex_input_interfaceISL_EEENS0_17iterator_policies14default_policyINSR_11ref_countedENSR_8no_checkENSR_19split_functor_inputENSR_15split_std_dequeEEEED2Ev.exit

bb.r:                                             ; preds = %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7releaseINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEbRT_.exit.i
  %i.aw = load ptr, ptr %4, align 8, !tbaa !27    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !60 ; 3 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.thread.i, label %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.i

_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.i: ; preds = %bb.r
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !65
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.ay) #27, !inline_history !67
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !27   ; 2 uses
  %i.bd = icmp eq ptr %.pr.i, null
  br i1 %i.bd, label %_ZN5boost6spirit10multi_passISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS4_9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEEPNS4_19lex_input_interfaceISL_EEENS0_17iterator_policies14default_policyINSR_11ref_countedENSR_8no_checkENSR_19split_functor_inputENSR_15split_std_dequeEEEED2Ev.exit, label %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.thread.i

_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.thread.i: ; preds = %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.i, %bb.r
  %i.be = phi ptr [ %.pr.i, %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.i ], [ %i.aw, %bb.r ] ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !68 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !70 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.bg, %i.bi
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.thread.i, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i ], [ %i.bg, %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.thread.i ] ; 2 uses
  call void @_ZN5boost4wave8cpplexer9lex_tokenINS0_4util13file_positionINS3_11flex_stringIcSt11char_traitsIcESaIcENS3_9CowStringINS3_22AllocatorStringStorageIcS8_EEPcEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i) #27
  %i.bj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bj, %i.bi
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !71

_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.bf, align 8, !tbaa !68
  br label %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i.i, %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.thread.i
  %i.bk = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.bg, %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.thread.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN5boost6spirit17iterator_policies17multi_pass_sharedISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6sharedENS1_8no_check6sharedENS1_19split_functor_input6sharedISR_EENS1_15split_std_deque6sharedISM_EEED2Ev.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !73
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %i.bk to i64
  %i.bp = sub i64 %i.bn, %i.bo
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bp) #31
  br label %_ZN5boost6spirit17iterator_policies17multi_pass_sharedISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6sharedENS1_8no_check6sharedENS1_19split_functor_input6sharedISR_EENS1_15split_std_deque6sharedISM_EEED2Ev.exit.i

_ZN5boost6spirit17iterator_policies17multi_pass_sharedISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6sharedENS1_8no_check6sharedENS1_19split_functor_input6sharedISR_EENS1_15split_std_deque6sharedISM_EEED2Ev.exit.i: ; preds = %bb.s, %_ZSt8_DestroyIPN5boost4wave8cpplexer9lex_tokenINS1_4util13file_positionINS4_11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS9_EEPcEEEEEEEESH_EvT_SJ_RSaIT0_E.exit.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  call void @_ZN5boost4wave8cpplexer9lex_tokenINS0_4util13file_positionINS3_11flex_stringIcSt11char_traitsIcESaIcENS3_9CowStringINS3_22AllocatorStringStorageIcS8_EEPcEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bq) #27
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef 56) #31
  br label %_ZN5boost6spirit10multi_passISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS4_9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEEPNS4_19lex_input_interfaceISL_EEENS0_17iterator_policies14default_policyINSR_11ref_countedENSR_8no_checkENSR_19split_functor_inputENSR_15split_std_dequeEEEED2Ev.exit

_ZN5boost6spirit10multi_passISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS4_9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEEPNS4_19lex_input_interfaceISL_EEENS0_17iterator_policies14default_policyINSR_11ref_countedENSR_8no_checkENSR_19split_functor_inputENSR_15split_std_dequeEEEED2Ev.exit: ; preds = %.critedge, %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7releaseINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEbRT_.exit.i, %_ZN5boost6spirit17iterator_policies17multi_pass_uniqueISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6uniqueENS1_8no_check6uniqueENS1_19split_functor_input6uniqueISR_Lb1EEENS1_15split_std_deque6uniqueISM_EELb1ELb1ELb1EE7destroyINS0_10multi_passISR_NS1_14default_policyISS_SU_SW_SZ_EEEEEEvRT_.exit.i, %_ZN5boost6spirit17iterator_policies17multi_pass_sharedISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS5_9lex_tokenINS4_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEEEPNS5_19lex_input_interfaceISM_EEENS1_11ref_counted6sharedENS1_8no_check6sharedENS1_19split_functor_input6sharedISR_EENS1_15split_std_deque6sharedISM_EEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void

bb.t:                                             ; preds = %bb.q, %bb.h
  %.pn21 = phi { ptr, i32 } [ %i.r, %bb.h ], [ %.pn.pn, %bb.q ]
  call void @_ZN5boost6spirit10multi_passISt4pairINS_4wave8cpplexer4impl25lex_iterator_functor_shimINS4_9lex_tokenINS3_4util13file_positionINS8_11flex_stringIcSt11char_traitsIcESaIcENS8_9CowStringINS8_22AllocatorStringStorageIcSD_EEPcEEEEEEEEEEPNS4_19lex_input_interfaceISL_EEENS0_17iterator_policies14default_policyINSR_11ref_countedENSR_8no_checkENSR_19split_functor_inputENSR_15split_std_dequeEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
end_hunk_1
