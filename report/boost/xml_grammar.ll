Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/xml_grammar?download=true
inline.NumInlined: 2783
inline.NumDeleted: 1517
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEEESN_EENS1_11alternativeINS2_INS2_ISN_SN_EESN_EESX_EEE5parseISL_EENS1_13parser_resultISZ_T_E4typeERKS12_:bb.a

_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.thread.i.i.i: ; preds = %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i.i.i, %bb.a
  %i.h = phi ptr [ %i.a, %bb.a ], [ %.pre.i.i, %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i.i.i ] ; 2 uses
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.h, align 8, !tbaa !67
  br label %bb.b

bb.b:                                             ; preds = %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.thread.i.i.i, %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i.i.i
  %i.i = phi ptr [ %i.h, %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.thread.i.i.i ], [ %.pre.i.i, %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i.i.i ] ; 2 uses
  %.sroa.06.0.i.i.i = phi i64 [ 0, %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.thread.i.i.i ], [ %i.g, %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i.i.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !124  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !125  ; 3 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o                       ; 2 uses
  %i.q = lshr exact i64 %i.p, 2
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.not15.i.i.i.i.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not15.i.i.i.i.i.i, label %_ZNK5boost6spirit7classic8sequenceINS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEE5parseISL_EENS1_13parser_resultIST_T_E4typeERKSW_.exit.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.b
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !67
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %.lr.ph.preheader.i.i.i.i.i.i
  %i.s = phi ptr [ %i.z, %bb.d ], [ %.pre.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  %.016.i.i.i.i.i.i = phi ptr [ %i.y, %bb.d ], [ %i.k, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !67
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEEESN_E5parseISL_EENS1_13parser_resultISU_T_E4typeERKSX_.exit.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.v = load i32, ptr %.016.i.i.i.i.i.i, align 4, !tbaa !85
  %i.w = load i8, ptr %i.s, align 1, !tbaa !54
  %i.x = sext i8 %i.w to i32
  %.not13.i.i.i.i.i.i = icmp eq i32 %i.v, %i.x
  br i1 %.not13.i.i.i.i.i.i, label %bb.d, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEEESN_E5parseISL_EENS1_13parser_resultISU_T_E4typeERKSX_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  store ptr %i.z, ptr %i.i, align 8, !tbaa !103
  %.not.i.i.i.i.i.i = icmp eq ptr %i.y, %i.m
  br i1 %.not.i.i.i.i.i.i, label %_ZNK5boost6spirit7classic6strlitIPKwE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !28

_ZNK5boost6spirit7classic6strlitIPKwE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.i.i: ; preds = %bb.d
  %.not5.not.not.i.i = icmp sgt i64 %i.p, -1
  br i1 %.not5.not.not.i.i, label %_ZNK5boost6spirit7classic8sequenceINS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEE5parseISL_EENS1_13parser_resultIST_T_E4typeERKSW_.exit.i, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEEESN_E5parseISL_EENS1_13parser_resultISU_T_E4typeERKSX_.exit.thread

_ZNK5boost6spirit7classic8sequenceINS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEE5parseISL_EENS1_13parser_resultIST_T_E4typeERKSW_.exit.i: ; preds = %_ZNK5boost6spirit7classic6strlitIPKwE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.i.i, %bb.b
  %.sroa.0.0.i.i.i.i19.i.i = phi i64 [ %i.q, %_ZNK5boost6spirit7classic6strlitIPKwE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.i.i ], [ 0, %bb.b ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !169, !nonnull !101, !align !102
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEEESN_E5parseISL_EENS1_13parser_resultISU_T_E4typeERKSX_.exit.thread, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEEESN_E5parseISL_EENS1_13parser_resultISU_T_E4typeERKSX_.exit

_ZNK5boost6spirit7classic8sequenceINS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEEESN_E5parseISL_EENS1_13parser_resultISU_T_E4typeERKSX_.exit: ; preds = %_ZNK5boost6spirit7classic8sequenceINS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEE5parseISL_EENS1_13parser_resultIST_T_E4typeERKSW_.exit.i
  %i.ad = add nuw nsw i64 %.sroa.0.0.i.i.i.i19.i.i, %.sroa.06.0.i.i.i
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !48
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call i64 %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !33 ; 2 uses
  %.not5.not.not.i = icmp sgt i64 %i.ah, -1
  %i.ai = add nsw i64 %i.ad, %i.ah
  %spec.select.i = select i1 %.not5.not.not.i, i64 %i.ai, i64 -1 ; 2 uses
  %.not.not = icmp sgt i64 %spec.select.i, -1
  br i1 %.not.not, label %bb.e, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEEESN_E5parseISL_EENS1_13parser_resultISU_T_E4typeERKSX_.exit.thread

bb.e:                                             ; preds = %_ZNK5boost6spirit7classic8sequenceINS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEEESN_E5parseISL_EENS1_13parser_resultISU_T_E4typeERKSX_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = tail call i64 @_ZNK5boost6spirit7classic11alternativeINS1_8sequenceINS3_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EESN_EESN_EESP_E5parseISL_EENS1_13parser_resultISQ_T_E4typeERKST_(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %1) ; 2 uses
  %.not5.not.not = icmp sgt i64 %i.ak, -1
  %i.al = add nsw i64 %i.ak, %spec.select.i
  %spec.select = select i1 %.not5.not.not, i64 %i.al, i64 -1
  br label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEEESN_E5parseISL_EENS1_13parser_resultISU_T_E4typeERKSX_.exit.thread

_ZNK5boost6spirit7classic8sequenceINS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEEESN_E5parseISL_EENS1_13parser_resultISU_T_E4typeERKSX_.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.c, %bb.e, %_ZNK5boost6spirit7classic6strlitIPKwE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.i.i, %_ZNK5boost6spirit7classic8sequenceINS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEE5parseISL_EENS1_13parser_resultIST_T_E4typeERKSW_.exit.i, %_ZNK5boost6spirit7classic8sequenceINS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEEESN_E5parseISL_EENS1_13parser_resultISU_T_E4typeERKSX_.exit
  %.sroa.08.1 = phi i64 [ %spec.select, %bb.e ], [ -1, %_ZNK5boost6spirit7classic6strlitIPKwE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.i.i ], [ -1, %_ZNK5boost6spirit7classic8sequenceINS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEEESN_E5parseISL_EENS1_13parser_resultISU_T_E4typeERKSX_.exit ], [ -1, %_ZNK5boost6spirit7classic8sequenceINS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEE5parseISL_EENS1_13parser_resultIST_T_E4typeERKSW_.exit.i ], [ -1, %bb.c ], [ -1, %.lr.ph.i.i.i.i.i.i ]
  ret i64 %.sroa.08.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i64 @_ZNK5boost6spirit7classic11alternativeINS1_8sequenceINS3_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EESN_EESN_EESP_E5parseISL_EENS1_13parser_resultISQ_T_E4typeERKST_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !100, !nonnull !101, !align !102
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.b = load ptr, ptr %0, align 8, !tbaa !105, !nonnull !101, !align !102
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !71   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_EESM_E5parseISK_EENS1_13parser_resultISO_T_E4typeERKSR_.exit.thread, label %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i.i

_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i.i: ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i64 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !590 ; 2 uses
  %.not.not.i.i = icmp sgt i64 %i.g, -1
  br i1 %.not.not.i.i, label %bb.b, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_EESM_E5parseISK_EENS1_13parser_resultISO_T_E4typeERKSR_.exit.thread

bb.b:                                             ; preds = %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !106, !nonnull !101, !align !102
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !71   ; 3 uses
  %.not.i.i6.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i6.i.i, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_EESM_E5parseISK_EENS1_13parser_resultISO_T_E4typeERKSR_.exit.thread, label %_ZNK5boost6spirit7classic8sequenceINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_E5parseISK_EENS1_13parser_resultISN_T_E4typeERKSQ_.exit.i

_ZNK5boost6spirit7classic8sequenceINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_E5parseISK_EENS1_13parser_resultISN_T_E4typeERKSQ_.exit.i: ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call i64 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !590 ; 2 uses
  %.not5.not.not.i.i = icmp sgt i64 %i.n, -1
  %i.o = add nsw i64 %i.n, %i.g
  %spec.select.i.i = select i1 %.not5.not.not.i.i, i64 %i.o, i64 -1 ; 2 uses
  %.not.not.i = icmp sgt i64 %spec.select.i.i, -1
  br i1 %.not.not.i, label %bb.c, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_EESM_E5parseISK_EENS1_13parser_resultISO_T_E4typeERKSR_.exit.thread

bb.c:                                             ; preds = %_ZNK5boost6spirit7classic8sequenceINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_E5parseISK_EENS1_13parser_resultISN_T_E4typeERKSQ_.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !595, !nonnull !101, !align !102
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !71   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_EESM_E5parseISK_EENS1_13parser_resultISO_T_E4typeERKSR_.exit.thread, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_EESM_E5parseISK_EENS1_13parser_resultISO_T_E4typeERKSR_.exit

_ZNK5boost6spirit7classic8sequenceINS2_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_EESM_E5parseISK_EENS1_13parser_resultISO_T_E4typeERKSR_.exit: ; preds = %bb.c
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !48
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call i64 %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !591 ; 2 uses
  %.not5.not.not.i = icmp sgt i64 %i.v, -1
  %i.w = add nsw i64 %i.v, %spec.select.i.i       ; 2 uses
  %.not.not.not37 = icmp sgt i64 %i.w, -1
  %.not.not.not = select i1 %.not5.not.not.i, i1 %.not.not.not37, i1 false
  br i1 %.not.not.not, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_EESM_E5parseISK_EENS1_13parser_resultISO_T_E4typeERKSR_.exit19, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_EESM_E5parseISK_EENS1_13parser_resultISO_T_E4typeERKSR_.exit.thread

_ZNK5boost6spirit7classic8sequenceINS2_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_EESM_E5parseISK_EENS1_13parser_resultISO_T_E4typeERKSR_.exit.thread: ; preds = %bb.a, %bb.b, %_ZNK5boost6spirit7classic8sequenceINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_E5parseISK_EENS1_13parser_resultISN_T_E4typeERKSQ_.exit.i, %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i.i, %bb.c, %_ZNK5boost6spirit7classic8sequenceINS2_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_EESM_E5parseISK_EENS1_13parser_resultISO_T_E4typeERKSR_.exit
  %i.x = load ptr, ptr %1, align 8, !tbaa !100, !nonnull !101, !align !102
  store ptr %.sroa.0.0.copyload, ptr %i.x, align 8, !tbaa !67
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !105, !nonnull !101, !align !102
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !71  ; 3 uses
  %.not.i.i.i.i6 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i6, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_EESM_E5parseISK_EENS1_13parser_resultISO_T_E4typeERKSR_.exit19, label %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i.i7

_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i.i7: ; preds = %_ZNK5boost6spirit7classic8sequenceINS2_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_EESM_E5parseISK_EENS1_13parser_resultISO_T_E4typeERKSR_.exit.thread
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call i64 %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !590 ; 2 uses
  %.not.not.i.i8 = icmp sgt i64 %i.ae, -1
  br i1 %.not.not.i.i8, label %bb.d, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_EESM_E5parseISK_EENS1_13parser_resultISO_T_E4typeERKSR_.exit19

bb.d:                                             ; preds = %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i.i7
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !106, !nonnull !101, !align !102
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !71 ; 3 uses
  %.not.i.i6.i.i10 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i6.i.i10, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_EESM_E5parseISK_EENS1_13parser_resultISO_T_E4typeERKSR_.exit19, label %_ZNK5boost6spirit7classic8sequenceINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_E5parseISK_EENS1_13parser_resultISN_T_E4typeERKSQ_.exit.i11

_ZNK5boost6spirit7classic8sequenceINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_E5parseISK_EENS1_13parser_resultISN_T_E4typeERKSQ_.exit.i11: ; preds = %bb.d
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !48
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call i64 %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !590 ; 2 uses
  %.not5.not.not.i.i12 = icmp sgt i64 %i.al, -1
  %i.am = add nsw i64 %i.al, %i.ae
  %spec.select.i.i13 = select i1 %.not5.not.not.i.i12, i64 %i.am, i64 -1 ; 2 uses
  %.not.not.i14 = icmp sgt i64 %spec.select.i.i13, -1
  br i1 %.not.not.i14, label %bb.e, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_EESM_E5parseISK_EENS1_13parser_resultISO_T_E4typeERKSR_.exit19

bb.e:                                             ; preds = %_ZNK5boost6spirit7classic8sequenceINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_E5parseISK_EENS1_13parser_resultISN_T_E4typeERKSQ_.exit.i11
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !595, !nonnull !101, !align !102
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i15 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i15, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_EESM_E5parseISK_EENS1_13parser_resultISO_T_E4typeERKSR_.exit19, label %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i16

_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i16: ; preds = %bb.e
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !48
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call i64 %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !591 ; 2 uses
  %.not5.not.not.i17 = icmp sgt i64 %i.at, -1
  %i.au = add nsw i64 %i.at, %spec.select.i.i13
  %spec.select.i18 = select i1 %.not5.not.not.i17, i64 %i.au, i64 -1
  br label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_EESM_E5parseISK_EENS1_13parser_resultISO_T_E4typeERKSR_.exit19

_ZNK5boost6spirit7classic8sequenceINS2_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_EESM_E5parseISK_EENS1_13parser_resultISO_T_E4typeERKSR_.exit19: ; preds = %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i16, %bb.e, %_ZNK5boost6spirit7classic8sequenceINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_E5parseISK_EENS1_13parser_resultISN_T_E4typeERKSQ_.exit.i11, %bb.d, %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i.i7, %_ZNK5boost6spirit7classic8sequenceINS2_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_EESM_E5parseISK_EENS1_13parser_resultISO_T_E4typeERKSR_.exit.thread, %_ZNK5boost6spirit7classic8sequenceINS2_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_EESM_E5parseISK_EENS1_13parser_resultISO_T_E4typeERKSR_.exit
  %.sroa.0.0 = phi i64 [ %i.w, %_ZNK5boost6spirit7classic8sequenceINS2_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_EESM_E5parseISK_EENS1_13parser_resultISO_T_E4typeERKSR_.exit ], [ -1, %bb.e ], [ -1, %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i.i7 ], [ -1, %_ZNK5boost6spirit7classic8sequenceINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_E5parseISK_EENS1_13parser_resultISN_T_E4typeERKSQ_.exit.i11 ], [ -1, %bb.d ], [ -1, %_ZNK5boost6spirit7classic8sequenceINS2_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_EESM_E5parseISK_EENS1_13parser_resultISO_T_E4typeERKSR_.exit.thread ], [ %spec.select.i18, %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i16 ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.sadd.sat.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { cold noreturn }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nounwind }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { nounwind willreturn memory(none) }
attributes #24 = { noreturn }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn nounwind }
attributes #27 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!34, !35}
!llvm.ident = !{!36}
!llvm.errno.tbaa = !{!41}

!0 = distinct !{ptr @_ZN5boost6spirit7classic5chsetIcED2Ev, null, ptr @_ZN5boost6detail12shared_countD2Ev, null}
!1 = distinct !{ptr @_ZN5boost6spirit7classic5chsetIcED2Ev, null, ptr @_ZN5boost6detail12shared_countD2Ev, null, null}
!2 = distinct !{null, ptr @_ZN5boost6spirit7classic5chsetIcED2Ev, null, ptr @_ZN5boost6detail12shared_countD2Ev, null}
!3 = distinct !{null, ptr @_ZN5boost6spirit7classic5chsetIcED2Ev, null, ptr @_ZN5boost6detail12shared_countD2Ev, null, null}
!4 = distinct !{null}
!5 = distinct !{ptr @_ZN5boost6spirit7classic5unaryINS1_5chsetIcEENS1_6parserINS1_8positiveIS4_EEEEED2Ev, ptr @_ZN5boost6spirit7classic5chsetIcED2Ev, null, ptr @_ZN5boost6detail12shared_countD2Ev, null}
!6 = distinct !{ptr @_ZN5boost6spirit7classic5unaryINS1_5chsetIcEENS1_6parserINS1_8positiveIS4_EEEEED2Ev, ptr @_ZN5boost6spirit7classic5chsetIcED2Ev, null, ptr @_ZN5boost6detail12shared_countD2Ev, null, null}
!7 = distinct !{null}
!8 = distinct !{null}
!9 = distinct !{ptr @_ZN5boost6spirit7classic5unaryINS1_5chsetIcEENS1_6parserINS1_11kleene_starIS4_EEEEED2Ev, ptr @_ZN5boost6spirit7classic5chsetIcED2Ev, null, ptr @_ZN5boost6detail12shared_countD2Ev, null}
!10 = distinct !{ptr @_ZN5boost6spirit7classic5unaryINS1_5chsetIcEENS1_6parserINS1_11kleene_starIS4_EEEEED2Ev, ptr @_ZN5boost6spirit7classic5chsetIcED2Ev, null, ptr @_ZN5boost6detail12shared_countD2Ev, null, null}
!11 = distinct !{ptr @_ZN5boost6spirit7classic5unaryINS1_5chsetIwEENS1_6parserINS1_8positiveIS4_EEEEED2Ev, ptr @_ZN5boost6spirit7classic5chsetIwED2Ev, ptr @_ZN5boost10shared_ptrINS_6spirit7classic11basic_chsetIwEEED2Ev, ptr @_ZN5boost6detail12shared_countD2Ev, null}
!12 = distinct !{ptr @_ZN5boost6spirit7classic5unaryINS1_5chsetIwEENS1_6parserINS1_8positiveIS4_EEEEED2Ev, ptr @_ZN5boost6spirit7classic5chsetIwED2Ev, ptr @_ZN5boost10shared_ptrINS_6spirit7classic11basic_chsetIwEEED2Ev, ptr @_ZN5boost6detail12shared_countD2Ev, null, null}
!13 = distinct !{ptr @_ZN5boost6spirit7classic5chsetIwED2Ev, ptr @_ZN5boost10shared_ptrINS_6spirit7classic11basic_chsetIwEEED2Ev, ptr @_ZN5boost6detail12shared_countD2Ev, null}
!14 = distinct !{ptr @_ZN5boost6spirit7classic5chsetIwED2Ev, ptr @_ZN5boost10shared_ptrINS_6spirit7classic11basic_chsetIwEEED2Ev, ptr @_ZN5boost6detail12shared_countD2Ev, null, null}
!15 = distinct !{ptr @_ZN5boost6spirit7classic6binaryINS1_11alternativeINS3_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EESN_EESN_EENS1_6actionINS1_5chsetIwEENS_7archive3xml11append_charISE_EEEENS1_6parserINS3_ISP_SX_EEEEED2Ev, null, ptr @_ZN5boost6spirit7classic5unaryINS1_5chsetIwEENS1_6parserINS1_6actionIS4_NS_7archive3xml11append_charINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEED2Ev, ptr @_ZN5boost6spirit7classic5chsetIwED2Ev, ptr @_ZN5boost10shared_ptrINS_6spirit7classic11basic_chsetIwEEED2Ev, ptr @_ZN5boost6detail12shared_countD2Ev, null}
!16 = distinct !{ptr @_ZN5boost6spirit7classic6binaryINS1_11alternativeINS3_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EESN_EESN_EENS1_6actionINS1_5chsetIwEENS_7archive3xml11append_charISE_EEEENS1_6parserINS3_ISP_SX_EEEEED2Ev, null, ptr @_ZN5boost6spirit7classic5unaryINS1_5chsetIwEENS1_6parserINS1_6actionIS4_NS_7archive3xml11append_charINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEED2Ev, ptr @_ZN5boost6spirit7classic5chsetIwED2Ev, ptr @_ZN5boost10shared_ptrINS_6spirit7classic11basic_chsetIwEEED2Ev, ptr @_ZN5boost6detail12shared_countD2Ev, null, null}
!17 = distinct !{ptr @_ZN5boost6spirit7classic5unaryINS1_5chsetIwEENS1_6parserINS1_11kleene_starIS4_EEEEED2Ev, ptr @_ZN5boost6spirit7classic5chsetIwED2Ev, ptr @_ZN5boost10shared_ptrINS_6spirit7classic11basic_chsetIwEEED2Ev, ptr @_ZN5boost6detail12shared_countD2Ev, null}
!18 = distinct !{ptr @_ZN5boost6spirit7classic5unaryINS1_5chsetIwEENS1_6parserINS1_11kleene_starIS4_EEEEED2Ev, ptr @_ZN5boost6spirit7classic5chsetIwED2Ev, ptr @_ZN5boost10shared_ptrINS_6spirit7classic11basic_chsetIwEEED2Ev, ptr @_ZN5boost6detail12shared_countD2Ev, null, null}
!19 = distinct !{ptr @_ZN5boost10shared_ptrINS_6spirit7classic11basic_chsetIwEEED2Ev, ptr @_ZN5boost6detail12shared_countD2Ev, null}
!20 = distinct !{ptr @_ZN5boost10shared_ptrINS_6spirit7classic11basic_chsetIwEEED2Ev, ptr @_ZN5boost6detail12shared_countD2Ev, null, null}
!21 = distinct !{!21, !55}
!22 = distinct !{!22, !55}
!23 = distinct !{null, null, null}
!24 = distinct !{!24, !55}
!25 = distinct !{!25, !55}
!26 = distinct !{!26, !55}
!27 = distinct !{!27, !55}
!28 = distinct !{!28, !55}
!29 = distinct !{!29, !55}
!30 = distinct !{null, null}
!31 = distinct !{null, null, null, null}
!32 = distinct !{null, null, null, null, null}
!33 = distinct !{null, null, null}
!34 = !{i32 8, !"PIC Level", i32 2}
!35 = !{i32 7, !"uwtable", i32 2}
!36 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!"omnipotent char", !37, i64 0}
!39 = !{!"int", !38, i64 0}
!40 = !{!"__libc_errno", !39, i64 0}
!41 = !{!40, !39, i64 0}
!42 = !{!"any pointer", !38, i64 0}
!43 = !{!"p1 _ZTSN5boost6detail15sp_counted_baseE", !42, i64 0}
!44 = !{!"_ZTSN5boost6detail12shared_countE", !43, i64 0}
!45 = !{!44, !43, i64 0}
!46 = !{!42, !42, i64 0}
!47 = !{!"vtable pointer", !37, i64 0}
!48 = !{!47, !47, i64 0}
!49 = !{!"p1 _ZTSN5boost6spirit7classic11basic_chsetIcEE", !42, i64 0}
!50 = !{!"_ZTSN5boost10shared_ptrINS_6spirit7classic11basic_chsetIcEEEE", !49, i64 0, !44, i64 8}
!51 = !{!50, !49, i64 0}
!52 = !{!"long", !38, i64 0}
!53 = !{!52, !52, i64 0}
!54 = !{!38, !38, i64 0}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"p1 omnipotent char", !42, i64 0}
!57 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !56, i64 0}
!58 = !{!57, !56, i64 0}
!59 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !57, i64 0, !52, i64 8, !38, i64 16}
!60 = !{!59, !52, i64 8}
!61 = !{!"short", !38, i64 0}
!62 = !{!"bool", !38, i64 0}
!63 = !{!"_ZTSN5boost7archive13tracking_typeE", !62, i64 0}
!64 = !{!63, !62, i64 0}
!65 = !{!39, !39, i64 0}
!66 = !{!59, !56, i64 0}
!67 = !{!56, !56, i64 0}
!68 = !{!"p1 _ZTSN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !42, i64 0}
!69 = !{!"p1 _ZTSN5boost6spirit7classic4impl15abstract_parserINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEEE", !42, i64 0}
!70 = !{!"_ZTSN5boost10scoped_ptrINS_6spirit7classic4impl15abstract_parserINS2_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS2_16scanner_policiesINS2_16iteration_policyENS2_12match_policyENS2_13action_policyEEEEENS2_5nil_tEEEEE", !69, i64 0}
!71 = !{!70, !69, i64 0}
!72 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !42, i64 0}
!73 = !{!72, !72, i64 0}
!74 = !{!"p1 _ZTSN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_EE", !42, i64 0}
!75 = !{!"p1 _ZTSN5boost6spirit7classic11basic_chsetIwEE", !42, i64 0}
!76 = !{!"_ZTSN5boost10shared_ptrINS_6spirit7classic11basic_chsetIwEEEE", !75, i64 0, !44, i64 8}
!77 = !{!76, !75, i64 0}
!78 = !{!"_ZTSSt13__atomic_baseIiE", !39, i64 0}
!79 = !{!78, !39, i64 0}
!80 = !{!"_ZTSSt6atomicIiE", !78, i64 0}
!81 = !{!"_ZTSN5boost6detail15sp_counted_baseE", !80, i64 8, !80, i64 12}
!82 = !{!"_ZTSN5boost6detail17sp_counted_impl_pINS_6spirit7classic11basic_chsetIwEEEE", !81, i64 0, !75, i64 16}
!83 = !{!82, !75, i64 16}
!84 = !{!"wchar_t", !38, i64 0}
!85 = !{!84, !84, i64 0}
!86 = !{!"_ZTSN5boost6spirit7classic7utility4impl5rangeIwEE", !84, i64 0, !84, i64 4}
!87 = !{!86, !84, i64 0}
!88 = !{!86, !84, i64 4}
!89 = !{!"p1 _ZTSN5boost6spirit7classic7utility4impl5rangeIwEE", !42, i64 0}
!90 = !{!"_ZTSNSt12_Vector_baseIN5boost6spirit7classic7utility4impl5rangeIwEESaIS6_EE17_Vector_impl_dataE", !89, i64 0, !89, i64 8, !89, i64 16}
!91 = !{!90, !89, i64 0}
!92 = !{!90, !89, i64 16}
!93 = !{!89, !89, i64 0}
!94 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!95 = !{!90, !89, i64 8}
!96 = !{!"_ZTSN5boost6detail17sp_counted_impl_pINS_6spirit7classic11basic_chsetIcEEEE", !81, i64 0, !49, i64 16}
!97 = !{!96, !49, i64 16}
!98 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !56, i64 0}
!99 = !{!"_ZTSN5boost6spirit7classic7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEE", !68, i64 0, !98, i64 8}
!100 = !{!99, !68, i64 0}
!101 = !{}
!102 = !{i64 8}
!103 = !{!98, !56, i64 0}
!104 = !{!"_ZTSN5boost7details19compressed_pair_impIRKNS_6spirit7classic4ruleINS3_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS3_16scanner_policiesINS3_16iteration_policyENS3_12match_policyENS3_13action_policyEEEEENS3_5nil_tESM_EESP_Li5EEE", !74, i64 0, !74, i64 8}
!105 = !{!104, !74, i64 0}
!106 = !{!104, !74, i64 8}
!107 = !{!"_ZTSN5boost6spirit7classic5unaryINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EENS1_6parserINS1_8optionalISM_EEEEEE", !74, i64 0}
!108 = !{!107, !74, i64 0}
!109 = !{!"_ZTSN5boost6spirit7classic5chlitIcEE", !38, i64 0}
!110 = !{!109, !38, i64 0}
!111 = !{!"_ZTSN5boost6spirit7classic8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EEEE", !107, i64 0}
!112 = !{!"_ZTSN5boost6spirit7classic5unaryINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EENS1_6parserINS1_6actionISM_NS_7archive3xml11assign_implISD_EEEEEEEE", !74, i64 0}
!113 = !{!"_ZTSN5boost7archive3xml11assign_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !72, i64 0}
!114 = !{!112, !74, i64 0}
!115 = !{!113, !72, i64 0}
!116 = !{!"_ZTSN5boost6spirit7classic5chseqIPKcEE", !56, i64 0, !56, i64 8}
!117 = !{!116, !56, i64 0}
!118 = !{!116, !56, i64 8}
!119 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!120 = !{!"_ZTSN5boost6spirit7classic5chlitIwEE", !84, i64 0}
!121 = !{!120, !84, i64 0}
!122 = !{!"p1 wchar_t", !42, i64 0}
!123 = !{!"_ZTSN5boost6spirit7classic5chseqIPKwEE", !122, i64 0, !122, i64 8}
!124 = !{!123, !122, i64 0}
!125 = !{!123, !122, i64 8}
!126 = !{!"_ZTSN5boost7archive3xml11append_charINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !72, i64 0}
!127 = !{!126, !72, i64 0}
!128 = !{!"_ZTSN5boost15optional_detail25constexpr_guarded_storageIjEE", !62, i64 0, !38, i64 4}
!129 = !{!"_ZTSN5boost8optionalIjEE", !128, i64 0}
!130 = !{!"_ZTSN5boost6spirit7classic5matchIjEE", !52, i64 0, !129, i64 8}
!131 = !{!130, !52, i64 0}
!132 = !{!"_ZTSN5boost15compressed_pairIRKNS_6spirit7classic4ruleINS2_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS2_16scanner_policiesINS2_16iteration_policyENS2_12match_policyENS2_13action_policyEEEEENS2_5nil_tESL_EESO_EE", !104, i64 0}
!133 = !{!"_ZTSN5boost6spirit7classic6binaryINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_NS1_6parserINS1_11alternativeISM_SM_EEEEEE", !132, i64 0}
!134 = !{!"_ZTSN5boost6spirit7classic11alternativeINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_EE", !133, i64 0}
!135 = !{!"_ZTSN5boost7details19compressed_pair_impINS_6spirit7classic11alternativeINS3_4ruleINS3_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS3_16scanner_policiesINS3_16iteration_policyENS3_12match_policyENS3_13action_policyEEEEENS3_5nil_tESN_EESO_EERKSO_Li0EEE", !134, i64 0, !74, i64 16}
!136 = !{!"_ZTSN5boost15compressed_pairINS_6spirit7classic11alternativeINS2_4ruleINS2_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS2_16scanner_policiesINS2_16iteration_policyENS2_12match_policyENS2_13action_policyEEEEENS2_5nil_tESM_EESN_EERKSN_EE", !135, i64 0}
!137 = !{!"_ZTSN5boost6spirit7classic6binaryINS1_11alternativeINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EESN_EESN_NS1_6parserINS3_ISO_SN_EEEEEE", !136, i64 0}
!138 = !{!"_ZTSN5boost6spirit7classic11alternativeINS2_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_EESM_EE", !137, i64 0}
!139 = !{!"_ZTSN5boost7details19compressed_pair_impINS_6spirit7classic11alternativeINS4_INS3_4ruleINS3_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS3_16scanner_policiesINS3_16iteration_policyENS3_12match_policyENS3_13action_policyEEEEENS3_5nil_tESN_EESO_EESO_EERKSO_Li0EEE", !138, i64 0, !74, i64 24}
!140 = !{!"_ZTSN5boost15compressed_pairINS_6spirit7classic11alternativeINS3_INS2_4ruleINS2_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS2_16scanner_policiesINS2_16iteration_policyENS2_12match_policyENS2_13action_policyEEEEENS2_5nil_tESM_EESN_EESN_EERKSN_EE", !139, i64 0}
!141 = !{!"_ZTSN5boost6spirit7classic6binaryINS1_11alternativeINS3_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EESN_EESN_EESN_NS1_6parserINS3_ISP_SN_EEEEEE", !140, i64 0}
!142 = !{!"_ZTSN5boost6spirit7classic11alternativeINS2_INS2_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_EESM_EESM_EE", !141, i64 0}
!143 = !{!"_ZTSN5boost7details19compressed_pair_impINS_6spirit7classic11alternativeINS4_INS4_INS3_4ruleINS3_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS3_16scanner_policiesINS3_16iteration_policyENS3_12match_policyENS3_13action_policyEEEEENS3_5nil_tESN_EESO_EESO_EESO_EERKSO_Li0EEE", !142, i64 0, !74, i64 32}
!144 = !{!135, !74, i64 16}
!145 = !{!"_ZTSN5boost15optional_detail25constexpr_guarded_storageIiEE", !62, i64 0, !38, i64 4}
!146 = !{!"_ZTSN5boost8optionalIiEE", !145, i64 0}
!147 = !{!"_ZTSN5boost6spirit7classic5matchIiEE", !52, i64 0, !146, i64 8}
!148 = !{!147, !52, i64 0}
!149 = !{!"_ZTSN5boost6spirit7classic6strlitIPKcEE", !116, i64 0}
!150 = !{!"_ZTSN5boost7details19compressed_pair_impINS_6spirit7classic6strlitIPKcEERKNS3_4ruleINS3_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS3_16scanner_policiesINS3_16iteration_policyENS3_12match_policyENS3_13action_policyEEEEENS3_5nil_tESQ_EELi0EEE", !149, i64 0, !74, i64 16}
!151 = !{!150, !74, i64 16}
!152 = !{!"_ZTSN5boost15compressed_pairINS_6spirit7classic6strlitIPKcEERKNS2_4ruleINS2_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS2_16scanner_policiesINS2_16iteration_policyENS2_12match_policyENS2_13action_policyEEEEENS2_5nil_tESP_EEEE", !150, i64 0}
!153 = !{!"_ZTSN5boost6spirit7classic6binaryINS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EENS1_6parserINS1_8sequenceIS6_SQ_EEEEEE", !152, i64 0}
!154 = !{!"_ZTSN5boost6spirit7classic8sequenceINS1_6strlitIPKcEENS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESP_EEEE", !153, i64 0}
!155 = !{!"p1 int", !42, i64 0}
!156 = !{!"_ZTSN5boost7archive3xml11assign_implIjEE", !155, i64 0}
!157 = !{!156, !155, i64 0}
!158 = !{i64 4}
!159 = !{!"_ZTSN5boost15optional_detail25constexpr_guarded_storageIcEE", !62, i64 0, !38, i64 1}
!160 = !{!"_ZTSN5boost8optionalIcEE", !159, i64 0}
!161 = !{!"_ZTSN5boost6spirit7classic5matchIcEE", !52, i64 0, !160, i64 8}
!162 = !{!161, !52, i64 0}
!163 = !{!"_ZTSN5boost6spirit7classic6strlitIPKwEE", !123, i64 0}
!164 = !{!"_ZTSN5boost7details19compressed_pair_impINS_6spirit7classic8optionalINS3_4ruleINS3_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS3_16scanner_policiesINS3_16iteration_policyENS3_12match_policyENS3_13action_policyEEEEENS3_5nil_tESN_EEEENS3_6strlitIPKwEELi0EEE", !111, i64 0, !163, i64 8}
!165 = !{!"_ZTSN5boost15compressed_pairINS_6spirit7classic8optionalINS2_4ruleINS2_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS2_16scanner_policiesINS2_16iteration_policyENS2_12match_policyENS2_13action_policyEEEEENS2_5nil_tESM_EEEENS2_6strlitIPKwEEEE", !164, i64 0}
!166 = !{!"_ZTSN5boost6spirit7classic6binaryINS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEENS1_6parserINS1_8sequenceISO_SS_EEEEEE", !165, i64 0}
!167 = !{!"_ZTSN5boost6spirit7classic8sequenceINS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEEE", !166, i64 0}
!168 = !{!"_ZTSN5boost7details19compressed_pair_impINS_6spirit7classic8sequenceINS3_8optionalINS3_4ruleINS3_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS3_16scanner_policiesINS3_16iteration_policyENS3_12match_policyENS3_13action_policyEEEEENS3_5nil_tESO_EEEENS3_6strlitIPKwEEEERKSP_Li0EEE", !167, i64 0, !74, i64 24}
!169 = !{!168, !74, i64 24}
!170 = distinct !{null, null, null, ptr @_ZN5boost6detail12shared_countD2Ev, null}
!171 = distinct !{null, null, null, ptr @_ZN5boost6detail12shared_countD2Ev, null, null}
!172 = distinct !{!172, !"_ZN5boost6spirit7classicorIcEENS1_5chsetIT_EERKS5_S7_"}
!173 = distinct !{!173, !172, !"_ZN5boost6spirit7classicorIcEENS1_5chsetIT_EERKS5_S7_: argument 0"}
!174 = distinct !{!174, !"_ZN5boost6spirit7classicorIcEENS1_5chsetIT_EERKS5_S7_"}
!175 = distinct !{!175, !174, !"_ZN5boost6spirit7classicorIcEENS1_5chsetIT_EERKS5_S7_: argument 0"}
!176 = distinct !{!176, !"_ZN5boost6spirit7classicorIcEENS1_5chsetIT_EERKS5_S7_"}
!177 = distinct !{!177, !176, !"_ZN5boost6spirit7classicorIcEENS1_5chsetIT_EERKS5_S7_: argument 0"}
!178 = !{!49, !49, i64 0}
!179 = !{!173}
!180 = !{!175}
!181 = !{!177}
!182 = distinct !{!182, !55}
!183 = distinct !{null, ptr @_ZN5boost6detail12shared_countD2Ev, null}
!184 = distinct !{null, ptr @_ZN5boost6detail12shared_countD2Ev, null, null}
!185 = !{!"_ZTSN5boost7archive17basic_xml_grammarIcE13return_valuesE", !59, i64 0, !59, i64 32, !61, i64 64, !39, i64 68, !39, i64 72, !63, i64 76, !59, i64 80}
!186 = !{!185, !39, i64 72}
!187 = distinct !{!187, !"_ZN5boost6spirit7classic5parseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_4ruleINS1_7scannerISC_NS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EEEENS1_10parse_infoIT_EERKSO_SR_RKNS1_6parserIT0_EE"}
end_hunk_0
