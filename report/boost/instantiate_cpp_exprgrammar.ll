Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/instantiate_cpp_exprgrammar?download=true
inline.NumInlined: 4215
inline.NumDeleted: 2338
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK5boost6spirit7classic11alternativeINS1_6actionINS1_5chlitINS_4wave8token_idEEEN7phoenix5actorINS8_9compositeINS8_9assign_opENS9_INS8_14closure_memberILi0ENS8_7closureINS5_8grammars8closures13closure_valueENS8_5nil_tESH_SH_SH_SH_EEEEEENS9_INSA_INSE_4impl14convert_intlitENS9_INS8_8argumentILi0EEEEESH_SH_SH_SH_SH_SH_EEEESH_SH_SH_SH_SH_EEEEEESU_E5parseINS1_7scannerISt20_List_const_iteratorINS5_8cpplexer9lex_tokenINS5_4util13file_positionINS11_11flex_stringIcSt11char_traitsIcESaIcENS11_9CowStringINS11_22AllocatorStringStorageIcS16_EEPcEEEEEEEEENS1_16scanner_policiesINS1_28skip_parser_iteration_policyINS2_INS2_IS7_S7_EES7_EENS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultISV_T_E4typeERKS1R_:bb.a

bb.v:                                             ; preds = %bb.u
  %i.bo = load ptr, ptr %i.bj, align 8, !tbaa !47 ; 4 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %_ZN5boost6spirit7classic5matchINS_4wave8cpplexer9lex_tokenINS3_4util13file_positionINS6_11flex_stringIcSt11char_traitsIcESaIcENS6_9CowStringINS6_22AllocatorStringStorageIcSB_EEPcEEEEEEEEED2Ev.exit17, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZN5boost4wave8cpplexer4impl10token_dataINS0_4util11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS8_EEPcEEEENS4_13file_positionISE_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(76) dereferenceable(76) %i.bo) #25
  %i.bq = load i8, ptr @_ZZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEvE1f, align 1, !tbaa !36, !range !62, !noundef !63
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i.i.i20, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i8 1, ptr @_ZZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEvE1f, align 1, !tbaa !36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) @_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i8 0, i64 64, i1 false)
  store i64 80, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 64), align 8, !tbaa !104
  store i64 32, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 80), align 8, !tbaa !105
  store i64 32, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 72), align 8, !tbaa !106
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 88), align 8, !tbaa !107
  br label %_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i.i.i20

_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i.i.i20: ; preds = %bb.x, %bb.w
  %i.bs = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE) #25 ; 2 uses
  %.not.i.i.i.i.i21 = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i.i.i.i21, label %_ZN5boost4wave8cpplexer4impl10token_dataINS0_4util11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS8_EEPcEEEENS4_13file_positionISE_EEEdlEPvm.exit.i23, label %bb.y

bb.y:                                             ; preds = %_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i.i.i20
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bs) #26
          to label %.noexc.i.i22 unwind label %bb.z

.noexc.i.i22:                                     ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #27
  unreachable

_ZN5boost4wave8cpplexer4impl10token_dataINS0_4util11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS8_EEPcEEEENS4_13file_positionISE_EEEdlEPvm.exit.i23: ; preds = %_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i.i.i20
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 40), align 8, !tbaa !160
  store ptr %i.bv, ptr %i.bo, align 8, !tbaa !117
  store ptr %i.bo, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 40), align 8, !tbaa !160
  %i.bw = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE) #25 ; 0 uses
  br label %_ZN5boost6spirit7classic5matchINS_4wave8cpplexer9lex_tokenINS3_4util13file_positionINS6_11flex_stringIcSt11char_traitsIcESaIcENS6_9CowStringINS6_22AllocatorStringStorageIcSB_EEPcEEEEEEEEED2Ev.exit17

_ZN5boost6spirit7classic5matchINS_4wave8cpplexer9lex_tokenINS3_4util13file_positionINS6_11flex_stringIcSt11char_traitsIcESaIcENS6_9CowStringINS6_22AllocatorStringStorageIcSB_EEPcEEEEEEEEED2Ev.exit17: ; preds = %_ZN5boost4wave8cpplexer4impl10token_dataINS0_4util11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS8_EEPcEEEENS4_13file_positionISE_EEEdlEPvm.exit.i23, %bb.v, %bb.u, %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN5boost6spirit7classic5matchINS_4wave8cpplexer9lex_tokenINS3_4util13file_positionINS6_11flex_stringIcSt11char_traitsIcESaIcENS6_9CowStringINS6_22AllocatorStringStorageIcSB_EEPcEEEEEEEEED2Ev.exit, %_ZN5boost6spirit7classic5matchINS_4wave8cpplexer9lex_tokenINS3_4util13file_positionINS6_11flex_stringIcSt11char_traitsIcESaIcENS6_9CowStringINS6_22AllocatorStringStorageIcSB_EEPcEEEEEEEEED2Ev.exit17
  %.sroa.0.0 = phi i64 [ %i.bf, %_ZN5boost6spirit7classic5matchINS_4wave8cpplexer9lex_tokenINS3_4util13file_positionINS6_11flex_stringIcSt11char_traitsIcESaIcENS6_9CowStringINS6_22AllocatorStringStorageIcSB_EEPcEEEEEEEEED2Ev.exit17 ], [ %i.u, %_ZN5boost6spirit7classic5matchINS_4wave8cpplexer9lex_tokenINS3_4util13file_positionINS6_11flex_stringIcSt11char_traitsIcESaIcENS6_9CowStringINS6_22AllocatorStringStorageIcSB_EEPcEEEEEEEEED2Ev.exit ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(20) ptr @_ZNK7phoenix9compositeINS_9assign_opENS_5actorINS_14closure_memberILi0ENS_7closureIN5boost4wave8grammars8closures13closure_valueENS_5nil_tESA_SA_SA_SA_EEEEEENS2_INS0_INS7_4impl14convert_intlitENS2_INS_8argumentILi0EEEEESA_SA_SA_SA_SA_SA_EEEESA_SA_SA_SA_SA_E4evalINS_5tupleIRKNS6_8cpplexer9lex_tokenINS6_4util13file_positionINSQ_11flex_stringIcSt11char_traitsIcESaIcENSQ_9CowStringINSQ_22AllocatorStringStorageIcSV_EEPcEEEEEEEESA_SA_SA_SA_SA_SA_EEEENS_12actor_resultISL_T_E4typeERKS18_(ptr noundef nonnull align 8 dereferenceable(18) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !209, !nonnull !63, !align !143 ; 5 uses
  %i.d = tail call noundef ptr @_ZN5boost6detail12get_tss_dataEPKv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.b, label %_ZNK7phoenix14closure_memberILi0ENS_7closureIN5boost4wave8grammars8closures13closure_valueENS_5nil_tES7_S7_S7_S7_EEE4evalINS_5tupleIRKNS3_8cpplexer9lex_tokenINS3_4util13file_positionINSE_11flex_stringIcSt11char_traitsIcESaIcENSE_9CowStringINSE_22AllocatorStringStorageIcSJ_EEPcEEEEEEEES7_S7_S7_S7_S7_S7_EEEERS6_RKT_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #28 ; 3 uses
  store ptr null, ptr %i.e, align 8, !tbaa !164
  %i.f = tail call noundef ptr @_ZN5boost6detail12get_tss_dataEPKv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.not.i.i.i = icmp eq ptr %i.f, %i.e
  br i1 %.not.i.i.i, label %_ZNK7phoenix14closure_memberILi0ENS_7closureIN5boost4wave8grammars8closures13closure_valueENS_5nil_tES7_S7_S7_S7_EEE4evalINS_5tupleIRKNS3_8cpplexer9lex_tokenINS3_4util13file_positionINSE_11flex_stringIcSt11char_traitsIcESaIcENSE_9CowStringINSE_22AllocatorStringStorageIcSJ_EEPcEEEEEEEES7_S7_S7_S7_S7_S7_EEEERS6_RKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !109
  tail call void @_ZN5boost6detail12set_tss_dataEPKvPFvPFvPvES3_ES5_S3_b(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @_ZN5boost19thread_specific_ptrIPN7phoenix13closure_frameINS1_7closureINS_4wave8grammars8closures13closure_valueENS1_5nil_tES8_S8_S8_S8_EEEEE14cleanup_callerEPFvPvESD_, ptr noundef %i.g, ptr noundef nonnull %i.e, i1 noundef zeroext true)
  br label %_ZNK7phoenix14closure_memberILi0ENS_7closureIN5boost4wave8grammars8closures13closure_valueENS_5nil_tES7_S7_S7_S7_EEE4evalINS_5tupleIRKNS3_8cpplexer9lex_tokenINS3_4util13file_positionINSE_11flex_stringIcSt11char_traitsIcESaIcENSE_9CowStringINSE_22AllocatorStringStorageIcSJ_EEPcEEEEEEEES7_S7_S7_S7_S7_S7_EEEERS6_RKT_.exit

_ZNK7phoenix14closure_memberILi0ENS_7closureIN5boost4wave8grammars8closures13closure_valueENS_5nil_tES7_S7_S7_S7_EEE4evalINS_5tupleIRKNS3_8cpplexer9lex_tokenINS3_4util13file_positionINSE_11flex_stringIcSt11char_traitsIcESaIcENSE_9CowStringINSE_22AllocatorStringStorageIcSJ_EEPcEEEEEEEES7_S7_S7_S7_S7_S7_EEEERS6_RKT_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost6detail12get_tss_dataEPKv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !164  ; 4 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !218, !noalias !840, !nonnull !63, !align !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !841
  store i8 0, ptr %i.a, align 1, !tbaa !36, !noalias !841
  %i.k = call noundef i64 @_ZN5boost4wave8grammars18intlit_grammar_genINS0_8cpplexer9lex_tokenINS0_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEEE8evaluateERKSI_Rb(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 1 dereferenceable(1) %i.a), !noalias !841
  %i.l = load i8, ptr %i.a, align 1, !tbaa !36, !range !62, !noalias !841, !noundef !63
  %i.m = trunc nuw i8 %i.l to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !841
  %spec.select = select i1 %i.m, i32 2, i32 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.k, ptr %i.n, align 8, !tbaa !26
  store i32 %spec.select, ptr %i.i, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i32 0, ptr %i.o, align 8, !tbaa !32
  ret ptr %i.i
}

declare noundef i64 @_ZN5boost4wave8grammars18intlit_grammar_genINS0_8cpplexer9lex_tokenINS0_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEEE8evaluateERKSI_Rb(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(20) ptr @_ZNK7phoenix9compositeINS_9assign_opENS_5actorINS_14closure_memberILi0ENS_7closureIN5boost4wave8grammars8closures13closure_valueENS_5nil_tESA_SA_SA_SA_EEEEEENS2_INS0_INS7_4impl13convert_chlitENS2_INS_8argumentILi0EEEEESA_SA_SA_SA_SA_SA_EEEESA_SA_SA_SA_SA_E4evalINS_5tupleIRKNS6_8cpplexer9lex_tokenINS6_4util13file_positionINSQ_11flex_stringIcSt11char_traitsIcESaIcENSQ_9CowStringINSQ_22AllocatorStringStorageIcSV_EEPcEEEEEEEESA_SA_SA_SA_SA_SA_EEEENS_12actor_resultISL_T_E4typeERKS18_(ptr noundef nonnull align 8 dereferenceable(18) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !209, !nonnull !63, !align !143 ; 5 uses
  %i.d = tail call noundef ptr @_ZN5boost6detail12get_tss_dataEPKv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.b, label %_ZNK7phoenix14closure_memberILi0ENS_7closureIN5boost4wave8grammars8closures13closure_valueENS_5nil_tES7_S7_S7_S7_EEE4evalINS_5tupleIRKNS3_8cpplexer9lex_tokenINS3_4util13file_positionINSE_11flex_stringIcSt11char_traitsIcESaIcENSE_9CowStringINSE_22AllocatorStringStorageIcSJ_EEPcEEEEEEEES7_S7_S7_S7_S7_S7_EEEERS6_RKT_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #28 ; 3 uses
  store ptr null, ptr %i.e, align 8, !tbaa !164
  %i.f = tail call noundef ptr @_ZN5boost6detail12get_tss_dataEPKv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.not.i.i.i = icmp eq ptr %i.f, %i.e
  br i1 %.not.i.i.i, label %_ZNK7phoenix14closure_memberILi0ENS_7closureIN5boost4wave8grammars8closures13closure_valueENS_5nil_tES7_S7_S7_S7_EEE4evalINS_5tupleIRKNS3_8cpplexer9lex_tokenINS3_4util13file_positionINSE_11flex_stringIcSt11char_traitsIcESaIcENSE_9CowStringINSE_22AllocatorStringStorageIcSJ_EEPcEEEEEEEES7_S7_S7_S7_S7_S7_EEEERS6_RKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !109
  tail call void @_ZN5boost6detail12set_tss_dataEPKvPFvPFvPvES3_ES5_S3_b(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @_ZN5boost19thread_specific_ptrIPN7phoenix13closure_frameINS1_7closureINS_4wave8grammars8closures13closure_valueENS1_5nil_tES8_S8_S8_S8_EEEEE14cleanup_callerEPFvPvESD_, ptr noundef %i.g, ptr noundef nonnull %i.e, i1 noundef zeroext true)
  br label %_ZNK7phoenix14closure_memberILi0ENS_7closureIN5boost4wave8grammars8closures13closure_valueENS_5nil_tES7_S7_S7_S7_EEE4evalINS_5tupleIRKNS3_8cpplexer9lex_tokenINS3_4util13file_positionINSE_11flex_stringIcSt11char_traitsIcESaIcENSE_9CowStringINSE_22AllocatorStringStorageIcSJ_EEPcEEEEEEEES7_S7_S7_S7_S7_S7_EEEERS6_RKT_.exit

_ZNK7phoenix14closure_memberILi0ENS_7closureIN5boost4wave8grammars8closures13closure_valueENS_5nil_tES7_S7_S7_S7_EEE4evalINS_5tupleIRKNS3_8cpplexer9lex_tokenINS3_4util13file_positionINSE_11flex_stringIcSt11char_traitsIcESaIcENSE_9CowStringINSE_22AllocatorStringStorageIcSJ_EEPcEEEEEEEES7_S7_S7_S7_S7_S7_EEEERS6_RKT_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost6detail12get_tss_dataEPKv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !164  ; 4 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !218, !noalias !846, !nonnull !63, !align !143 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !847
  store i32 0, ptr %i.a, align 4, !tbaa !64, !noalias !847
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47, !noalias !847
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !39, !noalias !847
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 17
  %i.o = load i8, ptr %i.n, align 1, !tbaa !26, !noalias !847
  %i.p = icmp eq i8 %i.o, 76
  br i1 %i.p, label %_ZN5boost4wave8grammars8closures7as_longERKNS2_13closure_valueE.exit.i.i.i, label %_ZN5boost4wave8grammars8closures8as_ulongERKNS2_13closure_valueE.exit.i.i.i

_ZN5boost4wave8grammars8closures7as_longERKNS2_13closure_valueE.exit.i.i.i: ; preds = %_ZNK7phoenix14closure_memberILi0ENS_7closureIN5boost4wave8grammars8closures13closure_valueENS_5nil_tES7_S7_S7_S7_EEE4evalINS_5tupleIRKNS3_8cpplexer9lex_tokenINS3_4util13file_positionINSE_11flex_stringIcSt11char_traitsIcESaIcENSE_9CowStringINSE_22AllocatorStringStorageIcSJ_EEPcEEEEEEEES7_S7_S7_S7_S7_S7_EEEERS6_RKT_.exit
  %i.q = call noundef i32 @_ZN5boost4wave8grammars17chlit_grammar_genIiNS0_8cpplexer9lex_tokenINS0_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEEE8evaluateERKSI_RNS1_11value_errorE(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.a), !noalias !847
  %i.r = sext i32 %i.q to i64
  br label %_ZNK7phoenix9assign_opclIN5boost4wave8grammars8closures13closure_valueES6_EENS_15binary_operatorIS0_T_T0_E11result_typeERS8_RS9_.exit

_ZN5boost4wave8grammars8closures8as_ulongERKNS2_13closure_valueE.exit.i.i.i: ; preds = %_ZNK7phoenix14closure_memberILi0ENS_7closureIN5boost4wave8grammars8closures13closure_valueENS_5nil_tES7_S7_S7_S7_EEE4evalINS_5tupleIRKNS3_8cpplexer9lex_tokenINS3_4util13file_positionINSE_11flex_stringIcSt11char_traitsIcESaIcENSE_9CowStringINSE_22AllocatorStringStorageIcSJ_EEPcEEEEEEEES7_S7_S7_S7_S7_S7_EEEERS6_RKT_.exit
  %i.s = call noundef i32 @_ZN5boost4wave8grammars17chlit_grammar_genIjNS0_8cpplexer9lex_tokenINS0_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEEE8evaluateERKSI_RNS1_11value_errorE(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.a), !noalias !847
  %i.t = zext i32 %i.s to i64
  br label %_ZNK7phoenix9assign_opclIN5boost4wave8grammars8closures13closure_valueES6_EENS_15binary_operatorIS0_T_T0_E11result_typeERS8_RS9_.exit

_ZNK7phoenix9assign_opclIN5boost4wave8grammars8closures13closure_valueES6_EENS_15binary_operatorIS0_T_T0_E11result_typeERS8_RS9_.exit: ; preds = %_ZN5boost4wave8grammars8closures7as_longERKNS2_13closure_valueE.exit.i.i.i, %_ZN5boost4wave8grammars8closures8as_ulongERKNS2_13closure_valueE.exit.i.i.i
  %.sink = phi i64 [ %i.r, %_ZN5boost4wave8grammars8closures7as_longERKNS2_13closure_valueE.exit.i.i.i ], [ %i.t, %_ZN5boost4wave8grammars8closures8as_ulongERKNS2_13closure_valueE.exit.i.i.i ]
  %.sink5.i.i10 = phi i32 [ 1, %_ZN5boost4wave8grammars8closures7as_longERKNS2_13closure_valueE.exit.i.i.i ], [ 2, %_ZN5boost4wave8grammars8closures8as_ulongERKNS2_13closure_valueE.exit.i.i.i ]
  %.sink4.i.i9 = load i32, ptr %i.a, align 4, !tbaa !64, !noalias !847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !847
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %.sink, ptr %i.u, align 8, !tbaa !26
  store i32 %.sink5.i.i10, ptr %i.i, align 8, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i32 %.sink4.i.i9, ptr %i.v, align 8, !tbaa !32
  ret ptr %i.i
}

declare noundef i32 @_ZN5boost4wave8grammars17chlit_grammar_genIiNS0_8cpplexer9lex_tokenINS0_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEEE8evaluateERKSI_RNS1_11value_errorE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #15

declare noundef i32 @_ZN5boost4wave8grammars17chlit_grammar_genIjNS0_8cpplexer9lex_tokenINS0_4util13file_positionINS5_11flex_stringIcSt11char_traitsIcESaIcENS5_9CowStringINS5_22AllocatorStringStorageIcSA_EEPcEEEEEEEEE8evaluateERKSI_RNS1_11value_errorE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6spirit7classic4impl15concrete_parserINS1_8sequenceINS1_4ruleINS1_7scannerISt20_List_const_iteratorINS_4wave8cpplexer9lex_tokenINS8_4util13file_positionINSB_11flex_stringIcSt11char_traitsIcESaIcENSB_9CowStringINSB_22AllocatorStringStorageIcSG_EEPcEEEEEEEEENS1_16scanner_policiesINS1_28skip_parser_iteration_policyINS1_11alternativeINSS_INS1_5chlitINS8_8token_idEEESV_EESV_EENS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEENS1_15closure_contextINS8_8grammars8closures16cpp_expr_closureEEENS1_5nil_tEEENS1_8optionalINS4_INS4_INS4_ISV_S1A_EESV_EES1A_EEEEEES13_NS16_13closure_valueEED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost6spirit7classic4impl15concrete_parserINS1_8sequenceINS1_4ruleINS1_7scannerISt20_List_const_iteratorINS_4wave8cpplexer9lex_tokenINS8_4util13file_positionINSB_11flex_stringIcSt11char_traitsIcESaIcENSB_9CowStringINSB_22AllocatorStringStorageIcSG_EEPcEEEEEEEEENS1_16scanner_policiesINS1_28skip_parser_iteration_policyINS1_11alternativeINSS_INS1_5chlitINS8_8token_idEEESV_EESV_EENS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEENS1_15closure_contextINS8_8grammars8closures16cpp_expr_closureEEENS1_5nil_tEEENS1_8optionalINS4_INS4_INS4_ISV_S1A_EESV_EES1A_EEEEEES13_NS16_13closure_valueEE16do_parse_virtualERKS13_(ptr dead_on_unwind noalias writable sret(%"class.boost::spirit::classic::match.96") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #5 comdat align 2 {
bb.a:
  %3 = alloca %"class.boost::spirit::classic::match.96", align 8 ; 4 uses
  %4 = alloca %"class.boost::spirit::classic::match.96", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !855, !nonnull !63, !align !143
  call void @_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerISt20_List_const_iteratorINS_4wave8cpplexer9lex_tokenINS7_4util13file_positionINSA_11flex_stringIcSt11char_traitsIcESaIcENSA_9CowStringINSA_22AllocatorStringStorageIcSF_EEPcEEEEEEEEENS1_16scanner_policiesINS1_28skip_parser_iteration_policyINS1_11alternativeINSR_INS1_5chlitINS7_8token_idEEESU_EESU_EENS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEENS1_15closure_contextINS7_8grammars8closures16cpp_expr_closureEEENS1_5nil_tEEERKS19_S12_S17_S18_E5parseIS12_EENS1_13parser_resultIS19_T_E4typeERKS1F_(ptr dead_on_unwind nonnull writable sret(%"class.boost::spirit::classic::match.96") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.c = load i64, ptr %4, align 8, !tbaa !147    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %.not.not.i = icmp sgt i64 %i.c, -1
  br i1 %.not.not.i, label %bb.b, label %_ZNK5boost6spirit7classic8sequenceINS1_4ruleINS1_7scannerISt20_List_const_iteratorINS_4wave8cpplexer9lex_tokenINS6_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEENS1_16scanner_policiesINS1_28skip_parser_iteration_policyINS1_11alternativeINSQ_INS1_5chlitINS6_8token_idEEEST_EEST_EENS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEENS1_15closure_contextINS6_8grammars8closures16cpp_expr_closureEEENS1_5nil_tEEENS1_8optionalINS2_INS2_INS2_IST_S18_EEST_EES18_EEEEE5parseIS11_EENS1_13parser_resultIS1E_T_E4typeERKS1H_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !201, !nonnull !63, !align !143
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.g = call i64 @_ZNK5boost6spirit7classic8sequenceINS2_INS1_5chlitINS_4wave8token_idEEENS1_4ruleINS1_7scannerISt20_List_const_iteratorINS4_8cpplexer9lex_tokenINS4_4util13file_positionINSC_11flex_stringIcSt11char_traitsIcESaIcENSC_9CowStringINSC_22AllocatorStringStorageIcSH_EEPcEEEEEEEEENS1_16scanner_policiesINS1_28skip_parser_iteration_policyINS1_11alternativeINST_IS6_S6_EES6_EENS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEENS1_15closure_contextINS4_8grammars8closures16cpp_expr_closureEEENS1_5nil_tEEEEES6_E5parseIS11_EENS1_13parser_resultIS1A_T_E4typeERKS1D_(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2) ; 2 uses
  %.not.not.i.i.i = icmp sgt i64 %i.g, -1
  br i1 %.not.not.i.i.i, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS1_5chlitINS_4wave8token_idEEENS1_4ruleINS1_7scannerISt20_List_const_iteratorINS4_8cpplexer9lex_tokenINS4_4util13file_positionINSC_11flex_stringIcSt11char_traitsIcESaIcENSC_9CowStringINSC_22AllocatorStringStorageIcSH_EEPcEEEEEEEEENS1_16scanner_policiesINS1_28skip_parser_iteration_policyINS1_11alternativeINST_IS6_S6_EES6_EENS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEENS1_15closure_contextINS4_8grammars8closures16cpp_expr_closureEEENS1_5nil_tEEEEES6_EES18_E5parseIS11_EENS1_13parser_resultIS1B_T_E4typeERKS1E_.exit.i.i, label %_ZNK5boost6spirit7classic8optionalINS1_8sequenceINS3_INS3_INS1_5chlitINS_4wave8token_idEEENS1_4ruleINS1_7scannerISt20_List_const_iteratorINS5_8cpplexer9lex_tokenINS5_4util13file_positionINSD_11flex_stringIcSt11char_traitsIcESaIcENSD_9CowStringINSD_22AllocatorStringStorageIcSI_EEPcEEEEEEEEENS1_16scanner_policiesINS1_28skip_parser_iteration_policyINS1_11alternativeINSU_IS7_S7_EES7_EENS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEENS1_15closure_contextINS5_8grammars8closures16cpp_expr_closureEEENS1_5nil_tEEEEES7_EES19_EEE5parseIS12_EENS1_13parser_resultIS1D_T_E4typeERKS1G_.exit.thread.i

_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS1_5chlitINS_4wave8token_idEEENS1_4ruleINS1_7scannerISt20_List_const_iteratorINS4_8cpplexer9lex_tokenINS4_4util13file_positionINSC_11flex_stringIcSt11char_traitsIcESaIcENSC_9CowStringINSC_22AllocatorStringStorageIcSH_EEPcEEEEEEEEENS1_16scanner_policiesINS1_28skip_parser_iteration_policyINS1_11alternativeINST_IS6_S6_EES6_EENS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEENS1_15closure_contextINS4_8grammars8closures16cpp_expr_closureEEENS1_5nil_tEEEEES6_EES18_E5parseIS11_EENS1_13parser_resultIS1B_T_E4typeERKS1E_.exit.i.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !856, !nonnull !63, !align !143
  call void @_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerISt20_List_const_iteratorINS_4wave8cpplexer9lex_tokenINS7_4util13file_positionINSA_11flex_stringIcSt11char_traitsIcESaIcENSA_9CowStringINSA_22AllocatorStringStorageIcSF_EEPcEEEEEEEEENS1_16scanner_policiesINS1_28skip_parser_iteration_policyINS1_11alternativeINSR_INS1_5chlitINS7_8token_idEEESU_EESU_EENS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEENS1_15closure_contextINS7_8grammars8closures16cpp_expr_closureEEENS1_5nil_tEEERKS19_S12_S17_S18_E5parseIS12_EENS1_13parser_resultIS19_T_E4typeERKS1F_(ptr dead_on_unwind nonnull writable sret(%"class.boost::spirit::classic::match.96") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.j = load i64, ptr %3, align 8, !tbaa !147    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %.not5.not.not.i.i.i = icmp sgt i64 %i.j, -1
  %5 = add nuw nsw i64 %i.j, %i.g
  br i1 %.not5.not.not.i.i.i, label %_ZNK5boost6spirit7classic8optionalINS1_8sequenceINS3_INS3_INS1_5chlitINS_4wave8token_idEEENS1_4ruleINS1_7scannerISt20_List_const_iteratorINS5_8cpplexer9lex_tokenINS5_4util13file_positionINSD_11flex_stringIcSt11char_traitsIcESaIcENSD_9CowStringINSD_22AllocatorStringStorageIcSI_EEPcEEEEEEEEENS1_16scanner_policiesINS1_28skip_parser_iteration_policyINS1_11alternativeINSU_IS7_S7_EES7_EENS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEENS1_15closure_contextINS5_8grammars8closures16cpp_expr_closureEEENS1_5nil_tEEEEES7_EES19_EEE5parseIS12_EENS1_13parser_resultIS1D_T_E4typeERKS1G_.exit.i.a, label %_ZNK5boost6spirit7classic8optionalINS1_8sequenceINS3_INS3_INS1_5chlitINS_4wave8token_idEEENS1_4ruleINS1_7scannerISt20_List_const_iteratorINS5_8cpplexer9lex_tokenINS5_4util13file_positionINSD_11flex_stringIcSt11char_traitsIcESaIcENSD_9CowStringINSD_22AllocatorStringStorageIcSI_EEPcEEEEEEEEENS1_16scanner_policiesINS1_28skip_parser_iteration_policyINS1_11alternativeINSU_IS7_S7_EES7_EENS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEENS1_15closure_contextINS5_8grammars8closures16cpp_expr_closureEEENS1_5nil_tEEEEES7_EES19_EEE5parseIS12_EENS1_13parser_resultIS1D_T_E4typeERKS1G_.exit.thread.i

_ZNK5boost6spirit7classic8optionalINS1_8sequenceINS3_INS3_INS1_5chlitINS_4wave8token_idEEENS1_4ruleINS1_7scannerISt20_List_const_iteratorINS5_8cpplexer9lex_tokenINS5_4util13file_positionINSD_11flex_stringIcSt11char_traitsIcESaIcENSD_9CowStringINSD_22AllocatorStringStorageIcSI_EEPcEEEEEEEEENS1_16scanner_policiesINS1_28skip_parser_iteration_policyINS1_11alternativeINSU_IS7_S7_EES7_EENS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEENS1_15closure_contextINS5_8grammars8closures16cpp_expr_closureEEENS1_5nil_tEEEEES7_EES19_EEE5parseIS12_EENS1_13parser_resultIS1D_T_E4typeERKS1G_.exit.thread.i: ; preds = %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS1_5chlitINS_4wave8token_idEEENS1_4ruleINS1_7scannerISt20_List_const_iteratorINS4_8cpplexer9lex_tokenINS4_4util13file_positionINSC_11flex_stringIcSt11char_traitsIcESaIcENSC_9CowStringINSC_22AllocatorStringStorageIcSH_EEPcEEEEEEEEENS1_16scanner_policiesINS1_28skip_parser_iteration_policyINS1_11alternativeINST_IS6_S6_EES6_EENS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEENS1_15closure_contextINS4_8grammars8closures16cpp_expr_closureEEENS1_5nil_tEEEEES6_EES18_E5parseIS11_EENS1_13parser_resultIS1B_T_E4typeERKS1E_.exit.i.i, %bb.b
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !201, !nonnull !63, !align !143
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.k, align 8, !tbaa !34
  br label %_ZNK5boost6spirit7classic8optionalINS1_8sequenceINS3_INS3_INS1_5chlitINS_4wave8token_idEEENS1_4ruleINS1_7scannerISt20_List_const_iteratorINS5_8cpplexer9lex_tokenINS5_4util13file_positionINSD_11flex_stringIcSt11char_traitsIcESaIcENSD_9CowStringINSD_22AllocatorStringStorageIcSI_EEPcEEEEEEEEENS1_16scanner_policiesINS1_28skip_parser_iteration_policyINS1_11alternativeINSU_IS7_S7_EES7_EENS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEENS1_15closure_contextINS5_8grammars8closures16cpp_expr_closureEEENS1_5nil_tEEEEES7_EES19_EEE5parseIS12_EENS1_13parser_resultIS1D_T_E4typeERKS1G_.exit.i.a

_ZNK5boost6spirit7classic8optionalINS1_8sequenceINS3_INS3_INS1_5chlitINS_4wave8token_idEEENS1_4ruleINS1_7scannerISt20_List_const_iteratorINS5_8cpplexer9lex_tokenINS5_4util13file_positionINSD_11flex_stringIcSt11char_traitsIcESaIcENSD_9CowStringINSD_22AllocatorStringStorageIcSI_EEPcEEEEEEEEENS1_16scanner_policiesINS1_28skip_parser_iteration_policyINS1_11alternativeINSU_IS7_S7_EES7_EENS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEENS1_15closure_contextINS5_8grammars8closures16cpp_expr_closureEEENS1_5nil_tEEEEES7_EES19_EEE5parseIS12_EENS1_13parser_resultIS1D_T_E4typeERKS1G_.exit.i.a: ; preds = %_ZNK5boost6spirit7classic8optionalINS1_8sequenceINS3_INS3_INS1_5chlitINS_4wave8token_idEEENS1_4ruleINS1_7scannerISt20_List_const_iteratorINS5_8cpplexer9lex_tokenINS5_4util13file_positionINSD_11flex_stringIcSt11char_traitsIcESaIcENSD_9CowStringINSD_22AllocatorStringStorageIcSI_EEPcEEEEEEEEENS1_16scanner_policiesINS1_28skip_parser_iteration_policyINS1_11alternativeINSU_IS7_S7_EES7_EENS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEENS1_15closure_contextINS5_8grammars8closures16cpp_expr_closureEEENS1_5nil_tEEEEES7_EES19_EEE5parseIS12_EENS1_13parser_resultIS1D_T_E4typeERKS1G_.exit.thread.i, %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS1_5chlitINS_4wave8token_idEEENS1_4ruleINS1_7scannerISt20_List_const_iteratorINS4_8cpplexer9lex_tokenINS4_4util13file_positionINSC_11flex_stringIcSt11char_traitsIcESaIcENSC_9CowStringINSC_22AllocatorStringStorageIcSH_EEPcEEEEEEEEENS1_16scanner_policiesINS1_28skip_parser_iteration_policyINS1_11alternativeINST_IS6_S6_EES6_EENS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEENS1_15closure_contextINS4_8grammars8closures16cpp_expr_closureEEENS1_5nil_tEEEEES6_EES18_E5parseIS11_EENS1_13parser_resultIS1B_T_E4typeERKS1E_.exit.i.i
  %.sroa.06.0.i14.i = phi i64 [ 0, %_ZNK5boost6spirit7classic8optionalINS1_8sequenceINS3_INS3_INS1_5chlitINS_4wave8token_idEEENS1_4ruleINS1_7scannerISt20_List_const_iteratorINS5_8cpplexer9lex_tokenINS5_4util13file_positionINSD_11flex_stringIcSt11char_traitsIcESaIcENSD_9CowStringINSD_22AllocatorStringStorageIcSI_EEPcEEEEEEEEENS1_16scanner_policiesINS1_28skip_parser_iteration_policyINS1_11alternativeINSU_IS7_S7_EES7_EENS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEENS1_15closure_contextINS5_8grammars8closures16cpp_expr_closureEEENS1_5nil_tEEEEES7_EES19_EEE5parseIS12_EENS1_13parser_resultIS1D_T_E4typeERKS1G_.exit.thread.i ], [ %5, %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS1_5chlitINS_4wave8token_idEEENS1_4ruleINS1_7scannerISt20_List_const_iteratorINS4_8cpplexer9lex_tokenINS4_4util13file_positionINSC_11flex_stringIcSt11char_traitsIcESaIcENSC_9CowStringINSC_22AllocatorStringStorageIcSH_EEPcEEEEEEEEENS1_16scanner_policiesINS1_28skip_parser_iteration_policyINS1_11alternativeINST_IS6_S6_EES6_EENS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEENS1_15closure_contextINS4_8grammars8closures16cpp_expr_closureEEENS1_5nil_tEEEEES6_EES18_E5parseIS11_EENS1_13parser_resultIS1B_T_E4typeERKS1E_.exit.i.i ]
  %i.l = add nuw nsw i64 %.sroa.06.0.i14.i, %i.c
  br label %_ZNK5boost6spirit7classic8sequenceINS1_4ruleINS1_7scannerISt20_List_const_iteratorINS_4wave8cpplexer9lex_tokenINS6_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEENS1_16scanner_policiesINS1_28skip_parser_iteration_policyINS1_11alternativeINSQ_INS1_5chlitINS6_8token_idEEEST_EEST_EENS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEENS1_15closure_contextINS6_8grammars8closures16cpp_expr_closureEEENS1_5nil_tEEENS1_8optionalINS2_INS2_INS2_IST_S18_EEST_EES18_EEEEE5parseIS11_EENS1_13parser_resultIS1E_T_E4typeERKS1H_.exit

_ZNK5boost6spirit7classic8sequenceINS1_4ruleINS1_7scannerISt20_List_const_iteratorINS_4wave8cpplexer9lex_tokenINS6_4util13file_positionINS9_11flex_stringIcSt11char_traitsIcESaIcENS9_9CowStringINS9_22AllocatorStringStorageIcSE_EEPcEEEEEEEEENS1_16scanner_policiesINS1_28skip_parser_iteration_policyINS1_11alternativeINSQ_INS1_5chlitINS6_8token_idEEEST_EEST_EENS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEENS1_15closure_contextINS6_8grammars8closures16cpp_expr_closureEEENS1_5nil_tEEENS1_8optionalINS2_INS2_INS2_IST_S18_EEST_EES18_EEEEE5parseIS11_EENS1_13parser_resultIS1E_T_E4typeERKS1H_.exit: ; preds = %bb.a, %_ZNK5boost6spirit7classic8optionalINS1_8sequenceINS3_INS3_INS1_5chlitINS_4wave8token_idEEENS1_4ruleINS1_7scannerISt20_List_const_iteratorINS5_8cpplexer9lex_tokenINS5_4util13file_positionINSD_11flex_stringIcSt11char_traitsIcESaIcENSD_9CowStringINSD_22AllocatorStringStorageIcSI_EEPcEEEEEEEEENS1_16scanner_policiesINS1_28skip_parser_iteration_policyINS1_11alternativeINSU_IS7_S7_EES7_EENS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEENS1_15closure_contextINS5_8grammars8closures16cpp_expr_closureEEENS1_5nil_tEEEEES7_EES19_EEE5parseIS12_EENS1_13parser_resultIS1D_T_E4typeERKS1G_.exit.i.a
  %.sroa.08.1.i = phi i64 [ %i.l, %_ZNK5boost6spirit7classic8optionalINS1_8sequenceINS3_INS3_INS1_5chlitINS_4wave8token_idEEENS1_4ruleINS1_7scannerISt20_List_const_iteratorINS5_8cpplexer9lex_tokenINS5_4util13file_positionINSD_11flex_stringIcSt11char_traitsIcESaIcENSD_9CowStringINSD_22AllocatorStringStorageIcSI_EEPcEEEEEEEEENS1_16scanner_policiesINS1_28skip_parser_iteration_policyINS1_11alternativeINSU_IS7_S7_EES7_EENS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEENS1_15closure_contextINS5_8grammars8closures16cpp_expr_closureEEENS1_5nil_tEEEEES7_EES19_EEE5parseIS12_EENS1_13parser_resultIS1D_T_E4typeERKS1G_.exit.i.a ], [ -1, %bb.a ]
  store i64 %.sroa.08.1.i, ptr %0, align 8, !tbaa !147
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.m, align 8, !tbaa !171
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.n, align 8, !tbaa !26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK5boost6spirit7classic4impl15concrete_parserINS1_8sequenceINS1_4ruleINS1_7scannerISt20_List_const_iteratorINS_4wave8cpplexer9lex_tokenINS8_4util13file_positionINSB_11flex_stringIcSt11char_traitsIcESaIcENSB_9CowStringINSB_22AllocatorStringStorageIcSG_EEPcEEEEEEEEENS1_16scanner_policiesINS1_28skip_parser_iteration_policyINS1_11alternativeINSS_INS1_5chlitINS8_8token_idEEESV_EESV_EENS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEENS1_15closure_contextINS8_8grammars8closures16cpp_expr_closureEEENS1_5nil_tEEENS1_8optionalINS4_INS4_INS4_ISV_S1A_EESV_EES1A_EEEEEES13_NS16_13closure_valueEE5cloneEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost6spirit7classic4impl15concrete_parserINS1_8sequenceINS1_4ruleINS1_7scannerISt20_List_const_iteratorINS_4wave8cpplexer9lex_tokenINS8_4util13file_positionINSB_11flex_stringIcSt11char_traitsIcESaIcENSB_9CowStringINSB_22AllocatorStringStorageIcSG_EEPcEEEEEEEEENS1_16scanner_policiesINS1_28skip_parser_iteration_policyINS1_11alternativeINSS_INS1_5chlitINS8_8token_idEEESV_EESV_EENS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEENS1_15closure_contextINS8_8grammars8closures16cpp_expr_closureEEENS1_5nil_tEEENS1_8optionalINS4_INS4_INS4_ISV_S1A_EESV_EES1A_EEEEEES13_NS16_13closure_valueEEE, i64 16), ptr %i.a, align 8, !tbaa !69
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i64 @_ZNK5boost6spirit7classic8sequenceINS2_INS1_5chlitINS_4wave8token_idEEENS1_4ruleINS1_7scannerISt20_List_const_iteratorINS4_8cpplexer9lex_tokenINS4_4util13file_positionINSC_11flex_stringIcSt11char_traitsIcESaIcENSC_9CowStringINSC_22AllocatorStringStorageIcSH_EEPcEEEEEEEEENS1_16scanner_policiesINS1_28skip_parser_iteration_policyINS1_11alternativeINST_IS6_S6_EES6_EENS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEENS1_15closure_contextINS4_8grammars8closures16cpp_expr_closureEEENS1_5nil_tEEEEES6_E5parseIS11_EENS1_13parser_resultIS1A_T_E4typeERKS1D_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::spirit::classic::match.101", align 8 ; 6 uses
  %i.a = tail call i64 @_ZNK5boost6spirit7classic8sequenceINS1_5chlitINS_4wave8token_idEEENS1_4ruleINS1_7scannerISt20_List_const_iteratorINS4_8cpplexer9lex_tokenINS4_4util13file_positionINSC_11flex_stringIcSt11char_traitsIcESaIcENSC_9CowStringINSC_22AllocatorStringStorageIcSH_EEPcEEEEEEEEENS1_16scanner_policiesINS1_28skip_parser_iteration_policyINS1_11alternativeINST_IS6_S6_EES6_EENS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEENS1_15closure_contextINS4_8grammars8closures16cpp_expr_closureEEENS1_5nil_tEEEE5parseIS11_EENS1_13parser_resultIS19_T_E4typeERKS1C_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) ; 2 uses
  %.not.not = icmp sgt i64 %i.a, -1
  br i1 %.not.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZNK5boost6spirit7classic11char_parserINS1_5chlitINS_4wave8token_idEEEE5parseINS1_7scannerISt20_List_const_iteratorINS4_8cpplexer9lex_tokenINS4_4util13file_positionINSD_11flex_stringIcSt11char_traitsIcESaIcENSD_9CowStringINSD_22AllocatorStringStorageIcSI_EEPcEEEEEEEEENS1_16scanner_policiesINS1_28skip_parser_iteration_policyINS1_11alternativeINSU_IS6_S6_EES6_EENS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS6_T_E4typeERKS14_(ptr dead_on_unwind nonnull writable sret(%"class.boost::spirit::classic::match.101") align 8 %2, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.c = load i64, ptr %2, align 8, !tbaa !158    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i8, ptr %i.d, align 8, !tbaa !159, !range !62, !noundef !63
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZN5boost6spirit7classic5matchINS_4wave8cpplexer9lex_tokenINS3_4util13file_positionINS6_11flex_stringIcSt11char_traitsIcESaIcENS6_9CowStringINS6_22AllocatorStringStorageIcSB_EEPcEEEEEEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !47   ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZN5boost6spirit7classic5matchINS_4wave8cpplexer9lex_tokenINS3_4util13file_positionINS6_11flex_stringIcSt11char_traitsIcESaIcENS6_9CowStringINS6_22AllocatorStringStorageIcSB_EEPcEEEEEEEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.j = atomicrmw sub ptr %i.i, i32 1 acq_rel, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.e, label %_ZN5boost6spirit7classic5matchINS_4wave8cpplexer9lex_tokenINS3_4util13file_positionINS6_11flex_stringIcSt11char_traitsIcESaIcENS6_9CowStringINS6_22AllocatorStringStorageIcSB_EEPcEEEEEEEEED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !47   ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN5boost6spirit7classic5matchINS_4wave8cpplexer9lex_tokenINS3_4util13file_positionINS6_11flex_stringIcSt11char_traitsIcESaIcENS6_9CowStringINS6_22AllocatorStringStorageIcSB_EEPcEEEEEEEEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5boost4wave8cpplexer4impl10token_dataINS0_4util11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS8_EEPcEEEENS4_13file_positionISE_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(76) dereferenceable(76) %i.l) #25
  %i.n = load i8, ptr @_ZZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEvE1f, align 1, !tbaa !36, !range !62, !noundef !63
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr @_ZZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEvE1f, align 1, !tbaa !36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) @_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i8 0, i64 64, i1 false)
  store i64 80, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 64), align 8, !tbaa !104
  store i64 32, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 80), align 8, !tbaa !105
  store i64 32, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 72), align 8, !tbaa !106
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 88), align 8, !tbaa !107
  br label %_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i.i.i

_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i.i.i: ; preds = %bb.g, %bb.f
  %i.p = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE) #25 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5boost4wave8cpplexer4impl10token_dataINS0_4util11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS8_EEPcEEEENS4_13file_positionISE_EEEdlEPvm.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.p) #26
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #27
  unreachable

_ZN5boost4wave8cpplexer4impl10token_dataINS0_4util11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS8_EEPcEEEENS4_13file_positionISE_EEEdlEPvm.exit.i: ; preds = %_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i.i.i
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 40), align 8, !tbaa !160
  store ptr %i.s, ptr %i.l, align 8, !tbaa !117
  store ptr %i.l, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 40), align 8, !tbaa !160
  %i.t = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE) #25 ; 0 uses
  br label %_ZN5boost6spirit7classic5matchINS_4wave8cpplexer9lex_tokenINS3_4util13file_positionINS6_11flex_stringIcSt11char_traitsIcESaIcENS6_9CowStringINS6_22AllocatorStringStorageIcSB_EEPcEEEEEEEEED2Ev.exit

_ZN5boost6spirit7classic5matchINS_4wave8cpplexer9lex_tokenINS3_4util13file_positionINS6_11flex_stringIcSt11char_traitsIcESaIcENS6_9CowStringINS6_22AllocatorStringStorageIcSB_EEPcEEEEEEEEED2Ev.exit: ; preds = %_ZN5boost4wave8cpplexer4impl10token_dataINS0_4util11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS8_EEPcEEEENS4_13file_positionISE_EEEdlEPvm.exit.i, %bb.e, %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %.not7.not.not = icmp sgt i64 %i.c, -1
  %i.u = add nsw i64 %i.c, %i.a
  %spec.select = select i1 %.not7.not.not, i64 %i.u, i64 -1
  br label %.thread

.thread:                                          ; preds = %_ZN5boost6spirit7classic5matchINS_4wave8cpplexer9lex_tokenINS3_4util13file_positionINS6_11flex_stringIcSt11char_traitsIcESaIcENS6_9CowStringINS6_22AllocatorStringStorageIcSB_EEPcEEEEEEEEED2Ev.exit, %bb.a
  %.sroa.011.1 = phi i64 [ %spec.select, %_ZN5boost6spirit7classic5matchINS_4wave8cpplexer9lex_tokenINS3_4util13file_positionINS6_11flex_stringIcSt11char_traitsIcESaIcENS6_9CowStringINS6_22AllocatorStringStorageIcSB_EEPcEEEEEEEEED2Ev.exit ], [ -1, %bb.a ]
  ret i64 %.sroa.011.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i64 @_ZNK5boost6spirit7classic8sequenceINS1_5chlitINS_4wave8token_idEEENS1_4ruleINS1_7scannerISt20_List_const_iteratorINS4_8cpplexer9lex_tokenINS4_4util13file_positionINSC_11flex_stringIcSt11char_traitsIcESaIcENSC_9CowStringINSC_22AllocatorStringStorageIcSH_EEPcEEEEEEEEENS1_16scanner_policiesINS1_28skip_parser_iteration_policyINS1_11alternativeINST_IS6_S6_EES6_EENS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEENS1_15closure_contextINS4_8grammars8closures16cpp_expr_closureEEENS1_5nil_tEEEE5parseIS11_EENS1_13parser_resultIS19_T_E4typeERKS1C_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::spirit::classic::match.101", align 8 ; 6 uses
  %3 = alloca %"class.boost::spirit::classic::match.96", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZNK5boost6spirit7classic11char_parserINS1_5chlitINS_4wave8token_idEEEE5parseINS1_7scannerISt20_List_const_iteratorINS4_8cpplexer9lex_tokenINS4_4util13file_positionINSD_11flex_stringIcSt11char_traitsIcESaIcENSD_9CowStringINSD_22AllocatorStringStorageIcSI_EEPcEEEEEEEEENS1_16scanner_policiesINS1_28skip_parser_iteration_policyINS1_11alternativeINSU_IS6_S6_EES6_EENS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS6_T_E4typeERKS14_(ptr dead_on_unwind nonnull writable sret(%"class.boost::spirit::classic::match.101") align 8 %2, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.a = load i64, ptr %2, align 8, !tbaa !158    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !159, !range !62, !noundef !63
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN5boost6spirit7classic5matchINS_4wave8cpplexer9lex_tokenINS3_4util13file_positionINS6_11flex_stringIcSt11char_traitsIcESaIcENS6_9CowStringINS6_22AllocatorStringStorageIcSB_EEPcEEEEEEEEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47   ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZN5boost6spirit7classic5matchINS_4wave8cpplexer9lex_tokenINS3_4util13file_positionINS6_11flex_stringIcSt11char_traitsIcESaIcENS6_9CowStringINS6_22AllocatorStringStorageIcSB_EEPcEEEEEEEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.h = atomicrmw sub ptr %i.g, i32 1 acq_rel, align 4
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.d, label %_ZN5boost6spirit7classic5matchINS_4wave8cpplexer9lex_tokenINS3_4util13file_positionINS6_11flex_stringIcSt11char_traitsIcESaIcENS6_9CowStringINS6_22AllocatorStringStorageIcSB_EEPcEEEEEEEEED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !47   ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZN5boost6spirit7classic5matchINS_4wave8cpplexer9lex_tokenINS3_4util13file_positionINS6_11flex_stringIcSt11char_traitsIcESaIcENS6_9CowStringINS6_22AllocatorStringStorageIcSB_EEPcEEEEEEEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5boost4wave8cpplexer4impl10token_dataINS0_4util11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS8_EEPcEEEENS4_13file_positionISE_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(76) dereferenceable(76) %i.j) #25
  %i.l = load i8, ptr @_ZZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEvE1f, align 1, !tbaa !36, !range !62, !noundef !63
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr @_ZZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEvE1f, align 1, !tbaa !36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) @_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i8 0, i64 64, i1 false)
  store i64 80, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 64), align 8, !tbaa !104
  store i64 32, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 80), align 8, !tbaa !105
  store i64 32, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 72), align 8, !tbaa !106
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 88), align 8, !tbaa !107
  br label %_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i.i.i

_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i.i.i: ; preds = %bb.f, %bb.e
  %i.n = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE) #25 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5boost4wave8cpplexer4impl10token_dataINS0_4util11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS8_EEPcEEEENS4_13file_positionISE_EEEdlEPvm.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.n) #26
          to label %.noexc.i.i unwind label %bb.h

.noexc.i.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #27
  unreachable

_ZN5boost4wave8cpplexer4impl10token_dataINS0_4util11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS8_EEPcEEEENS4_13file_positionISE_EEEdlEPvm.exit.i: ; preds = %_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE8get_poolEv.exit.i.i.i
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 40), align 8, !tbaa !160
  store ptr %i.q, ptr %i.j, align 8, !tbaa !117
  store ptr %i.j, ptr getelementptr inbounds nuw (i8, ptr @_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE, i64 40), align 8, !tbaa !160
  %i.r = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN5boost14singleton_poolINS_4wave8cpplexer4impl14token_data_tagELj80ENS_33default_user_allocator_new_deleteESt5mutexLj32ELj0EE7storageE) #25 ; 0 uses
  br label %_ZN5boost6spirit7classic5matchINS_4wave8cpplexer9lex_tokenINS3_4util13file_positionINS6_11flex_stringIcSt11char_traitsIcESaIcENS6_9CowStringINS6_22AllocatorStringStorageIcSB_EEPcEEEEEEEEED2Ev.exit

_ZN5boost6spirit7classic5matchINS_4wave8cpplexer9lex_tokenINS3_4util13file_positionINS6_11flex_stringIcSt11char_traitsIcESaIcENS6_9CowStringINS6_22AllocatorStringStorageIcSB_EEPcEEEEEEEEED2Ev.exit: ; preds = %_ZN5boost4wave8cpplexer4impl10token_dataINS0_4util11flex_stringIcSt11char_traitsIcESaIcENS4_9CowStringINS4_22AllocatorStringStorageIcS8_EEPcEEEENS4_13file_positionISE_EEEdlEPvm.exit.i, %bb.d, %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %.not.not = icmp sgt i64 %i.a, -1
  br i1 %.not.not, label %bb.i, label %.thread

bb.i:                                             ; preds = %_ZN5boost6spirit7classic5matchINS_4wave8cpplexer9lex_tokenINS3_4util13file_positionINS6_11flex_stringIcSt11char_traitsIcESaIcENS6_9CowStringINS6_22AllocatorStringStorageIcSB_EEPcEEEEEEEEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !857, !nonnull !63, !align !143
  call void @_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerISt20_List_const_iteratorINS_4wave8cpplexer9lex_tokenINS7_4util13file_positionINSA_11flex_stringIcSt11char_traitsIcESaIcENSA_9CowStringINSA_22AllocatorStringStorageIcSF_EEPcEEEEEEEEENS1_16scanner_policiesINS1_28skip_parser_iteration_policyINS1_11alternativeINSR_INS1_5chlitINS7_8token_idEEESU_EESU_EENS1_16iteration_policyEEENS1_12match_policyENS1_13action_policyEEEEENS1_15closure_contextINS7_8grammars8closures16cpp_expr_closureEEENS1_5nil_tEEERKS19_S12_S17_S18_E5parseIS12_EENS1_13parser_resultIS19_T_E4typeERKS1F_(ptr dead_on_unwind nonnull writable sret(%"class.boost::spirit::classic::match.96") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.u = load i64, ptr %3, align 8, !tbaa !147    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %.not7.not.not = icmp sgt i64 %i.u, -1
  %i.v = add nsw i64 %i.u, %i.a
  %spec.select = select i1 %.not7.not.not, i64 %i.v, i64 -1
  br label %.thread

end_hunk_0
