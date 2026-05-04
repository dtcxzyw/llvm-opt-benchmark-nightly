inline.NumInlined: 3020
inline.NumDeleted: 1291
begin_hunk_0_@_ZN6google8protobuf8compiler11SCCAnalyzerINS1_4rust7Context13DepsGeneratorEE6GetSCCEPKNS0_10DescriptorE:bb.a
  br i1 %i.am, label %.thread32.i.i, label %bb.f, !prof !187

.thread32.i.i:                                    ; preds = %.lr.ph.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.aj
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE10find_largeIS8_EENST_8iteratorERKT_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8compiler11SCCAnalyzerINS1_4rust7Context13DepsGeneratorEE3DFSEPKNS0_10DescriptorE:bb.a
          to label %.noexc unwind label %_ZNSt10unique_ptrIN6google8protobuf8compiler11SCCAnalyzerINS2_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteIS8_EED2Ev.exit42 ; 2 uses

.noexc:                                           ; preds = %bb.e
  %i.ad = load ptr, ptr %i.j, align 8, !tbaa !49, !noalias !326, !nonnull !85, !noundef !85
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !49, !noalias !326
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %i.ac
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE26find_or_prepare_insert_sooIS8_EESP_INST_8iteratorEbERKT_.exit.i.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE26find_or_prepare_insert_sooIS8_EESP_INST_8iteratorEbERKT_.exit.i.i.i: ; preds = %.noexc, %bb.d, %bb.c
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8compiler11SCCAnalyzerINS1_4rust7Context13DepsGeneratorEE3DFSEPKNS0_10DescriptorE:bb.a
  br i1 %i.dv, label %.thread32.i.i, label %bb.v, !prof !187

.thread32.i.i:                                    ; preds = %.lr.ph.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ds
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE10find_largeIS8_EENST_8iteratorERKT_m.exit.i

bb.v:                                             ; preds = %.lr.ph.i.i
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf8compiler11SCCAnalyzerINS1_4rust7Context13DepsGeneratorEE11AddChildrenEPNS1_3SCCE:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2025051218container_internal11kSooControlE, ptr poison }, ptr %i.e, 1
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf8compiler11SCCAnalyzerINS1_4rust7Context13DepsGeneratorEE11AddChildrenEPNS1_3SCCE:bb.a
  br i1 %i.bp, label %.thread32.i.i.i, label %bb.p, !prof !187

.thread32.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bm
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE10find_largeIS8_EENST_8iteratorERKT_m.exit.i.i

bb.p:                                             ; preds = %.lr.ph.i.i.i
end_hunk_4
begin_hunk_5_@_ZN6google8protobuf8compiler11SCCAnalyzerINS1_4rust7Context13DepsGeneratorEE11AddChildrenEPNS1_3SCCE:bb.a
  %i.em = add i64 %.sroa.7.0.i, %i.el
  %i.en = and i64 %i.em, %i.cg
  %i.eo = invoke noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf8compiler3SCCEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE18GetPolicyFunctionsEvE5value, i64 noundef %i.dl, i64 %i.en, i64 %.sroa.15.0.i)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf8compiler3SCCEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread66 unwind label %bb.ag

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf8compiler3SCCEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread66: ; preds = %.thread.i
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.i, align 8, !tbaa !49, !noalias !406
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i, i64 %i.eo
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf8compiler3SCCEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread

bb.aa:                                            ; preds = %.critedge18.i
end_hunk_5
begin_hunk_6_@_ZN6google8protobuf8compiler11SCCAnalyzerINS1_4rust7Context13DepsGeneratorEE11AddChildrenEPNS1_3SCCE:bb.a
  %i.er = add i64 %i.eq, %.sroa.7.0.i
  br label %bb.z

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf8compiler3SCCEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread: ; preds = %.noexc29, %bb.v, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf8compiler3SCCEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread66
  %.sroa.5.062 = phi ptr [ %i.ep, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPKN6google8protobuf8compiler3SCCEEENS1_6HashEqIS9_vE4HashENSC_2EqESaIS9_EE22find_or_prepare_insertIS9_EESt4pairINSG_8iteratorEbERKT_.exit.i.i.i.i.i.i.thread66 ], [ %i.h, %bb.v ], [ %i.dd, %.noexc29 ]
  store ptr %.0.i, ptr %.sroa.5.062, align 8, !tbaa !365
  %i.es = load ptr, ptr %i.k, align 8, !tbaa !412 ; 4 uses
end_hunk_6
begin_hunk_7_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE30find_or_prepare_insert_non_sooIS8_EESP_INST_8iteratorEbERKT_:bb.a
  %i.an = add i64 %.sroa.7.0, %i.am
  %i.ao = and i64 %i.an, %i.n
  %i.ap = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.j, i64 %i.ao, i64 %.sroa.15.0) ; 2 uses
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !49, !nonnull !85, !noundef !85
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.s, align 8, !tbaa !49
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.ap
end_hunk_7
begin_hunk_8_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf10DescriptorESt10unique_ptrINS5_8compiler11SCCAnalyzerINSA_4rust7Context13DepsGeneratorEE8NodeDataESt14default_deleteISG_EEEENS1_6HashEqIS8_vE4HashENSM_2EqESaISt4pairIKS8_SJ_EEE30find_or_prepare_insert_non_sooIS8_EESP_INST_8iteratorEbERKT_:bb.a
  br label %bb.d

bb.d:                                             ; preds = %.thread, %.critedge20
  %.sink77 = phi ptr [ %i.ar, %.thread ], [ %i.av, %.critedge20 ]
  %.sink75 = phi ptr [ %i.as, %.thread ], [ %i.ae, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  store ptr %.sink77, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink75, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_8
