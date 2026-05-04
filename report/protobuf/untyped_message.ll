inline.NumInlined: 4307
inline.NumDeleted: 2132
begin_hunk_0_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE4findIS7_EENSM_8iteratorERKT_:bb.a
.thread32.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.ao, %.lr.ph.i.us.us ], [ %i.bb, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13 ]
  %.us-phi18 = phi ptr [ %i.ap, %.lr.ph.i.us.us ], [ %i.bc, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.x, i64 %.us-phi
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE10find_largeIS7_EENSM_8iteratorERKT_m.exit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13, %.lr.ph.i
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf13json_internal12ResolverPool7Message9FindFieldEi:bb.a
  %i.fh = add i64 %i.fg, %.sroa.7.0.i
  br label %bb.j

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE22find_or_prepare_insertIiEESH_INSL_8iteratorEbERKT_.exit.i.i.thread: ; preds = %bb.h, %bb.f, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE22find_or_prepare_insertIiEESH_INSL_8iteratorEbERKT_.exit.i.i.thread38
  %.sroa.426.035 = phi ptr [ %i.ff, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE22find_or_prepare_insertIiEESH_INSL_8iteratorEbERKT_.exit.i.i.thread38 ], [ %i.bp, %bb.f ], [ %i.dw, %bb.h ] ; 2 uses
  store i32 %i.dd, ptr %.sroa.426.035, align 8, !tbaa !176
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.426.035, i64 8
  store ptr %.01652, ptr %i.fi, align 8, !tbaa !178
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit: ; preds = %.lr.ph.i21, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE22find_or_prepare_insertIiEESH_INSL_8iteratorEbERKT_.exit.i.i.thread, %bb.g
  %i.fj = getelementptr inbounds nuw i8, ptr %.01652, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.fj, %i.bn
  br i1 %.not, label %.loopexit, label %.lr.ph.split
end_hunk_1
begin_hunk_2_@_ZNK6google8protobuf13json_internal12ResolverPool7Message9FindFieldEi:bb.a
  br i1 %i.gp, label %.thread32.i.i, label %bb.p, !prof !29

.thread32.i.i:                                    ; preds = %.lr.ph.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.gm
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE10find_largeIiEENSL_8iteratorERSI_m.exit.i

bb.p:                                             ; preds = %.lr.ph.i.i
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE4findISt17basic_string_viewIcS7_EEENSQ_8iteratorERKT_:bb.a
.thread32.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.ar, %.lr.ph.i.us.us ], [ %i.bg, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10 ]
  %.us-phi15 = phi ptr [ %i.as, %.lr.ph.i.us.us ], [ %i.bh, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.us-phi
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE10find_largeISt17basic_string_viewIcS7_EEENSQ_8iteratorERKT_m.exit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10, %.lr.ph.i
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE4findISt17basic_string_viewIcS7_EEENSQ_8iteratorERKT_:bb.a
.thread32.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.ar, %.lr.ph.i.us.us ], [ %i.bg, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10 ]
  %.us-phi15 = phi ptr [ %i.as, %.lr.ph.i.us.us ], [ %i.bh, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.us-phi
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE10find_largeISt17basic_string_viewIcS7_EEENSQ_8iteratorERKT_m.exit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i10, %.lr.ph.i
end_hunk_4
begin_hunk_5_@_ZN6google8protobuf13json_internal14UntypedMessage11InsertFieldIS2_EEN4absl12lts_202505126StatusERKNS1_12ResolverPool5FieldEOT_:bb.a
  %i.bo = add i64 %i.bn, %.sroa.7.0.i
  br label %bb.g

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread71, %bb.c, %bb.e
  %.sroa.555.064 = phi ptr [ %i.bm, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread71 ], [ %i.k, %bb.c ], [ %i.aa, %bb.e ] ; 2 uses
  store i32 %i.d, ptr %.sroa.555.064, align 8, !tbaa !265
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.555.064, i64 8 ; 3 uses
end_hunk_5
begin_hunk_6_@_ZN6google8protobuf13json_internal14UntypedMessage11InsertFieldINS2_4BoolEEEN4absl12lts_202505126StatusERKNS1_12ResolverPool5FieldEOT_:bb.a
  %i.bo = add i64 %i.bn, %.sroa.7.0.i
  br label %bb.g

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread105, %bb.c, %bb.e
  %.sroa.588.098 = phi ptr [ %i.bm, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread105 ], [ %i.k, %bb.c ], [ %i.aa, %bb.e ] ; 2 uses
  store i32 %i.d, ptr %.sroa.588.098, align 8, !tbaa !265
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.588.098, i64 8 ; 3 uses
end_hunk_6
begin_hunk_7_@_ZN6google8protobuf13json_internal14UntypedMessage11InsertFieldIRjEEN4absl12lts_202505126StatusERKNS1_12ResolverPool5FieldEOT_:bb.a
  %i.bo = add i64 %i.bn, %.sroa.7.0.i
  br label %bb.g

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread97, %bb.c, %bb.e
  %.sroa.580.090 = phi ptr [ %i.bm, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread97 ], [ %i.k, %bb.c ], [ %i.aa, %bb.e ] ; 2 uses
  store i32 %i.d, ptr %.sroa.580.090, align 8, !tbaa !265
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.580.090, i64 8 ; 3 uses
end_hunk_7
begin_hunk_8_@_ZN6google8protobuf13json_internal14UntypedMessage11InsertFieldIiEEN4absl12lts_202505126StatusERKNS1_12ResolverPool5FieldEOT_:bb.a
  %i.bo = add i64 %i.bn, %.sroa.7.0.i
  br label %bb.g

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread103, %bb.c, %bb.e
  %.sroa.586.096 = phi ptr [ %i.bm, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread103 ], [ %i.k, %bb.c ], [ %i.aa, %bb.e ] ; 2 uses
  store i32 %i.d, ptr %.sroa.586.096, align 8, !tbaa !265
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.586.096, i64 8 ; 3 uses
end_hunk_8
begin_hunk_9_@_ZN6google8protobuf13json_internal14UntypedMessage11InsertFieldIRmEEN4absl12lts_202505126StatusERKNS1_12ResolverPool5FieldEOT_:bb.a
  %i.bo = add i64 %i.bn, %.sroa.7.0.i
  br label %bb.g

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread97, %bb.c, %bb.e
  %.sroa.580.090 = phi ptr [ %i.bm, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread97 ], [ %i.k, %bb.c ], [ %i.aa, %bb.e ] ; 2 uses
  store i32 %i.d, ptr %.sroa.580.090, align 8, !tbaa !265
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.580.090, i64 8 ; 3 uses
end_hunk_9
begin_hunk_10_@_ZN6google8protobuf13json_internal14UntypedMessage11InsertFieldIlEEN4absl12lts_202505126StatusERKNS1_12ResolverPool5FieldEOT_:bb.a
  %i.bo = add i64 %i.bn, %.sroa.7.0.i
  br label %bb.g

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread103, %bb.c, %bb.e
  %.sroa.586.096 = phi ptr [ %i.bm, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread103 ], [ %i.k, %bb.c ], [ %i.aa, %bb.e ] ; 2 uses
  store i32 %i.d, ptr %.sroa.586.096, align 8, !tbaa !265
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.586.096, i64 8 ; 3 uses
end_hunk_10
begin_hunk_11_@_ZN6google8protobuf13json_internal14UntypedMessage11InsertFieldIdEEN4absl12lts_202505126StatusERKNS1_12ResolverPool5FieldEOT_:bb.a
  %i.bo = add i64 %i.bn, %.sroa.7.0.i
  br label %bb.g

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread103, %bb.c, %bb.e
  %.sroa.586.096 = phi ptr [ %i.bm, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread103 ], [ %i.k, %bb.c ], [ %i.aa, %bb.e ] ; 2 uses
  store i32 %i.d, ptr %.sroa.586.096, align 8, !tbaa !265
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.586.096, i64 8 ; 3 uses
end_hunk_11
begin_hunk_12_@_ZN6google8protobuf13json_internal14UntypedMessage11InsertFieldIfEEN4absl12lts_202505126StatusERKNS1_12ResolverPool5FieldEOT_:bb.a
  %i.bo = add i64 %i.bn, %.sroa.7.0.i
  br label %bb.g

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread103, %bb.c, %bb.e
  %.sroa.586.096 = phi ptr [ %i.bm, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread103 ], [ %i.k, %bb.c ], [ %i.aa, %bb.e ] ; 2 uses
  store i32 %i.d, ptr %.sroa.586.096, align 8, !tbaa !265
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.586.096, i64 8 ; 3 uses
end_hunk_12
begin_hunk_13_@_ZN6google8protobuf13json_internal14UntypedMessage11InsertFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN4absl12lts_202505126StatusERKNS1_12ResolverPool5FieldEOT_:bb.a
  %i.bo = add i64 %i.bn, %.sroa.7.0.i
  br label %bb.g

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread: ; preds = %bb.e, %bb.c, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread75
  %.sroa.559.068 = phi ptr [ %i.bm, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiSt10unique_ptrISt7variantIJN6google8protobuf13json_internal14UntypedMessage4BoolEijlmfdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St6vectorISA_SaISA_EESH_IiSaIiEESH_IjSaIjEESH_IlSaIlEESH_ImSaImEESH_IfSaIfEESH_IdSaIdEESH_ISG_SaISG_EESH_IS9_SaIS9_EEEESt14default_deleteIS10_EEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiS13_EEE22find_or_prepare_insertIiEES1A_INS1E_8iteratorEbERKT_.exit.i.i.thread75 ], [ %i.k, %bb.c ], [ %i.aa, %bb.e ] ; 2 uses
  store i32 %i.d, ptr %.sroa.559.068, align 8, !tbaa !265
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.559.068, i64 8 ; 3 uses
end_hunk_13
begin_hunk_14_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE30find_or_prepare_insert_non_sooINSt7__cxx1112basic_stringIcS6_SaIcEEEEESI_INSM_8iteratorEbERKT_:bb.a
  %i.ap = add i64 %.sroa.7.0, %i.ao
  %i.aq = and i64 %i.ap, %i.l
  %i.ar = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.h, i64 %i.aq, i64 %.sroa.15.0) ; 2 uses
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !13, !nonnull !88, !noundef !88
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ar
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.r, align 8, !tbaa !13
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.ar
end_hunk_14
begin_hunk_15_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE30find_or_prepare_insert_non_sooINSt7__cxx1112basic_stringIcS6_SaIcEEEEESI_INSM_8iteratorEbERKT_:bb.a
  br label %bb.e

bb.e:                                             ; preds = %.thread, %.critedge20
  %.sink78 = phi ptr [ %i.at, %.thread ], [ %i.ax, %.critedge20 ]
  %.sink76 = phi ptr [ %i.au, %.thread ], [ %i.ag, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  store ptr %.sink78, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink76, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_15
begin_hunk_16_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE30find_or_prepare_insert_non_sooIS9_EESM_INSQ_8iteratorEbERKT_:bb.a
  %i.as = add i64 %.sroa.7.0, %i.ar
  %i.at = and i64 %i.as, %i.l
  %i.au = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.h, i64 %i.at, i64 %.sroa.15.0) ; 2 uses
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !13, !nonnull !88, !noundef !88
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.r, align 8, !tbaa !13
  %i.ax = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.au
end_hunk_16
begin_hunk_17_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool7MessageESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE30find_or_prepare_insert_non_sooIS9_EESM_INSQ_8iteratorEbERKT_:bb.a
  br label %bb.e

bb.e:                                             ; preds = %.thread, %.critedge20
  %.sink78 = phi ptr [ %i.aw, %.thread ], [ %i.ba, %.critedge20 ]
  %.sink76 = phi ptr [ %i.ax, %.thread ], [ %i.ag, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  store ptr %.sink78, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink76, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_17
begin_hunk_18_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE30find_or_prepare_insert_non_sooIS9_EESM_INSQ_8iteratorEbERKT_:bb.a
  %i.as = add i64 %.sroa.7.0, %i.ar
  %i.at = and i64 %i.as, %i.l
  %i.au = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.h, i64 %i.at, i64 %.sroa.15.0) ; 2 uses
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !13, !nonnull !88, !noundef !88
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.r, align 8, !tbaa !13
  %i.ax = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.au
end_hunk_18
begin_hunk_19_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf13json_internal12ResolverPool4EnumESt14default_deleteISF_EEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_SI_EEE30find_or_prepare_insert_non_sooIS9_EESM_INSQ_8iteratorEbERKT_:bb.a
  br label %bb.e

bb.e:                                             ; preds = %.thread, %.critedge20
  %.sink78 = phi ptr [ %i.aw, %.thread ], [ %i.ba, %.critedge20 ]
  %.sink76 = phi ptr [ %i.ax, %.thread ], [ %i.ag, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  store ptr %.sink78, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink76, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_19
