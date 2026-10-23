Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/xml_grammar?download=true
inline.NumInlined: 2783
inline.NumDeleted: 1517
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK5boost6spirit7classic4impl15concrete_parserINS1_8sequenceINS4_INS4_INS4_INS4_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEENS1_6actionINS1_10int_parserIiLi10ELj1ELin1EEENS_7archive3xml11assign_implIsEEEEEESW_EESQ_SR_E16do_parse_virtualERKSQ_:bb.a
bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21, !noalias !429
  call void @_ZNK5boost6spirit7classic4impl15int_parser_implIiLi10ELj1ELin1EE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS4_T_E4typeERKSO_(ptr dead_on_unwind nonnull writable sret(%"class.boost::spirit::classic::match.511") align 8 %3, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21, !noalias !429
  %i.c = load i64, ptr %3, align 8, !tbaa !148, !alias.scope !428 ; 2 uses
  %.not.not.i.i.i = icmp sgt i64 %i.c, -1
  br i1 %.not.not.i.i.i, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_EENS1_5chlitIwEEEENS1_6actionINS1_10int_parserIiLi10ELj1ELin1EEENS_7archive3xml11assign_implIsEEEEE5parseISO_EENS1_13parser_resultIS14_T_E4typeERKS17_.exit.i, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_EENS1_5chlitIwEEEENS1_6actionINS1_10int_parserIiLi10ELj1ELin1EEENS_7archive3xml11assign_implIsEEEEE5parseISO_EENS1_13parser_resultIS14_T_E4typeERKS17_.exit.thread15.i

_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_EENS1_5chlitIwEEEENS1_6actionINS1_10int_parserIiLi10ELj1ELin1EEENS_7archive3xml11assign_implIsEEEEE5parseISO_EENS1_13parser_resultIS14_T_E4typeERKS17_.exit.thread15.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_EENS1_5chlitIwEEEENS1_6actionINS1_10int_parserIiLi10ELj1ELin1EEENS_7archive3xml11assign_implIsEEEEEESU_E5parseISO_EENS1_13parser_resultIS15_T_E4typeERKS18_.exit

_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_EENS1_5chlitIwEEEENS1_6actionINS1_10int_parserIiLi10ELj1ELin1EEENS_7archive3xml11assign_implIsEEEEE5parseISO_EENS1_13parser_resultIS14_T_E4typeERKS17_.exit.i: ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i32, ptr %i.d, align 4, !tbaa !65, !alias.scope !428
  %i.g = trunc i32 %i.f to i16
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !432, !noalias !428, !nonnull !101, !align !433
  store i16 %i.g, ptr %i.h, align 2, !tbaa !434
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.i = load ptr, ptr %1, align 8, !tbaa !100, !noalias !435, !nonnull !101, !align !102 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !67, !noalias !435 ; 3 uses
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !67, !noalias !435
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_EENS1_5chlitIwEEEENS1_6actionINS1_10int_parserIiLi10ELj1ELin1EEENS_7archive3xml11assign_implIsEEEEEESU_E5parseISO_EENS1_13parser_resultIS15_T_E4typeERKS18_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_EENS1_5chlitIwEEEENS1_6actionINS1_10int_parserIiLi10ELj1ELin1EEENS_7archive3xml11assign_implIsEEEEE5parseISO_EENS1_13parser_resultIS14_T_E4typeERKS17_.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load i8, ptr %i.k, align 1, !tbaa !54, !noalias !435
  %i.p = sext i8 %i.o to i32
  %i.q = load i32, ptr %i.n, align 8, !tbaa !121, !noalias !435
  %i.r = icmp eq i32 %i.q, %i.p
  br i1 %i.r, label %bb.d, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_EENS1_5chlitIwEEEENS1_6actionINS1_10int_parserIiLi10ELj1ELin1EEENS_7archive3xml11assign_implIsEEEEEESU_E5parseISO_EENS1_13parser_resultIS15_T_E4typeERKS18_.exit

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store ptr %i.s, ptr %i.i, align 8, !tbaa !103, !noalias !435
  %i.t = add nuw nsw i64 %i.b, 1
  %i.u = add nuw nsw i64 %i.t, %i.c
  br label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_EENS1_5chlitIwEEEENS1_6actionINS1_10int_parserIiLi10ELj1ELin1EEENS_7archive3xml11assign_implIsEEEEEESU_E5parseISO_EENS1_13parser_resultIS15_T_E4typeERKS18_.exit

_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_EENS1_5chlitIwEEEENS1_6actionINS1_10int_parserIiLi10ELj1ELin1EEENS_7archive3xml11assign_implIsEEEEEESU_E5parseISO_EENS1_13parser_resultIS15_T_E4typeERKS18_.exit: ; preds = %bb.a, %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_EENS1_5chlitIwEEEENS1_6actionINS1_10int_parserIiLi10ELj1ELin1EEENS_7archive3xml11assign_implIsEEEEE5parseISO_EENS1_13parser_resultIS14_T_E4typeERKS17_.exit.thread15.i, %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_EENS1_5chlitIwEEEENS1_6actionINS1_10int_parserIiLi10ELj1ELin1EEENS_7archive3xml11assign_implIsEEEEE5parseISO_EENS1_13parser_resultIS14_T_E4typeERKS17_.exit.i, %bb.c, %bb.d
  %.sroa.09.1.i = phi i64 [ %i.u, %bb.d ], [ -1, %bb.a ], [ -1, %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_EENS1_5chlitIwEEEENS1_6actionINS1_10int_parserIiLi10ELj1ELin1EEENS_7archive3xml11assign_implIsEEEEE5parseISO_EENS1_13parser_resultIS14_T_E4typeERKS17_.exit.thread15.i ], [ -1, %bb.c ], [ -1, %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_EENS1_5chlitIwEEEENS1_6actionINS1_10int_parserIiLi10ELj1ELin1EEENS_7archive3xml11assign_implIsEEEEE5parseISO_EENS1_13parser_resultIS14_T_E4typeERKS17_.exit.i ]
  ret i64 %.sroa.09.1.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK5boost6spirit7classic4impl15concrete_parserINS1_8sequenceINS4_INS4_INS4_INS4_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEENS1_6actionINS1_10int_parserIiLi10ELj1ELin1EEENS_7archive3xml11assign_implIsEEEEEESW_EESQ_SR_E5cloneEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #22 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost6spirit7classic4impl15concrete_parserINS1_8sequenceINS4_INS4_INS4_INS4_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEENS1_6actionINS1_10int_parserIiLi10ELj1ELin1EEENS_7archive3xml11assign_implIsEEEEEESW_EESQ_SR_EE, i64 16), ptr %i.a, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i64 @_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_EENS1_5chlitIwEEE5parseISO_EENS1_13parser_resultISV_T_E4typeERKSY_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !117    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !118  ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !100, !nonnull !101, !align !102 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not15.i.i.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not15.i.i.i.i.i.i, label %_ZNK5boost6spirit7classic6strlitIPKcE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.thread14.i.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.a
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !67
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %.lr.ph.preheader.i.i.i.i.i.i
  %i.i = phi ptr [ %i.o, %bb.c ], [ %.pre.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  %.016.i.i.i.i.i.i = phi ptr [ %i.n, %bb.c ], [ %i.a, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !67
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_E5parseISO_EENS1_13parser_resultISS_T_E4typeERKSV_.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.l = load i8, ptr %.016.i.i.i.i.i.i, align 1, !tbaa !54
  %i.m = load i8, ptr %i.i, align 1, !tbaa !54
  %.not13.i.i.i.i.i.i = icmp eq i8 %i.l, %i.m
  br i1 %.not13.i.i.i.i.i.i, label %bb.c, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_E5parseISO_EENS1_13parser_resultISS_T_E4typeERKSV_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i, i64 1 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  store ptr %i.o, ptr %i.d, align 8, !tbaa !103
  %.not.i.i.i.i.i.i = icmp eq ptr %i.n, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZNK5boost6spirit7classic6strlitIPKcE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !25

_ZNK5boost6spirit7classic6strlitIPKcE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.i.i: ; preds = %bb.c
  %.not.not.i.i = icmp sgt i64 %i.g, -1
  br i1 %.not.not.i.i, label %_ZNK5boost6spirit7classic6strlitIPKcE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.thread14.i.i, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_E5parseISO_EENS1_13parser_resultISS_T_E4typeERKSV_.exit.thread

_ZNK5boost6spirit7classic6strlitIPKcE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.thread14.i.i: ; preds = %_ZNK5boost6spirit7classic6strlitIPKcE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.i.i, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !151, !nonnull !101, !align !102
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !71   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_E5parseISO_EENS1_13parser_resultISS_T_E4typeERKSV_.exit.thread, label %_ZNK5boost6spirit7classic8sequenceINS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEE5parseISO_EENS1_13parser_resultISR_T_E4typeERKSU_.exit.i

_ZNK5boost6spirit7classic8sequenceINS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEE5parseISO_EENS1_13parser_resultISR_T_E4typeERKSU_.exit.i: ; preds = %_ZNK5boost6spirit7classic6strlitIPKcE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.thread14.i.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !48
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call i64 %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !436 ; 2 uses
  %.not5.not.not.i.i = icmp sgt i64 %i.v, -1
  %i.w = add nsw i64 %i.v, %i.g
  %spec.select.i.i = select i1 %.not5.not.not.i.i, i64 %i.w, i64 -1 ; 2 uses
  %.not.not.i = icmp sgt i64 %spec.select.i.i, -1
  br i1 %.not.not.i, label %bb.d, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_E5parseISO_EENS1_13parser_resultISS_T_E4typeERKSV_.exit.thread

bb.d:                                             ; preds = %_ZNK5boost6spirit7classic8sequenceINS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEE5parseISO_EENS1_13parser_resultISR_T_E4typeERKSU_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !441, !nonnull !101, !align !102
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !71   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_E5parseISO_EENS1_13parser_resultISS_T_E4typeERKSV_.exit.thread, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_E5parseISO_EENS1_13parser_resultISS_T_E4typeERKSV_.exit

_ZNK5boost6spirit7classic8sequenceINS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_E5parseISO_EENS1_13parser_resultISS_T_E4typeERKSV_.exit: ; preds = %bb.d
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !48
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call i64 %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !437 ; 2 uses
  %.not5.not.not.i = icmp sgt i64 %i.ad, -1
  %i.ae = add nsw i64 %i.ad, %spec.select.i.i
  %spec.select.i = select i1 %.not5.not.not.i, i64 %i.ae, i64 -1 ; 2 uses
  %.not.not = icmp sgt i64 %spec.select.i, -1
  br i1 %.not.not, label %bb.e, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_E5parseISO_EENS1_13parser_resultISS_T_E4typeERKSV_.exit.thread

bb.e:                                             ; preds = %_ZNK5boost6spirit7classic8sequenceINS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_E5parseISO_EENS1_13parser_resultISS_T_E4typeERKSV_.exit
  %i.af = load ptr, ptr %1, align 8, !tbaa !100, !noalias !442, !nonnull !101, !align !102 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !67, !noalias !442 ; 3 uses
  %i.ah = load ptr, ptr %i.h, align 8, !tbaa !67, !noalias !442
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_E5parseISO_EENS1_13parser_resultISS_T_E4typeERKSV_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = load i8, ptr %i.ag, align 1, !tbaa !54, !noalias !442
  %i.al = sext i8 %i.ak to i32
  %i.am = load i32, ptr %i.aj, align 8, !tbaa !121, !noalias !442
  %i.an = icmp eq i32 %i.am, %i.al
  br i1 %i.an, label %bb.g, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_E5parseISO_EENS1_13parser_resultISS_T_E4typeERKSV_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  store ptr %i.ao, ptr %i.af, align 8, !tbaa !103, !noalias !442
  %i.ap = add nuw nsw i64 %spec.select.i, 1
  br label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_E5parseISO_EENS1_13parser_resultISS_T_E4typeERKSV_.exit.thread

_ZNK5boost6spirit7classic8sequenceINS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_E5parseISO_EENS1_13parser_resultISS_T_E4typeERKSV_.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.b, %bb.f, %bb.e, %_ZNK5boost6spirit7classic6strlitIPKcE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.i.i, %_ZNK5boost6spirit7classic6strlitIPKcE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.thread14.i.i, %_ZNK5boost6spirit7classic8sequenceINS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEE5parseISO_EENS1_13parser_resultISR_T_E4typeERKSU_.exit.i, %bb.d, %_ZNK5boost6spirit7classic8sequenceINS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_E5parseISO_EENS1_13parser_resultISS_T_E4typeERKSV_.exit, %bb.g
  %.sroa.09.1 = phi i64 [ %i.ap, %bb.g ], [ -1, %bb.e ], [ -1, %_ZNK5boost6spirit7classic8sequenceINS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_E5parseISO_EENS1_13parser_resultISS_T_E4typeERKSV_.exit ], [ -1, %bb.d ], [ -1, %_ZNK5boost6spirit7classic8sequenceINS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEE5parseISO_EENS1_13parser_resultISR_T_E4typeERKSU_.exit.i ], [ -1, %_ZNK5boost6spirit7classic6strlitIPKcE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.thread14.i.i ], [ -1, %_ZNK5boost6spirit7classic6strlitIPKcE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.i.i ], [ -1, %bb.f ], [ -1, %bb.b ], [ -1, %.lr.ph.i.i.i.i.i.i ]
  ret i64 %.sroa.09.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost6spirit7classic4impl15int_parser_implIiLi10ELj1ELin1EE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS4_T_E4typeERKSO_(ptr dead_on_unwind noalias writable sret(%"class.boost::spirit::classic::match.511") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !100, !nonnull !101, !align !102 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !67
  %i.e = icmp eq ptr %i.c, %i.d
  %i.f = ptrtoint ptr %i.c to i64
  br i1 %i.e, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i8, ptr %i.c, align 1, !tbaa !54    ; 2 uses
  switch i8 %i.g, label %_ZN5boost6spirit7classic4impl12extract_signINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEEbRKT_Rm.exit [
    i8 45, label %bb.c
    i8 43, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !103
  br label %_ZN5boost6spirit7classic4impl12extract_signINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEEbRKT_Rm.exit

_ZN5boost6spirit7classic4impl12extract_signINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEEbRKT_Rm.exit: ; preds = %bb.b, %bb.c
  %i.i = phi ptr [ %i.c, %bb.b ], [ %i.h, %bb.c ] ; 3 uses
  %.125 = phi i64 [ 0, %bb.b ], [ 1, %bb.c ]      ; 2 uses
  %i.j = icmp eq i8 %i.g, 45
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !67
  %i.l = icmp eq ptr %i.i, %i.k                   ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.h

bb.d:                                             ; preds = %_ZN5boost6spirit7classic4impl12extract_signINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEEbRKT_Rm.exit
  br i1 %i.l, label %.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.g
  %.226 = phi i64 [ %i.w, %bb.g ], [ %.125, %bb.d ] ; 2 uses
  %.1 = phi i32 [ %4, %bb.g ], [ 0, %bb.d ]       ; 3 uses
  %i.m = phi ptr [ %i.v, %bb.g ], [ %i.i, %bb.d ] ; 2 uses
  %.011.i.a = phi i64 [ %i.u, %bb.g ], [ 0, %bb.d ] ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !54    ; 2 uses
  %i.o = sext i8 %i.n to i32                      ; 2 uses
  %i.p = add i8 %i.n, -48
  %isdigit.i.i.i = icmp ult i8 %i.p, 10
  br i1 %isdigit.i.i.i, label %bb.e, label %_ZN5boost6spirit7classic4impl11extract_intILi10ELj1ELin1ENS2_19negative_accumulateIiLi10EEEE1fIKNS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEiEEbRT_RT0_Rm.exit

bb.e:                                             ; preds = %.lr.ph.i
  %i.q = icmp slt i32 %.1, -214748364
  br i1 %i.q, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = mul nsw i32 %.1, 10                      ; 2 uses
  %3 = add nuw i32 %i.o, 2147483600
  %i.s = icmp slt i32 %i.r, %3
  br i1 %i.s, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = sub i32 %i.r, %i.o
  %4 = add i32 %i.t, 48                           ; 2 uses
  %i.u = add i64 %.011.i.a, 1                     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 3 uses
  store ptr %i.v, ptr %i.a, align 8, !tbaa !103
  %i.w = add i64 %.226, 1                         ; 2 uses
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !67
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %_ZN5boost6spirit7classic4impl11extract_intILi10ELj1ELin1ENS2_19negative_accumulateIiLi10EEEE1fIKNS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEiEEbRT_RT0_Rm.exit, label %.lr.ph.i, !llvm.loop !443

bb.h:                                             ; preds = %_ZN5boost6spirit7classic4impl12extract_signINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEEbRKT_Rm.exit
  br i1 %i.l, label %.thread, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.h, %bb.k
  %.529 = phi i64 [ %i.al, %bb.k ], [ %.125, %bb.h ] ; 2 uses
  %.4 = phi i32 [ %i.ai, %bb.k ], [ 0, %bb.h ]    ; 3 uses
  %i.z = phi ptr [ %i.ak, %bb.k ], [ %i.i, %bb.h ] ; 2 uses
  %.011.i13 = phi i64 [ %i.aj, %bb.k ], [ 0, %bb.h ] ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !54   ; 2 uses
  %i.ab = sext i8 %i.aa to i32                    ; 2 uses
  %i.ac = add i8 %i.aa, -48
  %isdigit.i.i.i14 = icmp ult i8 %i.ac, 10
  br i1 %isdigit.i.i.i14, label %bb.i, label %.critedge.loopexit.i15

bb.i:                                             ; preds = %.lr.ph.i12
  %i.ad = icmp sgt i32 %.4, 214748364
  br i1 %i.ad, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = mul nsw i32 %.4, 10                     ; 2 uses
  %i.af = sub nuw i32 -2147483601, %i.ab
  %i.ag = icmp sgt i32 %i.ae, %i.af
  br i1 %i.ag, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = add i32 %i.ae, -48
  %i.ai = add i32 %i.ah, %i.ab                    ; 2 uses
  %i.aj = add i64 %.011.i13, 1                    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 3 uses
  store ptr %i.ak, ptr %i.a, align 8, !tbaa !103
  %i.al = add i64 %.529, 1                        ; 2 uses
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !67
  %i.an = icmp eq ptr %i.ak, %i.am
  br i1 %i.an, label %.critedge.loopexit.i15, label %.lr.ph.i12, !llvm.loop !444

.critedge.loopexit.i15:                           ; preds = %bb.k, %.lr.ph.i12
  %.630 = phi i64 [ %i.al, %bb.k ], [ %.529, %.lr.ph.i12 ]
  %.5 = phi i32 [ %i.ai, %bb.k ], [ %.4, %.lr.ph.i12 ]
  %.0.lcssa.ph.i16 = phi i64 [ %i.aj, %bb.k ], [ %.011.i13, %.lr.ph.i12 ]
  %.not = icmp eq i64 %.0.lcssa.ph.i16, 0
  br i1 %.not, label %.thread, label %bb.l

_ZN5boost6spirit7classic4impl11extract_intILi10ELj1ELin1ENS2_19negative_accumulateIiLi10EEEE1fIKNS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEiEEbRT_RT0_Rm.exit: ; preds = %.lr.ph.i, %bb.g
  %.327 = phi i64 [ %i.w, %bb.g ], [ %.226, %.lr.ph.i ]
  %.2 = phi i32 [ %4, %bb.g ], [ %.1, %.lr.ph.i ]
  %.0.lcssa.ph.i = phi i64 [ %i.u, %bb.g ], [ %.011.i.a, %.lr.ph.i ]
  %.not40 = icmp eq i64 %.0.lcssa.ph.i, 0
  br i1 %.not40, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.i, %bb.j, %bb.f, %bb.e, %_ZN5boost6spirit7classic4impl11extract_intILi10ELj1ELin1ENS2_19negative_accumulateIiLi10EEEE1fIKNS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEiEEbRT_RT0_Rm.exit, %.critedge.loopexit.i15, %bb.d, %bb.h
  store i64 %i.f, ptr %i.a, align 8, !tbaa !67
  br label %bb.m

bb.l:                                             ; preds = %_ZN5boost6spirit7classic4impl11extract_intILi10ELj1ELin1ENS2_19negative_accumulateIiLi10EEEE1fIKNS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEiEEbRT_RT0_Rm.exit, %.critedge.loopexit.i15
  %.037 = phi i32 [ %.5, %.critedge.loopexit.i15 ], [ %.2, %_ZN5boost6spirit7classic4impl11extract_intILi10ELj1ELin1ENS2_19negative_accumulateIiLi10EEEE1fIKNS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEiEEbRT_RT0_Rm.exit ]
  %.02436 = phi i64 [ %.630, %.critedge.loopexit.i15 ], [ %.327, %_ZN5boost6spirit7classic4impl11extract_intILi10ELj1ELin1ENS2_19negative_accumulateIiLi10EEEE1fIKNS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEiEEbRT_RT0_Rm.exit ]
  store i64 %.02436, ptr %0, align 8, !tbaa !148, !alias.scope !447
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ao, align 8, !tbaa !448, !alias.scope !447
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.037, ptr %i.ap, align 4, !tbaa !54, !alias.scope !447
  br label %bb.n

bb.m:                                             ; preds = %.thread, %bb.a
  store i64 -1, ptr %0, align 8, !tbaa !148
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.aq, align 8, !tbaa !448
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 0, ptr %i.ar, align 4, !tbaa !54
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6spirit7classic4impl15concrete_parserINS1_8sequenceINS4_INS4_INS4_INS4_INS4_INS1_11alternativeINS1_6strlitIPKcEES9_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEST_EEEESU_EENS1_5chlitIwEEEESY_EENS1_6actionINS1_11uint_parserIjLi10ELj1ELin1EEENS_7archive3xml11assign_implIjEEEEEESY_EESS_ST_ED0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i64 @_ZNK5boost6spirit7classic4impl15concrete_parserINS1_8sequenceINS4_INS4_INS4_INS4_INS4_INS1_11alternativeINS1_6strlitIPKcEES9_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEST_EEEESU_EENS1_5chlitIwEEEESY_EENS1_6actionINS1_11uint_parserIjLi10ELj1ELin1EEENS_7archive3xml11assign_implIjEEEEEESY_EESS_ST_E16do_parse_virtualERKSS_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call i64 @_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_EENS1_6actionINS1_11uint_parserIjLi10ELj1ELin1EEENS_7archive3xml11assign_implIjEEEEE5parseISQ_EENS1_13parser_resultIS17_T_E4typeERKS1A_(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1) ; 2 uses
  %.not.not.i = icmp sgt i64 %i.b, -1
  br i1 %.not.not.i, label %bb.b, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_EENS1_6actionINS1_11uint_parserIjLi10ELj1ELin1EEENS_7archive3xml11assign_implIjEEEEEESW_E5parseISQ_EENS1_13parser_resultIS18_T_E4typeERKS1B_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !100, !noalias !451, !nonnull !101, !align !102 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !67, !noalias !451 ; 3 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !67, !noalias !451
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_EENS1_6actionINS1_11uint_parserIjLi10ELj1ELin1EEENS_7archive3xml11assign_implIjEEEEEESW_E5parseISQ_EENS1_13parser_resultIS18_T_E4typeERKS1B_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load i8, ptr %i.e, align 1, !tbaa !54, !noalias !451
  %i.j = sext i8 %i.i to i32
  %i.k = load i32, ptr %i.h, align 8, !tbaa !121, !noalias !451
  %i.l = icmp eq i32 %i.k, %i.j
  br i1 %i.l, label %bb.d, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_EENS1_6actionINS1_11uint_parserIjLi10ELj1ELin1EEENS_7archive3xml11assign_implIjEEEEEESW_E5parseISQ_EENS1_13parser_resultIS18_T_E4typeERKS1B_.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store ptr %i.m, ptr %i.c, align 8, !tbaa !103, !noalias !451
  %i.n = add nuw nsw i64 %i.b, 1
  br label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_EENS1_6actionINS1_11uint_parserIjLi10ELj1ELin1EEENS_7archive3xml11assign_implIjEEEEEESW_E5parseISQ_EENS1_13parser_resultIS18_T_E4typeERKS1B_.exit

_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_EENS1_6actionINS1_11uint_parserIjLi10ELj1ELin1EEENS_7archive3xml11assign_implIjEEEEEESW_E5parseISQ_EENS1_13parser_resultIS18_T_E4typeERKS1B_.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.sroa.09.1.i = phi i64 [ %i.n, %bb.d ], [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.c ]
  ret i64 %.sroa.09.1.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK5boost6spirit7classic4impl15concrete_parserINS1_8sequenceINS4_INS4_INS4_INS4_INS4_INS1_11alternativeINS1_6strlitIPKcEES9_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEST_EEEESU_EENS1_5chlitIwEEEESY_EENS1_6actionINS1_11uint_parserIjLi10ELj1ELin1EEENS_7archive3xml11assign_implIjEEEEEESY_EESS_ST_E5cloneEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #22 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost6spirit7classic4impl15concrete_parserINS1_8sequenceINS4_INS4_INS4_INS4_INS4_INS1_11alternativeINS1_6strlitIPKcEES9_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEST_EEEESU_EENS1_5chlitIwEEEESY_EENS1_6actionINS1_11uint_parserIjLi10ELj1ELin1EEENS_7archive3xml11assign_implIjEEEEEESY_EESS_ST_EE, i64 16), ptr %i.a, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i64 @_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_EENS1_6actionINS1_11uint_parserIjLi10ELj1ELin1EEENS_7archive3xml11assign_implIjEEEEE5parseISQ_EENS1_13parser_resultIS17_T_E4typeERKS1A_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call i64 @_ZNK5boost6spirit7classic8sequenceINS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_E5parseISQ_EENS1_13parser_resultISU_T_E4typeERKSX_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) ; 2 uses
  %.not.not.i.i = icmp sgt i64 %i.a, -1
  br i1 %.not.not.i.i, label %bb.b, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_E5parseISQ_EENS1_13parser_resultISY_T_E4typeERKS11_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !100, !noalias !464, !nonnull !101, !align !102 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !67, !noalias !464 ; 4 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !67, !noalias !464
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_E5parseISQ_EENS1_13parser_resultISY_T_E4typeERKS11_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i8, ptr %i.d, align 1, !tbaa !54, !noalias !464
  %i.i = sext i8 %i.h to i32
  %i.j = load i32, ptr %i.g, align 8, !tbaa !121, !noalias !464
  %i.k = icmp eq i32 %i.j, %i.i
  br i1 %i.k, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEE5parseISQ_EENS1_13parser_resultISX_T_E4typeERKS10_.exit.i, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_E5parseISQ_EENS1_13parser_resultISY_T_E4typeERKS11_.exit.thread

_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEE5parseISQ_EENS1_13parser_resultISX_T_E4typeERKS10_.exit.i: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  store ptr %i.l, ptr %i.b, align 8, !tbaa !103, !noalias !464
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !67, !noalias !465
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_E5parseISQ_EENS1_13parser_resultISY_T_E4typeERKS11_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEE5parseISQ_EENS1_13parser_resultISX_T_E4typeERKS10_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load i8, ptr %i.l, align 1, !tbaa !54, !noalias !465
  %i.q = sext i8 %i.p to i32
  %i.r = load i32, ptr %i.o, align 8, !tbaa !121, !noalias !465
  %i.s = icmp eq i32 %i.r, %i.q
  br i1 %i.s, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_E5parseISQ_EENS1_13parser_resultISY_T_E4typeERKS11_.exit, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_E5parseISQ_EENS1_13parser_resultISY_T_E4typeERKS11_.exit.thread

_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_E5parseISQ_EENS1_13parser_resultISY_T_E4typeERKS11_.exit: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store ptr %i.t, ptr %i.b, align 8, !tbaa !103, !noalias !465
  %i.u = add nuw nsw i64 %i.a, 2
  %i.v = load ptr, ptr %1, align 8, !tbaa !100, !noalias !466, !nonnull !101, !align !102 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !67, !noalias !466 ; 2 uses
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !67, !noalias !466
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_E5parseISQ_EENS1_13parser_resultISY_T_E4typeERKS11_.exit.thread, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_E5parseISQ_EENS1_13parser_resultISY_T_E4typeERKS11_.exit, %bb.g
  %.010.i.i.i.i = phi i64 [ %i.aj, %bb.g ], [ 0, %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_E5parseISQ_EENS1_13parser_resultISY_T_E4typeERKS11_.exit ] ; 2 uses
  %.0.i.i.i.i = phi i32 [ %i.ai, %bb.g ], [ 0, %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_E5parseISQ_EENS1_13parser_resultISY_T_E4typeERKS11_.exit ] ; 3 uses
  %i.z = phi ptr [ %i.ak, %bb.g ], [ %i.w, %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_E5parseISQ_EENS1_13parser_resultISY_T_E4typeERKS11_.exit ] ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !54, !noalias !467 ; 2 uses
  %i.ab = sext i8 %i.aa to i32                    ; 2 uses
  %i.ac = add i8 %i.aa, -48
  %isdigit.i.i.i.i.i.i.i = icmp ult i8 %i.ac, 10
  br i1 %isdigit.i.i.i.i.i.i.i, label %bb.e, label %_ZN5boost6spirit7classic4impl11extract_intILi10ELj1ELin1ENS2_19positive_accumulateIjLi10EEEE1fIKNS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEjEEbRT_RT0_Rm.exit.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ad = icmp ugt i32 %.0.i.i.i.i, 429496729
  br i1 %i.ad, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_E5parseISQ_EENS1_13parser_resultISY_T_E4typeERKS11_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = mul nuw i32 %.0.i.i.i.i, 10             ; 2 uses
  %i.af = sub nsw i32 47, %i.ab
  %i.ag = icmp ugt i32 %i.ae, %i.af
  br i1 %i.ag, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_E5parseISQ_EENS1_13parser_resultISY_T_E4typeERKS11_.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = add i32 %i.ae, -48
  %i.ai = add i32 %i.ah, %i.ab                    ; 2 uses
  %i.aj = add i64 %.010.i.i.i.i, 1                ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 3 uses
  store ptr %i.ak, ptr %i.v, align 8, !tbaa !103, !noalias !467
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !67, !noalias !467
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZN5boost6spirit7classic4impl11extract_intILi10ELj1ELin1ENS2_19positive_accumulateIjLi10EEEE1fIKNS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEjEEbRT_RT0_Rm.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !29

_ZN5boost6spirit7classic4impl11extract_intILi10ELj1ELin1ENS2_19positive_accumulateIjLi10EEEE1fIKNS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEjEEbRT_RT0_Rm.exit.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.111.i.i.i.i = phi i64 [ %i.aj, %bb.g ], [ %.010.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.1.i.i.i.i = phi i32 [ %i.ai, %bb.g ], [ %.0.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %.not.i.i.i.i = icmp eq i64 %.111.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_E5parseISQ_EENS1_13parser_resultISY_T_E4typeERKS11_.exit.thread, label %_ZNK5boost6spirit7classic11uint_parserIjLi10ELj1ELin1EE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS3_T_E4typeERKSN_.exit.i

_ZNK5boost6spirit7classic11uint_parserIjLi10ELj1ELin1EE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS3_T_E4typeERKSN_.exit.i: ; preds = %_ZN5boost6spirit7classic4impl11extract_intILi10ELj1ELin1ENS2_19positive_accumulateIjLi10EEEE1fIKNS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEjEEbRT_RT0_Rm.exit.i.i.i.i
  %i.an = icmp sgt i64 %.111.i.i.i.i, -1          ; 2 uses
  br i1 %i.an, label %bb.h, label %_ZNK5boost6spirit7classic6actionINS1_11uint_parserIjLi10ELj1ELin1EEENS_7archive3xml11assign_implIjEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS9_T_E4typeERKST_.exit

bb.h:                                             ; preds = %_ZNK5boost6spirit7classic11uint_parserIjLi10ELj1ELin1EE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS3_T_E4typeERKSN_.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !157, !noalias !466, !nonnull !101, !align !158
  store i32 %.1.i.i.i.i, ptr %i.ap, align 4, !tbaa !65, !noalias !466
  br label %_ZNK5boost6spirit7classic6actionINS1_11uint_parserIjLi10ELj1ELin1EEENS_7archive3xml11assign_implIjEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS9_T_E4typeERKST_.exit

_ZNK5boost6spirit7classic6actionINS1_11uint_parserIjLi10ELj1ELin1EEENS_7archive3xml11assign_implIjEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS9_T_E4typeERKST_.exit: ; preds = %_ZNK5boost6spirit7classic11uint_parserIjLi10ELj1ELin1EE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS3_T_E4typeERKSN_.exit.i, %bb.h
  %i.aq = add nsw i64 %i.u, %.111.i.i.i.i
  %spec.select = select i1 %i.an, i64 %i.aq, i64 -1
  br label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_E5parseISQ_EENS1_13parser_resultISY_T_E4typeERKS11_.exit.thread

_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_E5parseISQ_EENS1_13parser_resultISY_T_E4typeERKS11_.exit.thread: ; preds = %bb.e, %bb.f, %_ZNK5boost6spirit7classic6actionINS1_11uint_parserIjLi10ELj1ELin1EEENS_7archive3xml11assign_implIjEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS9_T_E4typeERKST_.exit, %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_E5parseISQ_EENS1_13parser_resultISY_T_E4typeERKS11_.exit, %_ZN5boost6spirit7classic4impl11extract_intILi10ELj1ELin1ENS2_19positive_accumulateIjLi10EEEE1fIKNS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEjEEbRT_RT0_Rm.exit.i.i.i.i, %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEE5parseISQ_EENS1_13parser_resultISX_T_E4typeERKS10_.exit.i, %bb.b, %bb.a, %bb.d, %bb.c
  %.sroa.010.1 = phi i64 [ -1, %_ZN5boost6spirit7classic4impl11extract_intILi10ELj1ELin1ENS2_19positive_accumulateIjLi10EEEE1fIKNS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEjEEbRT_RT0_Rm.exit.i.i.i.i ], [ -1, %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEE5parseISQ_EENS1_13parser_resultISX_T_E4typeERKS10_.exit.i ], [ -1, %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_E5parseISQ_EENS1_13parser_resultISY_T_E4typeERKS11_.exit ], [ -1, %bb.c ], [ -1, %bb.d ], [ -1, %bb.a ], [ -1, %bb.b ], [ %spec.select, %_ZNK5boost6spirit7classic6actionINS1_11uint_parserIjLi10ELj1ELin1EEENS_7archive3xml11assign_implIjEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS9_T_E4typeERKST_.exit ], [ -1, %bb.f ], [ -1, %bb.e ]
  ret i64 %.sroa.010.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i64 @_ZNK5boost6spirit7classic8sequenceINS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_E5parseISQ_EENS1_13parser_resultISU_T_E4typeERKSX_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !100, !nonnull !101, !align !102 ; 4 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !tbaa !67 ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !117    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !118  ; 3 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not15.i.i.i.i.i.i = icmp eq ptr %i.b, %i.d
end_hunk_0
