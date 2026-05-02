inline.NumInlined: 34235
inline.NumDeleted: 5823
begin_hunk_0_@_ZZN8facebook5velox9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEE8callImplERNS3_12StringWriterERKNS0_10StringViewESA_ENKUlRT_E_clIN8simdjson8fallback8ondemand8documentEEEDaSC_:bb.a
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal24structural_or_whitespaceE, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !100, !range !125, !noundef !126
  %4 = trunc nuw i8 %i.at to i1
  br label %.thread140

.thread140:                                       ; preds = %.thread, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit, %bb.k, %bb.i
  %i.au = phi i8 [ %i.an, %.thread ], [ 0, %bb.i ], [ 0, %bb.k ], [ 0, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit ] ; 2 uses
  %.not12.i = phi i1 [ false, %.thread ], [ false, %bb.i ], [ %4, %bb.k ], [ false, %_ZN8simdjson8fallback8ondemand14value_iterator16peek_root_scalarEPKc.exit ]
  %5 = trunc nuw i8 %i.au to i1
  %brmerge.i = or i1 %.not12.i, %5
  br i1 %brmerge.i, label %.thread142, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit

.thread142:                                       ; preds = %bb.h, %bb.j, %.thread140
end_hunk_0
begin_hunk_1_@_ZZN8facebook5velox9functions25JsonExtractScalarFunctionINS0_4exec10VectorExecEE8callImplERNS3_12StringWriterERKNS0_10StringViewESA_ENKUlRT_E_clIN8simdjson8fallback8ondemand5valueEEEDaSC_:bb.a
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !100, !range !125, !noundef !126
  %4 = trunc nuw i8 %i.ap to i1
  br i1 %4, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit, label %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit

_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit: ; preds = %bb.g
  br i1 %.not, label %bb.h, label %.thread85
end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSG_bEEEE7iterateIJNS3_24ConstantFlatVectorReaderISG_EENS3_12VectorReaderIbEEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISV_EEvRKS1_SU_EUlSU_E_EEvSY_SU_T0_EUlSU_E_EEvSU_:bb.a
  %i.fq = zext i8 %i.fp to i64
  %i.fr = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !100, !range !125, !noundef !126
  %9 = trunc nuw i8 %i.fs to i1
  br i1 %9, label %.critedge.thread, label %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i

_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i: ; preds = %bb.ae
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ez, i64 4 ; 3 uses
end_hunk_2
begin_hunk_3_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSG_bEEEE7iterateIJNS3_24ConstantFlatVectorReaderISG_EENS3_12VectorReaderIbEEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISV_EEvRKNS0_17SelectivityVectorESU_EUlSU_E_EEvSZ_SU_T0_EUlSU_E_EEvPKmiibSU_ENKUlimE_clEim:bb.a
  %i.fh = zext i8 %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !100, !range !125, !noundef !126
  %10 = trunc nuw i8 %i.fj to i1
  br i1 %10, label %.critedge.thread, label %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i

_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i: ; preds = %bb.y
  %i.fk = getelementptr inbounds nuw i8, ptr %i.em, i64 4 ; 3 uses
end_hunk_3
begin_hunk_4_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSG_bEEEE7iterateIJNS3_24ConstantFlatVectorReaderISG_EENS3_12VectorReaderIbEEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISV_EEvRKNS0_17SelectivityVectorESU_EUlSU_E_EEvSZ_SU_T0_EUlSU_E_EEvPKmiibSU_ENKUliE_clEi:bb.a
  %i.fp = zext i8 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.fp
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !100, !range !125, !noalias !4322, !noundef !126
  %16 = trunc nuw i8 %i.fr to i1
  br i1 %16, label %.critedge.thread, label %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i

_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i: ; preds = %bb.aa
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ey, i64 4 ; 3 uses
end_hunk_4
begin_hunk_5_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSG_bEEEE7iterateIJNS3_24ConstantFlatVectorReaderISG_EENS3_12VectorReaderIbEEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISV_EEvRKNS0_17SelectivityVectorESU_EUlSU_E_EEvSZ_SU_T0_EUlSU_E_EEvPKmiibSU_ENKUliE_clEi:bb.a
  %i.pk = zext i8 %i.pj to i64
  %i.pl = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.pk
  %i.pm = load i8, ptr %i.pl, align 1, !tbaa !100, !range !125, !noundef !126
  %17 = trunc nuw i8 %i.pm to i1
  br i1 %17, label %.critedge882.thread, label %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i

_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i: ; preds = %bb.cl
  %i.pn = getelementptr inbounds nuw i8, ptr %i.op, i64 4 ; 3 uses
end_hunk_5
begin_hunk_6_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSG_bEEEE7iterateIJNS3_12VectorReaderISG_EENSL_IbEEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISU_EEvRKS1_ST_EUlST_E_EEvSX_ST_T0_EUlST_E_EEvST_:bb.a
  %i.gc = zext i8 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !100, !range !125, !noalias !4387, !noundef !126
  %9 = trunc nuw i8 %i.ge to i1
  br i1 %9, label %.critedge.thread, label %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i

_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i: ; preds = %bb.ah
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fl, i64 4 ; 3 uses
end_hunk_6
begin_hunk_7_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSG_bEEEE7iterateIJNS3_12VectorReaderISG_EENSL_IbEEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_ENKUlimE_clEim:bb.a
  %i.ft = zext i8 %i.fs to i64
  %i.fu = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !100, !range !125, !noalias !4428, !noundef !126
  %10 = trunc nuw i8 %i.fv to i1
  br i1 %10, label %.critedge.thread, label %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i

_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i: ; preds = %bb.ab
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ey, i64 4 ; 3 uses
end_hunk_7
begin_hunk_8_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSG_bEEEE7iterateIJNS3_12VectorReaderISG_EENSL_IbEEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi:bb.a
  %i.gb = zext i8 %i.ga to i64
  %i.gc = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !100, !range !125, !noalias !4463, !noundef !126
  %16 = trunc nuw i8 %i.gd to i1
  br i1 %16, label %.critedge.thread, label %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i

_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i: ; preds = %bb.ad
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fk, i64 4 ; 3 uses
end_hunk_8
begin_hunk_9_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_10CustomTypeINS0_5JsonTELb0EEEbEEEJSG_bEEEE7iterateIJNS3_12VectorReaderISG_EENSL_IbEEEEEvRNSJ_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISU_EEvRKNS0_17SelectivityVectorEST_EUlST_E_EEvSY_ST_T0_EUlST_E_EEvPKmiibST_ENKUliE_clEi:bb.a
  %i.qi = zext i8 %i.qh to i64
  %i.qj = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.qi
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !100, !range !125, !noalias !4495, !noundef !126
  %17 = trunc nuw i8 %i.qk to i1
  br i1 %17, label %.critedge873.thread, label %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i

_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i: ; preds = %bb.cr
  %i.ql = getelementptr inbounds nuw i8, ptr %i.pn, i64 4 ; 3 uses
end_hunk_9
begin_hunk_10_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSE_bEEEE7iterateIJNS3_24ConstantFlatVectorReaderISE_EENS3_12VectorReaderIbEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKS1_SS_EUlSS_E_EEvSW_SS_T0_EUlSS_E_EEvSS_:bb.a
  %i.fq = zext i8 %i.fp to i64
  %i.fr = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !100, !range !125, !noalias !4622, !noundef !126
  %9 = trunc nuw i8 %i.fs to i1
  br i1 %9, label %.critedge.thread, label %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i

_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i: ; preds = %bb.ae
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ez, i64 4 ; 3 uses
end_hunk_10
begin_hunk_11_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSE_bEEEE7iterateIJNS3_24ConstantFlatVectorReaderISE_EENS3_12VectorReaderIbEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUlimE_clEim:bb.a
  %i.fh = zext i8 %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !100, !range !125, !noalias !4662, !noundef !126
  %10 = trunc nuw i8 %i.fj to i1
  br i1 %10, label %.critedge.thread, label %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i

_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i: ; preds = %bb.y
  %i.fk = getelementptr inbounds nuw i8, ptr %i.em, i64 4 ; 3 uses
end_hunk_11
begin_hunk_12_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSE_bEEEE7iterateIJNS3_24ConstantFlatVectorReaderISE_EENS3_12VectorReaderIbEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi:bb.a
  %i.fp = zext i8 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.fp
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !100, !range !125, !noalias !4696, !noundef !126
  %16 = trunc nuw i8 %i.fr to i1
  br i1 %16, label %.critedge.thread, label %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i

_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i: ; preds = %bb.aa
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ey, i64 4 ; 3 uses
end_hunk_12
begin_hunk_13_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSE_bEEEE7iterateIJNS3_24ConstantFlatVectorReaderISE_EENS3_12VectorReaderIbEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi:bb.a
  %i.pk = zext i8 %i.pj to i64
  %i.pl = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.pk
  %i.pm = load i8, ptr %i.pl, align 1, !tbaa !100, !range !125, !noalias !4727, !noundef !126
  %17 = trunc nuw i8 %i.pm to i1
  br i1 %17, label %.critedge871.thread, label %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i

_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i: ; preds = %bb.cl
  %i.pn = getelementptr inbounds nuw i8, ptr %i.op, i64 4 ; 3 uses
end_hunk_13
begin_hunk_14_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSE_bEEEE7iterateIJNS3_12VectorReaderISE_EENSJ_IbEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_:bb.a
  %i.gc = zext i8 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !100, !range !125, !noalias !4764, !noundef !126
  %9 = trunc nuw i8 %i.ge to i1
  br i1 %9, label %.critedge.thread, label %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i

_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i: ; preds = %bb.ah
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fl, i64 4 ; 3 uses
end_hunk_14
begin_hunk_15_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSE_bEEEE7iterateIJNS3_12VectorReaderISE_EENSJ_IbEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim:bb.a
  %i.ft = zext i8 %i.fs to i64
  %i.fu = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !100, !range !125, !noalias !4804, !noundef !126
  %10 = trunc nuw i8 %i.fv to i1
  br i1 %10, label %.critedge.thread, label %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i

_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i: ; preds = %bb.ab
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ey, i64 4 ; 3 uses
end_hunk_15
begin_hunk_16_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSE_bEEEE7iterateIJNS3_12VectorReaderISE_EENSJ_IbEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi:bb.a
  %i.gb = zext i8 %i.ga to i64
  %i.gc = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !100, !range !125, !noalias !4838, !noundef !126
  %16 = trunc nuw i8 %i.gd to i1
  br i1 %16, label %.critedge.thread, label %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i.i

_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i.i: ; preds = %bb.ad
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fk, i64 4 ; 3 uses
end_hunk_16
begin_hunk_17_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions25JsonArrayContainsFunctionINS3_10VectorExecEEESB_bNS0_15ConstantCheckerIJNS0_7VarcharEbEEEJSE_bEEEE7iterateIJNS3_12VectorReaderISE_EENSJ_IbEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi:bb.a
  %i.qi = zext i8 %i.qh to i64
  %i.qj = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal32structural_or_whitespace_negatedE, i64 %i.qi
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !100, !range !125, !noalias !4869, !noundef !126
  %17 = trunc nuw i8 %i.qk to i1
  br i1 %17, label %.critedge871.thread, label %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i

_ZNK8simdjson8fallback8ondemand14value_iterator10parse_boolEPKh.exit.i.i.i: ; preds = %bb.cr
  %i.ql = getelementptr inbounds nuw i8, ptr %i.pn, i64 4 ; 3 uses
end_hunk_17
