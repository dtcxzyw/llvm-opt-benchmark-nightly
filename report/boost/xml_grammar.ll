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
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !335  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !338  ; 3 uses
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
  %i.v = load i32, ptr %.016.i.i.i.i.i.i, align 4, !tbaa !171
  %i.w = load i8, ptr %i.s, align 1, !tbaa !36
  %i.x = sext i8 %i.w to i32
  %.not13.i.i.i.i.i.i = icmp eq i32 %i.v, %i.x
  br i1 %.not13.i.i.i.i.i.i, label %bb.d, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEEESN_E5parseISL_EENS1_13parser_resultISU_T_E4typeERKSX_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  store ptr %i.z, ptr %i.i, align 8, !tbaa !223
  %.not.i.i.i.i.i.i = icmp eq ptr %i.y, %i.m
  br i1 %.not.i.i.i.i.i.i, label %_ZNK5boost6spirit7classic6strlitIPKwE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !339

_ZNK5boost6spirit7classic6strlitIPKwE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.i.i: ; preds = %bb.d
  %.not5.not.not.i.i = icmp sgt i64 %i.p, -1
  br i1 %.not5.not.not.i.i, label %_ZNK5boost6spirit7classic8sequenceINS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEE5parseISL_EENS1_13parser_resultIST_T_E4typeERKSW_.exit.i, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEEESN_E5parseISL_EENS1_13parser_resultISU_T_E4typeERKSX_.exit.thread

_ZNK5boost6spirit7classic8sequenceINS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEE5parseISL_EENS1_13parser_resultIST_T_E4typeERKSW_.exit.i: ; preds = %_ZNK5boost6spirit7classic6strlitIPKwE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.i.i, %bb.b
  %.sroa.0.0.i.i.i.i19.i.i = phi i64 [ %i.q, %_ZNK5boost6spirit7classic6strlitIPKwE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.i.i ], [ 0, %bb.b ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !600, !nonnull !221, !align !222
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !70 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEEESN_E5parseISL_EENS1_13parser_resultISU_T_E4typeERKSX_.exit.thread, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEEESN_E5parseISL_EENS1_13parser_resultISU_T_E4typeERKSX_.exit

_ZNK5boost6spirit7classic8sequenceINS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEEESN_E5parseISL_EENS1_13parser_resultISU_T_E4typeERKSX_.exit: ; preds = %_ZNK5boost6spirit7classic8sequenceINS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEE5parseISL_EENS1_13parser_resultIST_T_E4typeERKSW_.exit.i
  %i.ad = add nuw nsw i64 %.sroa.0.0.i.i.i.i19.i.i, %.sroa.06.0.i.i.i
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call i64 %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !601 ; 2 uses
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
  %i.a = load ptr, ptr %1, align 8, !tbaa !215, !nonnull !221, !align !222
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.b = load ptr, ptr %0, align 8, !tbaa !237, !nonnull !221, !align !222
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_EESM_E5parseISK_EENS1_13parser_resultISO_T_E4typeERKSR_.exit.thread, label %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i.i

_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i.i: ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i64 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !618 ; 2 uses
  %.not.not.i.i = icmp sgt i64 %i.g, -1
  br i1 %.not.not.i.i, label %bb.b, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_EESM_E5parseISK_EENS1_13parser_resultISO_T_E4typeERKSR_.exit.thread

bb.b:                                             ; preds = %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !240, !nonnull !221, !align !222
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !70   ; 3 uses
  %.not.i.i6.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i6.i.i, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_EESM_E5parseISK_EENS1_13parser_resultISO_T_E4typeERKSR_.exit.thread, label %_ZNK5boost6spirit7classic8sequenceINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_E5parseISK_EENS1_13parser_resultISN_T_E4typeERKSQ_.exit.i

_ZNK5boost6spirit7classic8sequenceINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_E5parseISK_EENS1_13parser_resultISN_T_E4typeERKSQ_.exit.i: ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call i64 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !618 ; 2 uses
  %.not5.not.not.i.i = icmp sgt i64 %i.n, -1
  %i.o = add nsw i64 %i.n, %i.g
  %spec.select.i.i = select i1 %.not5.not.not.i.i, i64 %i.o, i64 -1 ; 2 uses
  %.not.not.i = icmp sgt i64 %spec.select.i.i, -1
  br i1 %.not.not.i, label %bb.c, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_EESM_E5parseISK_EENS1_13parser_resultISO_T_E4typeERKSR_.exit.thread

bb.c:                                             ; preds = %_ZNK5boost6spirit7classic8sequenceINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_E5parseISK_EENS1_13parser_resultISN_T_E4typeERKSQ_.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !619, !nonnull !221, !align !222
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !70   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_EESM_E5parseISK_EENS1_13parser_resultISO_T_E4typeERKSR_.exit.thread, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_EESM_E5parseISK_EENS1_13parser_resultISO_T_E4typeERKSR_.exit

_ZNK5boost6spirit7classic8sequenceINS2_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_EESM_E5parseISK_EENS1_13parser_resultISO_T_E4typeERKSR_.exit: ; preds = %bb.c
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call i64 %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !623 ; 2 uses
  %.not5.not.not.i = icmp sgt i64 %i.v, -1
  %i.w = add nsw i64 %i.v, %spec.select.i.i       ; 2 uses
  %.not.not.not37 = icmp sgt i64 %i.w, -1
  %.not.not.not = select i1 %.not5.not.not.i, i1 %.not.not.not37, i1 false
  br i1 %.not.not.not, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_EESM_E5parseISK_EENS1_13parser_resultISO_T_E4typeERKSR_.exit19, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_EESM_E5parseISK_EENS1_13parser_resultISO_T_E4typeERKSR_.exit.thread

_ZNK5boost6spirit7classic8sequenceINS2_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_EESM_E5parseISK_EENS1_13parser_resultISO_T_E4typeERKSR_.exit.thread: ; preds = %bb.a, %bb.b, %_ZNK5boost6spirit7classic8sequenceINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_E5parseISK_EENS1_13parser_resultISN_T_E4typeERKSQ_.exit.i, %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i.i, %bb.c, %_ZNK5boost6spirit7classic8sequenceINS2_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_EESM_E5parseISK_EENS1_13parser_resultISO_T_E4typeERKSR_.exit
  %i.x = load ptr, ptr %1, align 8, !tbaa !215, !nonnull !221, !align !222
  store ptr %.sroa.0.0.copyload, ptr %i.x, align 8, !tbaa !67
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !237, !nonnull !221, !align !222
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !70  ; 3 uses
  %.not.i.i.i.i6 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i6, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_EESM_E5parseISK_EENS1_13parser_resultISO_T_E4typeERKSR_.exit19, label %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i.i7

_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i.i7: ; preds = %_ZNK5boost6spirit7classic8sequenceINS2_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_EESM_E5parseISK_EENS1_13parser_resultISO_T_E4typeERKSR_.exit.thread
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call i64 %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !618 ; 2 uses
  %.not.not.i.i8 = icmp sgt i64 %i.ae, -1
  br i1 %.not.not.i.i8, label %bb.d, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_EESM_E5parseISK_EENS1_13parser_resultISO_T_E4typeERKSR_.exit19

bb.d:                                             ; preds = %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i.i7
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !240, !nonnull !221, !align !222
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !70 ; 3 uses
  %.not.i.i6.i.i10 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i6.i.i10, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_EESM_E5parseISK_EENS1_13parser_resultISO_T_E4typeERKSR_.exit19, label %_ZNK5boost6spirit7classic8sequenceINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_E5parseISK_EENS1_13parser_resultISN_T_E4typeERKSQ_.exit.i11

_ZNK5boost6spirit7classic8sequenceINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_E5parseISK_EENS1_13parser_resultISN_T_E4typeERKSQ_.exit.i11: ; preds = %bb.d
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call i64 %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !618 ; 2 uses
  %.not5.not.not.i.i12 = icmp sgt i64 %i.al, -1
  %i.am = add nsw i64 %i.al, %i.ae
  %spec.select.i.i13 = select i1 %.not5.not.not.i.i12, i64 %i.am, i64 -1 ; 2 uses
  %.not.not.i14 = icmp sgt i64 %spec.select.i.i13, -1
  br i1 %.not.not.i14, label %bb.e, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_EESM_E5parseISK_EENS1_13parser_resultISO_T_E4typeERKSR_.exit19

bb.e:                                             ; preds = %_ZNK5boost6spirit7classic8sequenceINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_E5parseISK_EENS1_13parser_resultISN_T_E4typeERKSQ_.exit.i11
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !619, !nonnull !221, !align !222
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !70 ; 3 uses
  %.not.i.i.i15 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i15, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_EESM_E5parseISK_EENS1_13parser_resultISO_T_E4typeERKSR_.exit19, label %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i16

_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i16: ; preds = %bb.e
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !13
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call i64 %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !623 ; 2 uses
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.sadd.sat.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

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
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #21 = { nounwind }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { nounwind willreturn memory(none) }
attributes #24 = { noreturn }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn nounwind }
attributes #27 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSN5boost6detail12shared_countE", !10, i64 0}
!10 = !{!"p1 _ZTSN5boost6detail15sp_counted_baseE", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"vtable pointer", !7, i64 0}
!15 = distinct !{null, null, null, ptr @_ZN5boost6detail12shared_countD2Ev, null}
!16 = distinct !{null, null, null, ptr @_ZN5boost6detail12shared_countD2Ev, null, null}
!17 = distinct !{ptr @_ZN5boost6spirit7classic5chsetIcED2Ev, null, ptr @_ZN5boost6detail12shared_countD2Ev, null}
!18 = distinct !{ptr @_ZN5boost6spirit7classic5chsetIcED2Ev, null, ptr @_ZN5boost6detail12shared_countD2Ev, null, null}
!19 = !{!20, !21, i64 0}
!20 = !{!"_ZTSN5boost10shared_ptrINS_6spirit7classic11basic_chsetIcEEEE", !21, i64 0, !9, i64 8}
!21 = !{!"p1 _ZTSN5boost6spirit7classic11basic_chsetIcEE", !11, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"long", !6, i64 0}
!24 = !{!21, !21, i64 0}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_ZN5boost6spirit7classicorIcEENS1_5chsetIT_EERKS5_S7_: argument 0"}
!27 = distinct !{!27, !"_ZN5boost6spirit7classicorIcEENS1_5chsetIT_EERKS5_S7_"}
!28 = distinct !{null, ptr @_ZN5boost6spirit7classic5chsetIcED2Ev, null, ptr @_ZN5boost6detail12shared_countD2Ev, null}
!29 = distinct !{null, ptr @_ZN5boost6spirit7classic5chsetIcED2Ev, null, ptr @_ZN5boost6detail12shared_countD2Ev, null, null}
!30 = !{!31}
!31 = distinct !{!31, !32, !"_ZN5boost6spirit7classicorIcEENS1_5chsetIT_EERKS5_S7_: argument 0"}
!32 = distinct !{!32, !"_ZN5boost6spirit7classicorIcEENS1_5chsetIT_EERKS5_S7_"}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZN5boost6spirit7classicorIcEENS1_5chsetIT_EERKS5_S7_: argument 0"}
!35 = distinct !{!35, !"_ZN5boost6spirit7classicorIcEENS1_5chsetIT_EERKS5_S7_"}
!36 = !{!6, !6, i64 0}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = distinct !{null, ptr @_ZN5boost6detail12shared_countD2Ev, null}
!40 = distinct !{null, ptr @_ZN5boost6detail12shared_countD2Ev, null, null}
!41 = !{!42, !43, i64 0}
!42 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !43, i64 0}
!43 = !{!"p1 omnipotent char", !11, i64 0}
!44 = !{!45, !23, i64 8}
!45 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !42, i64 0, !23, i64 8, !6, i64 16}
!46 = !{!47, !5, i64 72}
!47 = !{!"_ZTSN5boost7archive17basic_xml_grammarIcE13return_valuesE", !45, i64 0, !45, i64 32, !48, i64 64, !5, i64 68, !5, i64 72, !49, i64 76, !45, i64 80}
!48 = !{!"short", !6, i64 0}
!49 = !{!"_ZTSN5boost7archive13tracking_typeE", !50, i64 0}
!50 = !{!"bool", !6, i64 0}
!51 = !{!49, !50, i64 0}
!52 = !{!53, !55, i64 32}
!53 = !{!"_ZTSSt8ios_base", !23, i64 8, !23, i64 16, !54, i64 24, !55, i64 28, !55, i64 32, !56, i64 40, !57, i64 48, !6, i64 64, !5, i64 192, !58, i64 200, !59, i64 208}
!54 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!55 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!56 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !11, i64 0}
!57 = !{!"_ZTSNSt8ios_base6_WordsE", !11, i64 0, !23, i64 8}
!58 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !11, i64 0}
!59 = !{!"_ZTSSt6locale", !60, i64 0}
!60 = !{!"p1 _ZTSNSt6locale5_ImplE", !11, i64 0}
!61 = !{!54, !54, i64 0}
!62 = !{!5, !5, i64 0}
!63 = !{!45, !43, i64 0}
!64 = !{!65}
!65 = distinct !{!65, !66, !"_ZN5boost6spirit7classic5parseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_4ruleINS1_7scannerISC_NS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EEEENS1_10parse_infoIT_EERKSO_SR_RKNS1_6parserIT0_EE: argument 0"}
!66 = distinct !{!66, !"_ZN5boost6spirit7classic5parseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_4ruleINS1_7scannerISC_NS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EEEENS1_10parse_infoIT_EERKSO_SR_RKNS1_6parserIT0_EE"}
!67 = !{!43, !43, i64 0}
!68 = !{!69, !69, i64 0}
!69 = !{!"p1 _ZTSN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !11, i64 0}
!70 = !{!71, !72, i64 0}
!71 = !{!"_ZTSN5boost10scoped_ptrINS_6spirit7classic4impl15abstract_parserINS2_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS2_16scanner_policiesINS2_16iteration_policyENS2_12match_policyENS2_13action_policyEEEEENS2_5nil_tEEEEE", !72, i64 0}
!72 = !{!"p1 _ZTSN5boost6spirit7classic4impl15abstract_parserINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEEE", !11, i64 0}
!73 = distinct !{null}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_ZN5boost6spirit7classicpsINS1_5chsetIcEEEENS1_8positiveIT_EERKNS1_6parserIS6_EE: argument 0"}
!76 = distinct !{!76, !"_ZN5boost6spirit7classicpsINS1_5chsetIcEEEENS1_8positiveIT_EERKNS1_6parserIS6_EE"}
!77 = distinct !{null}
!78 = distinct !{null, null, null, null}
!79 = distinct !{ptr @_ZN5boost6spirit7classic5unaryINS1_5chsetIcEENS1_6parserINS1_8positiveIS4_EEEEED2Ev, ptr @_ZN5boost6spirit7classic5chsetIcED2Ev, null, ptr @_ZN5boost6detail12shared_countD2Ev, null}
!80 = distinct !{ptr @_ZN5boost6spirit7classic5unaryINS1_5chsetIcEENS1_6parserINS1_8positiveIS4_EEEEED2Ev, ptr @_ZN5boost6spirit7classic5chsetIcED2Ev, null, ptr @_ZN5boost6detail12shared_countD2Ev, null, null}
!81 = distinct !{null}
!82 = distinct !{null, null, null, null}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZN5boost6spirit7classicdeINS1_5chsetIcEEEENS1_11kleene_starIT_EERKNS1_6parserIS6_EE: argument 0"}
!85 = distinct !{!85, !"_ZN5boost6spirit7classicdeINS1_5chsetIcEEEENS1_11kleene_starIT_EERKNS1_6parserIS6_EE"}
!86 = distinct !{null}
!87 = distinct !{null, null, null, null}
!88 = distinct !{ptr @_ZN5boost6spirit7classic5unaryINS1_5chsetIcEENS1_6parserINS1_11kleene_starIS4_EEEEED2Ev, ptr @_ZN5boost6spirit7classic5chsetIcED2Ev, null, ptr @_ZN5boost6detail12shared_countD2Ev, null}
!89 = distinct !{ptr @_ZN5boost6spirit7classic5unaryINS1_5chsetIcEENS1_6parserINS1_11kleene_starIS4_EEEEED2Ev, ptr @_ZN5boost6spirit7classic5chsetIcED2Ev, null, ptr @_ZN5boost6detail12shared_countD2Ev, null, null}
!90 = distinct !{null, null, null, null}
!91 = distinct !{null, null, null, null}
!92 = distinct !{null, null, null, null}
!93 = !{!94, !94, i64 0}
!94 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!95 = !{!96, !96, i64 0}
!96 = !{!"p1 _ZTSN5boost6spirit7classic4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESK_EE", !11, i64 0}
!97 = distinct !{null, null, null, null}
!98 = distinct !{null, null, null, null}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZN5boost6spirit7classic7chset_pEPKw: argument 0"}
!101 = distinct !{!101, !"_ZN5boost6spirit7classic7chset_pEPKw"}
!102 = distinct !{null, null, null, null}
!103 = distinct !{ptr @_ZN5boost6spirit7classic5unaryINS1_5chsetIwEENS1_6parserINS1_8positiveIS4_EEEEED2Ev, ptr @_ZN5boost6spirit7classic5chsetIwED2Ev, ptr @_ZN5boost10shared_ptrINS_6spirit7classic11basic_chsetIwEEED2Ev, ptr @_ZN5boost6detail12shared_countD2Ev, null}
!104 = distinct !{ptr @_ZN5boost6spirit7classic5unaryINS1_5chsetIwEENS1_6parserINS1_8positiveIS4_EEEEED2Ev, ptr @_ZN5boost6spirit7classic5chsetIwED2Ev, ptr @_ZN5boost10shared_ptrINS_6spirit7classic11basic_chsetIwEEED2Ev, ptr @_ZN5boost6detail12shared_countD2Ev, null, null}
!105 = distinct !{ptr @_ZN5boost6spirit7classic5chsetIwED2Ev, ptr @_ZN5boost10shared_ptrINS_6spirit7classic11basic_chsetIwEEED2Ev, ptr @_ZN5boost6detail12shared_countD2Ev, null}
!106 = distinct !{ptr @_ZN5boost6spirit7classic5chsetIwED2Ev, ptr @_ZN5boost10shared_ptrINS_6spirit7classic11basic_chsetIwEEED2Ev, ptr @_ZN5boost6detail12shared_countD2Ev, null, null}
!107 = distinct !{null, null, null, null}
!108 = distinct !{null, null, null, null}
!109 = distinct !{null, null, null, null}
!110 = distinct !{null, null, null, null}
!111 = distinct !{null, null, null, null}
!112 = distinct !{null, null, null, null}
!113 = distinct !{null, null, null, null}
!114 = distinct !{null, null, null, null}
!115 = distinct !{null, null, null, null}
!116 = distinct !{null, null, null, null}
!117 = distinct !{null, null, null, null}
!118 = distinct !{null, null, null, null}
!119 = distinct !{null, null, null, null}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_ZN5boost6spirit7classicorINS1_11alternativeINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EESN_EESN_EENS3_IT_T0_EERKNS1_6parserISP_EERKNSS_ISQ_EE: argument 0"}
!122 = distinct !{!122, !"_ZN5boost6spirit7classicorINS1_11alternativeINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EESN_EESN_EENS3_IT_T0_EERKNS1_6parserISP_EERKNSS_ISQ_EE"}
!123 = !{!124}
!124 = distinct !{!124, !125, !"_ZN5boost6spirit7classic7chset_pEPKw: argument 0"}
!125 = distinct !{!125, !"_ZN5boost6spirit7classic7chset_pEPKw"}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_ZNK5boost6spirit7classic6parserINS1_5chsetIwEEEixINS_7archive3xml11append_charINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS1_6actionIS4_T_EERKSI_: argument 0"}
!128 = distinct !{!128, !"_ZNK5boost6spirit7classic6parserINS1_5chsetIwEEEixINS_7archive3xml11append_charINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEENS1_6actionIS4_T_EERKSI_"}
!129 = distinct !{null, null, null, null}
!130 = distinct !{ptr @_ZN5boost6spirit7classic6binaryINS1_11alternativeINS3_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EESN_EESN_EENS1_6actionINS1_5chsetIwEENS_7archive3xml11append_charISE_EEEENS1_6parserINS3_ISP_SX_EEEEED2Ev, null, ptr @_ZN5boost6spirit7classic5unaryINS1_5chsetIwEENS1_6parserINS1_6actionIS4_NS_7archive3xml11append_charINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEED2Ev, ptr @_ZN5boost6spirit7classic5chsetIwED2Ev, ptr @_ZN5boost10shared_ptrINS_6spirit7classic11basic_chsetIwEEED2Ev, ptr @_ZN5boost6detail12shared_countD2Ev, null}
!131 = distinct !{ptr @_ZN5boost6spirit7classic6binaryINS1_11alternativeINS3_INS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EESN_EESN_EENS1_6actionINS1_5chsetIwEENS_7archive3xml11append_charISE_EEEENS1_6parserINS3_ISP_SX_EEEEED2Ev, null, ptr @_ZN5boost6spirit7classic5unaryINS1_5chsetIwEENS1_6parserINS1_6actionIS4_NS_7archive3xml11append_charINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEED2Ev, ptr @_ZN5boost6spirit7classic5chsetIwED2Ev, ptr @_ZN5boost10shared_ptrINS_6spirit7classic11basic_chsetIwEEED2Ev, ptr @_ZN5boost6detail12shared_countD2Ev, null, null}
!132 = distinct !{ptr @_ZN5boost6spirit7classic5unaryINS1_5chsetIwEENS1_6parserINS1_6actionIS4_NS_7archive3xml11append_charINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEED2Ev, ptr @_ZN5boost6spirit7classic5chsetIwED2Ev, ptr @_ZN5boost10shared_ptrINS_6spirit7classic11basic_chsetIwEEED2Ev, ptr @_ZN5boost6detail12shared_countD2Ev, null}
!133 = distinct !{ptr @_ZN5boost6spirit7classic5unaryINS1_5chsetIwEENS1_6parserINS1_6actionIS4_NS_7archive3xml11append_charINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEED2Ev, ptr @_ZN5boost6spirit7classic5chsetIwED2Ev, ptr @_ZN5boost10shared_ptrINS_6spirit7classic11basic_chsetIwEEED2Ev, ptr @_ZN5boost6detail12shared_countD2Ev, null, null}
!134 = distinct !{null, null, null, null}
!135 = distinct !{null, null, null, null}
!136 = distinct !{null, null, null, null}
!137 = distinct !{null, null, null, null}
!138 = distinct !{null, null, null, null}
!139 = !{!140}
!140 = distinct !{!140, !141, !"_ZN5boost6spirit7classic7chset_pEPKw: argument 0"}
!141 = distinct !{!141, !"_ZN5boost6spirit7classic7chset_pEPKw"}
!142 = distinct !{null, null, null, null}
!143 = distinct !{ptr @_ZN5boost6spirit7classic5unaryINS1_5chsetIwEENS1_6parserINS1_11kleene_starIS4_EEEEED2Ev, ptr @_ZN5boost6spirit7classic5chsetIwED2Ev, ptr @_ZN5boost10shared_ptrINS_6spirit7classic11basic_chsetIwEEED2Ev, ptr @_ZN5boost6detail12shared_countD2Ev, null}
!144 = distinct !{ptr @_ZN5boost6spirit7classic5unaryINS1_5chsetIwEENS1_6parserINS1_11kleene_starIS4_EEEEED2Ev, ptr @_ZN5boost6spirit7classic5chsetIwED2Ev, ptr @_ZN5boost10shared_ptrINS_6spirit7classic11basic_chsetIwEEED2Ev, ptr @_ZN5boost6detail12shared_countD2Ev, null, null}
!145 = distinct !{null, null, null, null}
!146 = !{!147}
!147 = distinct !{!147, !148, !"_ZN5boost6spirit7classic7chset_pEPKw: argument 0"}
!148 = distinct !{!148, !"_ZN5boost6spirit7classic7chset_pEPKw"}
!149 = distinct !{null, null, null, null}
!150 = distinct !{null, null, null, null}
!151 = distinct !{null, null, null, null}
!152 = distinct !{null, null, null}
!153 = !{!154}
!154 = distinct !{!154, !155, !"_ZN5boost6spirit7classicorIcEENS1_5chsetIT_EERKS5_S7_: argument 0"}
!155 = distinct !{!155, !"_ZN5boost6spirit7classicorIcEENS1_5chsetIT_EERKS5_S7_"}
!156 = distinct !{ptr @_ZN5boost10shared_ptrINS_6spirit7classic11basic_chsetIwEEED2Ev, ptr @_ZN5boost6detail12shared_countD2Ev, null}
!157 = distinct !{ptr @_ZN5boost10shared_ptrINS_6spirit7classic11basic_chsetIwEEED2Ev, ptr @_ZN5boost6detail12shared_countD2Ev, null, null}
!158 = distinct !{null, ptr @_ZN5boost6spirit7classic5unaryINS1_5chsetIwEENS1_6parserINS1_6actionIS4_NS_7archive3xml11append_charINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEED2Ev, ptr @_ZN5boost6spirit7classic5chsetIwED2Ev, ptr @_ZN5boost10shared_ptrINS_6spirit7classic11basic_chsetIwEEED2Ev, ptr @_ZN5boost6detail12shared_countD2Ev, null}
!159 = distinct !{null, ptr @_ZN5boost6spirit7classic5unaryINS1_5chsetIwEENS1_6parserINS1_6actionIS4_NS_7archive3xml11append_charINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEED2Ev, ptr @_ZN5boost6spirit7classic5chsetIwED2Ev, ptr @_ZN5boost10shared_ptrINS_6spirit7classic11basic_chsetIwEEED2Ev, ptr @_ZN5boost6detail12shared_countD2Ev, null, null}
!160 = !{!161, !162, i64 0}
!161 = !{!"_ZTSN5boost10shared_ptrINS_6spirit7classic11basic_chsetIwEEEE", !162, i64 0, !9, i64 8}
!162 = !{!"p1 _ZTSN5boost6spirit7classic11basic_chsetIwEE", !11, i64 0}
!163 = !{!164, !5, i64 0}
!164 = !{!"_ZTSSt13__atomic_baseIiE", !5, i64 0}
!165 = !{!166, !162, i64 16}
!166 = !{!"_ZTSN5boost6detail17sp_counted_impl_pINS_6spirit7classic11basic_chsetIwEEEE", !167, i64 0, !162, i64 16}
!167 = !{!"_ZTSN5boost6detail15sp_counted_baseE", !168, i64 8, !168, i64 12}
!168 = !{!"_ZTSSt6atomicIiE", !164, i64 0}
!169 = distinct !{null, ptr @_ZN5boost6detail12shared_countD2Ev, null}
!170 = distinct !{null, ptr @_ZN5boost6detail12shared_countD2Ev, null, null}
!171 = !{!172, !172, i64 0}
!172 = !{!"wchar_t", !6, i64 0}
!173 = !{!174, !172, i64 0}
!174 = !{!"_ZTSN5boost6spirit7classic7utility4impl5rangeIwEE", !172, i64 0, !172, i64 4}
!175 = !{!174, !172, i64 4}
!176 = distinct !{ptr @_ZN5boost6detail12shared_countD2Ev, null}
!177 = distinct !{ptr @_ZN5boost6detail12shared_countD2Ev, null, null}
!178 = distinct !{null}
!179 = distinct !{null, null}
!180 = !{!181, !182, i64 0}
!181 = !{!"_ZTSNSt12_Vector_baseIN5boost6spirit7classic7utility4impl5rangeIwEESaIS6_EE17_Vector_impl_dataE", !182, i64 0, !182, i64 8, !182, i64 16}
!182 = !{!"p1 _ZTSN5boost6spirit7classic7utility4impl5rangeIwEE", !11, i64 0}
!183 = !{!181, !182, i64 16}
!184 = !{!182, !182, i64 0}
!185 = distinct !{!185, !38}
!186 = distinct !{!186, !38}
!187 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_0
