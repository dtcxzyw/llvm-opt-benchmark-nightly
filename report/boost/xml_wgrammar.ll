Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/xml_wgrammar?download=true
inline.NumInlined: 2679
inline.NumDeleted: 1453
begin_hunk_0_@_ZNK5boost6spirit7classic4impl15concrete_parserINS1_8sequenceINS4_INS4_INS4_INS4_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEENS1_6actionINS1_10int_parserIiLi10ELj1ELin1EEENS_7archive3xml11assign_implIsEEEEEESW_EESQ_SR_E16do_parse_virtualERKSQ_:bb.a

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !409)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20, !noalias !410
  call void @_ZNK5boost6spirit7classic4impl15int_parser_implIiLi10ELj1ELin1EE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS4_T_E4typeERKSO_(ptr dead_on_unwind nonnull writable sret(%"class.boost::spirit::classic::match.512") align 8 %3, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20, !noalias !410
  %i.c = load i64, ptr %3, align 8, !tbaa !132, !alias.scope !409 ; 2 uses
  %.not.not.i.i.i = icmp sgt i64 %i.c, -1
  br i1 %.not.not.i.i.i, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_EENS1_5chlitIwEEEENS1_6actionINS1_10int_parserIiLi10ELj1ELin1EEENS_7archive3xml11assign_implIsEEEEE5parseISO_EENS1_13parser_resultIS14_T_E4typeERKS17_.exit.i, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_EENS1_5chlitIwEEEENS1_6actionINS1_10int_parserIiLi10ELj1ELin1EEENS_7archive3xml11assign_implIsEEEEE5parseISO_EENS1_13parser_resultIS14_T_E4typeERKS17_.exit.thread16.i

_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_EENS1_5chlitIwEEEENS1_6actionINS1_10int_parserIiLi10ELj1ELin1EEENS_7archive3xml11assign_implIsEEEEE5parseISO_EENS1_13parser_resultIS14_T_E4typeERKS17_.exit.thread16.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_EENS1_5chlitIwEEEENS1_6actionINS1_10int_parserIiLi10ELj1ELin1EEENS_7archive3xml11assign_implIsEEEEEESU_E5parseISO_EENS1_13parser_resultIS15_T_E4typeERKS18_.exit

_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_EENS1_5chlitIwEEEENS1_6actionINS1_10int_parserIiLi10ELj1ELin1EEENS_7archive3xml11assign_implIsEEEEE5parseISO_EENS1_13parser_resultIS14_T_E4typeERKS17_.exit.i: ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i32, ptr %i.d, align 4, !tbaa !66, !alias.scope !409
  %i.g = trunc i32 %i.f to i16
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !413, !noalias !409, !nonnull !88, !align !414
  store i16 %i.g, ptr %i.h, align 2, !tbaa !415
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.i = load ptr, ptr %1, align 8, !tbaa !87, !noalias !416, !nonnull !88, !align !89 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !69, !noalias !416 ; 3 uses
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !69, !noalias !416
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_EENS1_5chlitIwEEEENS1_6actionINS1_10int_parserIiLi10ELj1ELin1EEENS_7archive3xml11assign_implIsEEEEEESU_E5parseISO_EENS1_13parser_resultIS15_T_E4typeERKS18_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_EENS1_5chlitIwEEEENS1_6actionINS1_10int_parserIiLi10ELj1ELin1EEENS_7archive3xml11assign_implIsEEEEE5parseISO_EENS1_13parser_resultIS14_T_E4typeERKS17_.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load i32, ptr %i.k, align 4, !tbaa !34, !noalias !416
  %i.p = load i32, ptr %i.n, align 8, !tbaa !106, !noalias !416
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %bb.d, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_EENS1_5chlitIwEEEENS1_6actionINS1_10int_parserIiLi10ELj1ELin1EEENS_7archive3xml11assign_implIsEEEEEESU_E5parseISO_EENS1_13parser_resultIS15_T_E4typeERKS18_.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store ptr %i.r, ptr %i.i, align 8, !tbaa !90, !noalias !416
  %i.s = add nuw nsw i64 %i.b, 1
  %i.t = add nuw nsw i64 %i.s, %i.c
  br label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_EENS1_5chlitIwEEEENS1_6actionINS1_10int_parserIiLi10ELj1ELin1EEENS_7archive3xml11assign_implIsEEEEEESU_E5parseISO_EENS1_13parser_resultIS15_T_E4typeERKS18_.exit

_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_EENS1_5chlitIwEEEENS1_6actionINS1_10int_parserIiLi10ELj1ELin1EEENS_7archive3xml11assign_implIsEEEEEESU_E5parseISO_EENS1_13parser_resultIS15_T_E4typeERKS18_.exit: ; preds = %bb.a, %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_EENS1_5chlitIwEEEENS1_6actionINS1_10int_parserIiLi10ELj1ELin1EEENS_7archive3xml11assign_implIsEEEEE5parseISO_EENS1_13parser_resultIS14_T_E4typeERKS17_.exit.thread16.i, %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_EENS1_5chlitIwEEEENS1_6actionINS1_10int_parserIiLi10ELj1ELin1EEENS_7archive3xml11assign_implIsEEEEE5parseISO_EENS1_13parser_resultIS14_T_E4typeERKS17_.exit.i, %bb.c, %bb.d
  %.sroa.010.1.i = phi i64 [ %i.t, %bb.d ], [ -1, %bb.a ], [ -1, %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_EENS1_5chlitIwEEEENS1_6actionINS1_10int_parserIiLi10ELj1ELin1EEENS_7archive3xml11assign_implIsEEEEE5parseISO_EENS1_13parser_resultIS14_T_E4typeERKS17_.exit.thread16.i ], [ -1, %bb.c ], [ -1, %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_EENS1_5chlitIwEEEENS1_6actionINS1_10int_parserIiLi10ELj1ELin1EEENS_7archive3xml11assign_implIsEEEEE5parseISO_EENS1_13parser_resultIS14_T_E4typeERKS17_.exit.i ]
  ret i64 %.sroa.010.1.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK5boost6spirit7classic4impl15concrete_parserINS1_8sequenceINS4_INS4_INS4_INS4_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEENS1_6actionINS1_10int_parserIiLi10ELj1ELin1EEENS_7archive3xml11assign_implIsEEEEEESW_EESQ_SR_E5cloneEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #21 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost6spirit7classic4impl15concrete_parserINS1_8sequenceINS4_INS4_INS4_INS4_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEENS1_6actionINS1_10int_parserIiLi10ELj1ELin1EEENS_7archive3xml11assign_implIsEEEEEESW_EESQ_SR_EE, i64 16), ptr %i.a, align 8, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i64 @_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_EENS1_5chlitIwEEE5parseISO_EENS1_13parser_resultISV_T_E4typeERKSY_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !103    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !104  ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !87, !nonnull !88, !align !89 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not15.i.i.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not15.i.i.i.i.i.i, label %_ZNK5boost6spirit7classic6strlitIPKcE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.thread14.i.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.a
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !69
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %.lr.ph.preheader.i.i.i.i.i.i
  %i.i = phi ptr [ %i.p, %bb.c ], [ %.pre.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  %.016.i.i.i.i.i.i = phi ptr [ %i.o, %bb.c ], [ %i.a, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !69
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_E5parseISO_EENS1_13parser_resultISS_T_E4typeERKSV_.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.l = load i8, ptr %.016.i.i.i.i.i.i, align 1, !tbaa !68
  %i.m = sext i8 %i.l to i32
  %i.n = load i32, ptr %i.i, align 4, !tbaa !34
  %.not13.i.i.i.i.i.i = icmp eq i32 %i.n, %i.m
  br i1 %.not13.i.i.i.i.i.i, label %bb.c, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_E5parseISO_EENS1_13parser_resultISS_T_E4typeERKSV_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i, i64 1 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  store ptr %i.p, ptr %i.d, align 8, !tbaa !90
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZNK5boost6spirit7classic6strlitIPKcE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !18

_ZNK5boost6spirit7classic6strlitIPKcE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.i.i: ; preds = %bb.c
  %.not.not.i.i = icmp sgt i64 %i.g, -1
  br i1 %.not.not.i.i, label %_ZNK5boost6spirit7classic6strlitIPKcE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.thread14.i.i, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_E5parseISO_EENS1_13parser_resultISS_T_E4typeERKSV_.exit.thread

_ZNK5boost6spirit7classic6strlitIPKcE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.thread14.i.i: ; preds = %_ZNK5boost6spirit7classic6strlitIPKcE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.i.i, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !135, !nonnull !88, !align !89
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !73   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_E5parseISO_EENS1_13parser_resultISS_T_E4typeERKSV_.exit.thread, label %_ZNK5boost6spirit7classic8sequenceINS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEE5parseISO_EENS1_13parser_resultISR_T_E4typeERKSU_.exit.i

_ZNK5boost6spirit7classic8sequenceINS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEE5parseISO_EENS1_13parser_resultISR_T_E4typeERKSU_.exit.i: ; preds = %_ZNK5boost6spirit7classic6strlitIPKcE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.thread14.i.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !47
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call i64 %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !417 ; 2 uses
  %.not5.not.not.i.i = icmp sgt i64 %i.w, -1
  %i.x = add nsw i64 %i.w, %i.g
  %spec.select.i.i = select i1 %.not5.not.not.i.i, i64 %i.x, i64 -1 ; 2 uses
  %.not.not.i = icmp sgt i64 %spec.select.i.i, -1
  br i1 %.not.not.i, label %bb.d, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_E5parseISO_EENS1_13parser_resultISS_T_E4typeERKSV_.exit.thread

bb.d:                                             ; preds = %_ZNK5boost6spirit7classic8sequenceINS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEE5parseISO_EENS1_13parser_resultISR_T_E4typeERKSU_.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !422, !nonnull !88, !align !89
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !73  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_E5parseISO_EENS1_13parser_resultISS_T_E4typeERKSV_.exit.thread, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_E5parseISO_EENS1_13parser_resultISS_T_E4typeERKSV_.exit

_ZNK5boost6spirit7classic8sequenceINS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_E5parseISO_EENS1_13parser_resultISS_T_E4typeERKSV_.exit: ; preds = %bb.d
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !47
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call i64 %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !418 ; 2 uses
  %.not5.not.not.i = icmp sgt i64 %i.ae, -1
  %i.af = add nsw i64 %i.ae, %spec.select.i.i
  %spec.select.i = select i1 %.not5.not.not.i, i64 %i.af, i64 -1 ; 2 uses
  %.not.not = icmp sgt i64 %spec.select.i, -1
  br i1 %.not.not, label %bb.e, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_E5parseISO_EENS1_13parser_resultISS_T_E4typeERKSV_.exit.thread

bb.e:                                             ; preds = %_ZNK5boost6spirit7classic8sequenceINS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_E5parseISO_EENS1_13parser_resultISS_T_E4typeERKSV_.exit
  %i.ag = load ptr, ptr %1, align 8, !tbaa !87, !noalias !423, !nonnull !88, !align !89 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !69, !noalias !423 ; 3 uses
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !69, !noalias !423
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_E5parseISO_EENS1_13parser_resultISS_T_E4typeERKSV_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load i32, ptr %i.ah, align 4, !tbaa !34, !noalias !423
  %i.am = load i32, ptr %i.ak, align 8, !tbaa !106, !noalias !423
  %i.an = icmp eq i32 %i.al, %i.am
  br i1 %i.an, label %bb.g, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_E5parseISO_EENS1_13parser_resultISS_T_E4typeERKSV_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store ptr %i.ao, ptr %i.ag, align 8, !tbaa !90, !noalias !423
  %i.ap = add nuw nsw i64 %spec.select.i, 1
  br label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_E5parseISO_EENS1_13parser_resultISS_T_E4typeERKSV_.exit.thread

_ZNK5boost6spirit7classic8sequenceINS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_E5parseISO_EENS1_13parser_resultISS_T_E4typeERKSV_.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.b, %bb.f, %bb.e, %_ZNK5boost6spirit7classic6strlitIPKcE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.i.i, %_ZNK5boost6spirit7classic6strlitIPKcE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.thread14.i.i, %_ZNK5boost6spirit7classic8sequenceINS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEE5parseISO_EENS1_13parser_resultISR_T_E4typeERKSU_.exit.i, %bb.d, %_ZNK5boost6spirit7classic8sequenceINS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_E5parseISO_EENS1_13parser_resultISS_T_E4typeERKSV_.exit, %bb.g
  %.sroa.010.1 = phi i64 [ %i.ap, %bb.g ], [ -1, %bb.e ], [ -1, %_ZNK5boost6spirit7classic8sequenceINS2_INS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEESQ_E5parseISO_EENS1_13parser_resultISS_T_E4typeERKSV_.exit ], [ -1, %bb.d ], [ -1, %_ZNK5boost6spirit7classic8sequenceINS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEE5parseISO_EENS1_13parser_resultISR_T_E4typeERKSU_.exit.i ], [ -1, %_ZNK5boost6spirit7classic6strlitIPKcE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.thread14.i.i ], [ -1, %_ZNK5boost6spirit7classic6strlitIPKcE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.i.i ], [ -1, %bb.f ], [ -1, %bb.b ], [ -1, %.lr.ph.i.i.i.i.i.i ]
  ret i64 %.sroa.010.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost6spirit7classic4impl15int_parser_implIiLi10ELj1ELin1EE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS4_T_E4typeERKSO_(ptr dead_on_unwind noalias writable sret(%"class.boost::spirit::classic::match.512") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !87, !nonnull !88, !align !89 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !69
  %i.e = icmp eq ptr %i.c, %i.d
  %i.f = ptrtoint ptr %i.c to i64
  br i1 %i.e, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %i.c, align 4, !tbaa !34   ; 2 uses
  switch i32 %i.g, label %_ZN5boost6spirit7classic4impl12extract_signINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEEbRKT_Rm.exit [
    i32 45, label %bb.c
    i32 43, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !90
  br label %_ZN5boost6spirit7classic4impl12extract_signINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEEbRKT_Rm.exit

_ZN5boost6spirit7classic4impl12extract_signINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEEbRKT_Rm.exit: ; preds = %bb.b, %bb.c
  %i.i = phi ptr [ %i.c, %bb.b ], [ %i.h, %bb.c ] ; 3 uses
  %.125 = phi i64 [ 0, %bb.b ], [ 1, %bb.c ]      ; 2 uses
  %i.j = icmp eq i32 %i.g, 45
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !69
  %i.l = icmp eq ptr %i.i, %i.k                   ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.h

bb.d:                                             ; preds = %_ZN5boost6spirit7classic4impl12extract_signINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEEbRKT_Rm.exit
  br i1 %i.l, label %.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.g
  %.226 = phi i64 [ %i.x, %bb.g ], [ %.125, %bb.d ] ; 2 uses
  %.1 = phi i32 [ %i.s, %bb.g ], [ 0, %bb.d ]     ; 3 uses
  %i.m = phi ptr [ %i.w, %bb.g ], [ %i.i, %bb.d ]
  %.011.i.a = phi i64 [ %i.t, %bb.g ], [ 0, %bb.d ] ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !34   ; 2 uses
  %3 = add nsw i32 %i.n, -48                      ; 2 uses
  %i.o = tail call i32 @iswdigit(i32 noundef %i.n) #20
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %_ZN5boost6spirit7classic4impl11extract_intILi10ELj1ELin1ENS2_19negative_accumulateIiLi10EEEE1fIKNS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEiEEbRT_RT0_Rm.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.p = icmp slt i32 %.1, -214748364
  br i1 %i.p, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = mul nsw i32 %.1, 10                      ; 2 uses
  %4 = or disjoint i32 %3, -2147483648
  %i.r = icmp slt i32 %i.q, %4
  br i1 %i.r, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = sub nsw i32 %i.q, %3                     ; 2 uses
  %i.t = add i64 %.011.i.a, 1                     ; 2 uses
  %i.u = load ptr, ptr %2, align 8, !tbaa !87, !nonnull !88, !align !89 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !90
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 3 uses
  store ptr %i.w, ptr %i.u, align 8, !tbaa !90
  %i.x = add i64 %.226, 1                         ; 2 uses
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !69
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %_ZN5boost6spirit7classic4impl11extract_intILi10ELj1ELin1ENS2_19negative_accumulateIiLi10EEEE1fIKNS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEiEEbRT_RT0_Rm.exit, label %.lr.ph.i, !llvm.loop !424

bb.h:                                             ; preds = %_ZN5boost6spirit7classic4impl12extract_signINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEEbRKT_Rm.exit
  br i1 %i.l, label %.thread, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.h, %bb.k
  %.529 = phi i64 [ %i.an, %bb.k ], [ %.125, %bb.h ] ; 2 uses
  %.4 = phi i32 [ %i.ai, %bb.k ], [ 0, %bb.h ]    ; 3 uses
  %i.aa = phi ptr [ %i.am, %bb.k ], [ %i.i, %bb.h ]
  %.011.i13 = phi i64 [ %i.aj, %bb.k ], [ 0, %bb.h ] ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !34 ; 3 uses
  %i.ac = tail call i32 @iswdigit(i32 noundef %i.ab) #20
  %.not.i14 = icmp eq i32 %i.ac, 0
  br i1 %.not.i14, label %.critedge.loopexit.i15, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i12
  %i.ad = icmp sgt i32 %.4, 214748364
  br i1 %i.ad, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = mul nsw i32 %.4, 10                     ; 2 uses
  %i.af = sub i32 -2147483601, %i.ab
  %i.ag = icmp sgt i32 %i.ae, %i.af
  br i1 %i.ag, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = add i32 %i.ae, -48
  %i.ai = add i32 %i.ah, %i.ab                    ; 2 uses
  %i.aj = add i64 %.011.i13, 1                    ; 2 uses
  %i.ak = load ptr, ptr %2, align 8, !tbaa !87, !nonnull !88, !align !89 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !90
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4 ; 3 uses
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !90
  %i.an = add i64 %.529, 1                        ; 2 uses
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !69
  %i.ap = icmp eq ptr %i.am, %i.ao
  br i1 %i.ap, label %.critedge.loopexit.i15, label %.lr.ph.i12, !llvm.loop !425

.critedge.loopexit.i15:                           ; preds = %bb.k, %.lr.ph.i12
  %.630 = phi i64 [ %.529, %.lr.ph.i12 ], [ %i.an, %bb.k ]
  %.5 = phi i32 [ %.4, %.lr.ph.i12 ], [ %i.ai, %bb.k ]
  %.0.lcssa.ph.i16 = phi i64 [ %.011.i13, %.lr.ph.i12 ], [ %i.aj, %bb.k ]
  %.not = icmp eq i64 %.0.lcssa.ph.i16, 0
  br i1 %.not, label %.thread, label %bb.l

_ZN5boost6spirit7classic4impl11extract_intILi10ELj1ELin1ENS2_19negative_accumulateIiLi10EEEE1fIKNS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEiEEbRT_RT0_Rm.exit: ; preds = %.lr.ph.i, %bb.g
  %.327 = phi i64 [ %.226, %.lr.ph.i ], [ %i.x, %bb.g ]
  %.2 = phi i32 [ %.1, %.lr.ph.i ], [ %i.s, %bb.g ]
  %.0.lcssa.ph.i = phi i64 [ %.011.i.a, %.lr.ph.i ], [ %i.t, %bb.g ]
  %.not40 = icmp eq i64 %.0.lcssa.ph.i, 0
  br i1 %.not40, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.i, %bb.j, %bb.f, %bb.e, %_ZN5boost6spirit7classic4impl11extract_intILi10ELj1ELin1ENS2_19negative_accumulateIiLi10EEEE1fIKNS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEiEEbRT_RT0_Rm.exit, %.critedge.loopexit.i15, %bb.d, %bb.h
  %i.aq = load ptr, ptr %2, align 8, !tbaa !87, !nonnull !88, !align !89
  store i64 %i.f, ptr %i.aq, align 8, !tbaa !69
  br label %bb.m

bb.l:                                             ; preds = %_ZN5boost6spirit7classic4impl11extract_intILi10ELj1ELin1ENS2_19negative_accumulateIiLi10EEEE1fIKNS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEiEEbRT_RT0_Rm.exit, %.critedge.loopexit.i15
  %.037 = phi i32 [ %.5, %.critedge.loopexit.i15 ], [ %.2, %_ZN5boost6spirit7classic4impl11extract_intILi10ELj1ELin1ENS2_19negative_accumulateIiLi10EEEE1fIKNS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEiEEbRT_RT0_Rm.exit ]
  %.02436 = phi i64 [ %.630, %.critedge.loopexit.i15 ], [ %.327, %_ZN5boost6spirit7classic4impl11extract_intILi10ELj1ELin1ENS2_19negative_accumulateIiLi10EEEE1fIKNS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEiEEbRT_RT0_Rm.exit ]
  store i64 %.02436, ptr %0, align 8, !tbaa !132, !alias.scope !428
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ar, align 8, !tbaa !429, !alias.scope !428
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.037, ptr %i.as, align 4, !tbaa !68, !alias.scope !428
  br label %bb.n

bb.m:                                             ; preds = %.thread, %bb.a
  store i64 -1, ptr %0, align 8, !tbaa !132
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.at, align 8, !tbaa !429
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 0, ptr %i.au, align 4, !tbaa !68
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6spirit7classic4impl15concrete_parserINS1_8sequenceINS4_INS4_INS4_INS4_INS4_INS1_11alternativeINS1_6strlitIPKcEES9_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEST_EEEESU_EENS1_5chlitIwEEEESY_EENS1_6actionINS1_11uint_parserIjLi10ELj1ELin1EEENS_7archive3xml11assign_implIjEEEEEESY_EESS_ST_ED0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i64 @_ZNK5boost6spirit7classic4impl15concrete_parserINS1_8sequenceINS4_INS4_INS4_INS4_INS4_INS1_11alternativeINS1_6strlitIPKcEES9_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEST_EEEESU_EENS1_5chlitIwEEEESY_EENS1_6actionINS1_11uint_parserIjLi10ELj1ELin1EEENS_7archive3xml11assign_implIjEEEEEESY_EESS_ST_E16do_parse_virtualERKSS_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call i64 @_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_EENS1_6actionINS1_11uint_parserIjLi10ELj1ELin1EEENS_7archive3xml11assign_implIjEEEEE5parseISQ_EENS1_13parser_resultIS17_T_E4typeERKS1A_(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1) ; 2 uses
  %.not.not.i = icmp sgt i64 %i.b, -1
  br i1 %.not.not.i, label %bb.b, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_EENS1_6actionINS1_11uint_parserIjLi10ELj1ELin1EEENS_7archive3xml11assign_implIjEEEEEESW_E5parseISQ_EENS1_13parser_resultIS18_T_E4typeERKS1B_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !87, !noalias !432, !nonnull !88, !align !89 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !69, !noalias !432 ; 3 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !69, !noalias !432
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_EENS1_6actionINS1_11uint_parserIjLi10ELj1ELin1EEENS_7archive3xml11assign_implIjEEEEEESW_E5parseISQ_EENS1_13parser_resultIS18_T_E4typeERKS1B_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load i32, ptr %i.e, align 4, !tbaa !34, !noalias !432
  %i.j = load i32, ptr %i.h, align 8, !tbaa !106, !noalias !432
  %i.k = icmp eq i32 %i.i, %i.j
  br i1 %i.k, label %bb.d, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_EENS1_6actionINS1_11uint_parserIjLi10ELj1ELin1EEENS_7archive3xml11assign_implIjEEEEEESW_E5parseISQ_EENS1_13parser_resultIS18_T_E4typeERKS1B_.exit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store ptr %i.l, ptr %i.c, align 8, !tbaa !90, !noalias !432
  %i.m = add nuw nsw i64 %i.b, 1
  br label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_EENS1_6actionINS1_11uint_parserIjLi10ELj1ELin1EEENS_7archive3xml11assign_implIjEEEEEESW_E5parseISQ_EENS1_13parser_resultIS18_T_E4typeERKS1B_.exit

_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_EENS1_6actionINS1_11uint_parserIjLi10ELj1ELin1EEENS_7archive3xml11assign_implIjEEEEEESW_E5parseISQ_EENS1_13parser_resultIS18_T_E4typeERKS1B_.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.sroa.010.1.i = phi i64 [ %i.m, %bb.d ], [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.c ]
  ret i64 %.sroa.010.1.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK5boost6spirit7classic4impl15concrete_parserINS1_8sequenceINS4_INS4_INS4_INS4_INS4_INS1_11alternativeINS1_6strlitIPKcEES9_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEST_EEEESU_EENS1_5chlitIwEEEESY_EENS1_6actionINS1_11uint_parserIjLi10ELj1ELin1EEENS_7archive3xml11assign_implIjEEEEEESY_EESS_ST_E5cloneEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #21 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost6spirit7classic4impl15concrete_parserINS1_8sequenceINS4_INS4_INS4_INS4_INS4_INS1_11alternativeINS1_6strlitIPKcEES9_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEST_EEEESU_EENS1_5chlitIwEEEESY_EENS1_6actionINS1_11uint_parserIjLi10ELj1ELin1EEENS_7archive3xml11assign_implIjEEEEEESY_EESS_ST_EE, i64 16), ptr %i.a, align 8, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i64 @_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_EENS1_6actionINS1_11uint_parserIjLi10ELj1ELin1EEENS_7archive3xml11assign_implIjEEEEE5parseISQ_EENS1_13parser_resultIS17_T_E4typeERKS1A_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call i64 @_ZNK5boost6spirit7classic8sequenceINS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_E5parseISQ_EENS1_13parser_resultISU_T_E4typeERKSX_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) ; 2 uses
  %.not.not.i.i = icmp sgt i64 %i.a, -1
  br i1 %.not.not.i.i, label %bb.b, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_E5parseISQ_EENS1_13parser_resultISY_T_E4typeERKS11_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !87, !noalias !445, !nonnull !88, !align !89 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !69, !noalias !445 ; 4 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !69, !noalias !445
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_E5parseISQ_EENS1_13parser_resultISY_T_E4typeERKS11_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i32, ptr %i.d, align 4, !tbaa !34, !noalias !445
  %i.i = load i32, ptr %i.g, align 8, !tbaa !106, !noalias !445
  %i.j = icmp eq i32 %i.h, %i.i
  br i1 %i.j, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEE5parseISQ_EENS1_13parser_resultISX_T_E4typeERKS10_.exit.i, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_E5parseISQ_EENS1_13parser_resultISY_T_E4typeERKS11_.exit.thread

_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEE5parseISQ_EENS1_13parser_resultISX_T_E4typeERKS10_.exit.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 3 uses
  store ptr %i.k, ptr %i.b, align 8, !tbaa !90, !noalias !445
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !69, !noalias !446
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_E5parseISQ_EENS1_13parser_resultISY_T_E4typeERKS11_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEE5parseISQ_EENS1_13parser_resultISX_T_E4typeERKS10_.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load i32, ptr %i.k, align 4, !tbaa !34, !noalias !446
  %i.p = load i32, ptr %i.n, align 8, !tbaa !106, !noalias !446
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_E5parseISQ_EENS1_13parser_resultISY_T_E4typeERKS11_.exit, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_E5parseISQ_EENS1_13parser_resultISY_T_E4typeERKS11_.exit.thread

_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_E5parseISQ_EENS1_13parser_resultISY_T_E4typeERKS11_.exit: ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.r, ptr %i.b, align 8, !tbaa !90, !noalias !446
  %i.s = add nuw nsw i64 %i.a, 2
  %i.t = load ptr, ptr %1, align 8, !tbaa !87, !noalias !447, !nonnull !88, !align !89
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !69, !noalias !447 ; 2 uses
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !69, !noalias !447
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_E5parseISQ_EENS1_13parser_resultISY_T_E4typeERKS11_.exit.thread, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_E5parseISQ_EENS1_13parser_resultISY_T_E4typeERKS11_.exit, %bb.g
  %.010.i.i.i.i = phi i64 [ %i.ag, %bb.g ], [ 0, %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_E5parseISQ_EENS1_13parser_resultISY_T_E4typeERKS11_.exit ] ; 2 uses
  %.0.i.i.i.i = phi i32 [ %i.af, %bb.g ], [ 0, %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_E5parseISQ_EENS1_13parser_resultISY_T_E4typeERKS11_.exit ] ; 3 uses
  %i.x = phi ptr [ %i.aj, %bb.g ], [ %i.u, %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_E5parseISQ_EENS1_13parser_resultISY_T_E4typeERKS11_.exit ]
  %i.y = load i32, ptr %i.x, align 4, !tbaa !34, !noalias !448 ; 3 uses
  %i.z = tail call i32 @iswdigit(i32 noundef %i.y) #20, !noalias !448
  %.not.i.i.i.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5boost6spirit7classic4impl11extract_intILi10ELj1ELin1ENS2_19positive_accumulateIjLi10EEEE1fIKNS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEjEEbRT_RT0_Rm.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aa = icmp ugt i32 %.0.i.i.i.i, 429496729
  br i1 %i.aa, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_E5parseISQ_EENS1_13parser_resultISY_T_E4typeERKS11_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = mul nuw i32 %.0.i.i.i.i, 10             ; 2 uses
  %i.ac = sub i32 47, %i.y
  %i.ad = icmp ugt i32 %i.ab, %i.ac
  br i1 %i.ad, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_E5parseISQ_EENS1_13parser_resultISY_T_E4typeERKS11_.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = add i32 %i.ab, -48
  %i.af = add i32 %i.ae, %i.y                     ; 2 uses
  %i.ag = add i64 %.010.i.i.i.i, 1                ; 2 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !87, !noalias !448, !nonnull !88, !align !89 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !90, !noalias !448
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 3 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !90, !noalias !448
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !69, !noalias !448
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZN5boost6spirit7classic4impl11extract_intILi10ELj1ELin1ENS2_19positive_accumulateIjLi10EEEE1fIKNS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEjEEbRT_RT0_Rm.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !20

_ZN5boost6spirit7classic4impl11extract_intILi10ELj1ELin1ENS2_19positive_accumulateIjLi10EEEE1fIKNS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEjEEbRT_RT0_Rm.exit.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.111.i.i.i.i = phi i64 [ %.010.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ag, %bb.g ] ; 3 uses
  %.1.i.i.i.i = phi i32 [ %.0.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.af, %bb.g ]
  %.not.i.i.i.i = icmp eq i64 %.111.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_E5parseISQ_EENS1_13parser_resultISY_T_E4typeERKS11_.exit.thread, label %_ZNK5boost6spirit7classic11uint_parserIjLi10ELj1ELin1EE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS3_T_E4typeERKSN_.exit.i

_ZNK5boost6spirit7classic11uint_parserIjLi10ELj1ELin1EE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS3_T_E4typeERKSN_.exit.i: ; preds = %_ZN5boost6spirit7classic4impl11extract_intILi10ELj1ELin1ENS2_19positive_accumulateIjLi10EEEE1fIKNS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEjEEbRT_RT0_Rm.exit.i.i.i.i
  %i.am = icmp sgt i64 %.111.i.i.i.i, -1          ; 2 uses
  br i1 %i.am, label %bb.h, label %_ZNK5boost6spirit7classic6actionINS1_11uint_parserIjLi10ELj1ELin1EEENS_7archive3xml11assign_implIjEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS9_T_E4typeERKST_.exit

bb.h:                                             ; preds = %_ZNK5boost6spirit7classic11uint_parserIjLi10ELj1ELin1EE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS3_T_E4typeERKSN_.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !141, !noalias !447, !nonnull !88, !align !142
  store i32 %.1.i.i.i.i, ptr %i.ao, align 4, !tbaa !66, !noalias !447
  br label %_ZNK5boost6spirit7classic6actionINS1_11uint_parserIjLi10ELj1ELin1EEENS_7archive3xml11assign_implIjEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS9_T_E4typeERKST_.exit

_ZNK5boost6spirit7classic6actionINS1_11uint_parserIjLi10ELj1ELin1EEENS_7archive3xml11assign_implIjEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS9_T_E4typeERKST_.exit: ; preds = %_ZNK5boost6spirit7classic11uint_parserIjLi10ELj1ELin1EE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS3_T_E4typeERKSN_.exit.i, %bb.h
  %i.ap = add nsw i64 %i.s, %.111.i.i.i.i
  %spec.select = select i1 %i.am, i64 %i.ap, i64 -1
  br label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_E5parseISQ_EENS1_13parser_resultISY_T_E4typeERKS11_.exit.thread

_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_E5parseISQ_EENS1_13parser_resultISY_T_E4typeERKS11_.exit.thread: ; preds = %bb.e, %bb.f, %_ZNK5boost6spirit7classic6actionINS1_11uint_parserIjLi10ELj1ELin1EEENS_7archive3xml11assign_implIjEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS9_T_E4typeERKST_.exit, %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_E5parseISQ_EENS1_13parser_resultISY_T_E4typeERKS11_.exit, %_ZN5boost6spirit7classic4impl11extract_intILi10ELj1ELin1ENS2_19positive_accumulateIjLi10EEEE1fIKNS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEjEEbRT_RT0_Rm.exit.i.i.i.i, %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEE5parseISQ_EENS1_13parser_resultISX_T_E4typeERKS10_.exit.i, %bb.b, %bb.a, %bb.d, %bb.c
  %.sroa.010.1 = phi i64 [ -1, %_ZN5boost6spirit7classic4impl11extract_intILi10ELj1ELin1ENS2_19positive_accumulateIjLi10EEEE1fIKNS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEjEEbRT_RT0_Rm.exit.i.i.i.i ], [ -1, %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEE5parseISQ_EENS1_13parser_resultISX_T_E4typeERKS10_.exit.i ], [ -1, %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_EENS1_5chlitIwEEEESW_E5parseISQ_EENS1_13parser_resultISY_T_E4typeERKS11_.exit ], [ -1, %bb.c ], [ -1, %bb.d ], [ -1, %bb.a ], [ -1, %bb.b ], [ %spec.select, %_ZNK5boost6spirit7classic6actionINS1_11uint_parserIjLi10ELj1ELin1EEENS_7archive3xml11assign_implIjEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS9_T_E4typeERKST_.exit ], [ -1, %bb.f ], [ -1, %bb.e ]
  ret i64 %.sroa.010.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i64 @_ZNK5boost6spirit7classic8sequenceINS2_INS1_11alternativeINS1_6strlitIPKcEES7_EENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESR_EEEESS_E5parseISQ_EENS1_13parser_resultISU_T_E4typeERKSX_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !87, !nonnull !88, !align !89 ; 4 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !tbaa !69 ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !103    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !104  ; 3 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not15.i.i.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not15.i.i.i.i.i.i, label %_ZNK5boost6spirit7classic11alternativeINS1_6strlitIPKcEES6_E5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS7_T_E4typeERKSR_.exit.thread15.i, label %.lr.ph.i.i.i.i.i.i
end_hunk_0
